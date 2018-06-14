<?php   
namespace app\admin\model; 
use app\admin\model\SqlModel;  
use think\Model;  
use app\admin\validate\Verification;  
class LoginModel extends SqlModel{


	protected $request;	//参数
	protected $_isPost;			//post提交
	protected $_isGet;				//get提交
	protected $_arrayTrim;				//get提交
	protected $_SqlModel;				//sql

    function __construct(){

    	$this->request     = \think\Request::instance();	//参数
		$this->_isPost     = request()->isPost();			//post提交
		$this->_isGet      = request()->isGet();				//get提交
		$this->_arrayTrim  = arrayTrim(input('param.'));				//get提交
		$this->_SqlModel = model('SqlModel');

	}


	/**
     * 登录操作
     * @return [type] [description]
     */
	public function loginOption(){

		if($this->_isPost){

			$arrayTrim = $this->_arrayTrim;

			$accounts = isset($arrayTrim['username'])?$arrayTrim['username']:'';

			$password = isset($arrayTrim['pass'])?$arrayTrim['pass']:'';

		    $validate = new \app\admin\validate\Verification;

            $Verification = $validate->scene('login')->check($arrayTrim);

            $return = array('status'=>'-10001','info'=>'-10001错误');  //代码错误

            if( 0 !== $Verification && $validate->getError()){ //场景验证返回0 表示成功 返回空 表示失败并且$this->getError()有打印值
             	
             	$return = array('status'=>0,'info'=>$validate->getError());

            }else{

            	$encryption_accounts = encryption($accounts,'accounts');

            	$getInfo = $this->_SqlModel->getOne('power','id,accounts,password,status,delete,role_id,nickname,images',['accounts' => $encryption_accounts]);   //判断帐号是否存在

            	if(!$getInfo){

                    $return = array('status'=>0,'info'=>'帐号不存在');

                }else{


                	if($getInfo['delete'] == 1){

                		$return = array('status'=>0,'info'=>'帐号已删除');

                		return $return;
                	}

                	if($getInfo['status'] == 0){

                		$return = array('status'=>0,'info'=>'帐号已停用');

                		return $return;
                	}

                	$undoEncryption_pass = undoEncryption($getInfo['password'],'password');

                	if($password != $undoEncryption_pass){

                		$return = array('status'=>0,'info'=>'密码错误');

                		return $return;

                	}else{

                		$_SESSION['login']['_adminid'] = $getInfo['id'];

			            $_SESSION['login']['_login']   = 'login';

			            $_SESSION['login']['_nickname'] = $getInfo['nickname'];
			            

			            $return = returnArr(1,0,'/admin.php','登录成功');

                	}
                }

            	

            }


			return $return;

		}
	}
}