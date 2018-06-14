<?php 
namespace app\admin\controller;
use think\Controller;
use think\Db;  //加载Db数据库
use think\Model;
class ConnController extends Controller
{

	protected $_adminid;
	protected $_login;
	protected $_limit;
	protected $_controllerUrl;  //控制器路径
	protected $_controller;  	//控制器
	protected $_action;			//控制器方法
	protected $_isPost;			//post提交
	protected $_isGet;			//get提交
	protected $_isFile;			//file提交
	protected $_arrayTrim;		//post/get数据
	protected $_arrayTrimNull;		//post/get数据
	protected $_getTrim;		//post/get 数组转为get参数数据
	protected $_webPath;		//web网址
	protected $_webPathRK;		//web网址+入口
	protected $_version;		//版本号
	protected $_SqlModel;		//操作数据库模型（增删改）
	protected $_powerList;		//权限列表
	protected $_nickname;		//管理员名称
	public function _initialize(){


	   if(!isset($_SESSION['login']['_adminid']) || !isset($_SESSION['login']['_login']) || $_SESSION['login']['_login'] != 'login'){

	     $this->error('请登录','Login/login');

	   }
	    $this->_adminid = $_SESSION['login']['_adminid'];

	    $this->_login = $_SESSION['login']['_login'];

	    $this->_nickname = $_SESSION['login']['_nickname'];

		$initPower = model('ConnModel')->initPower(); //权限模型

		if($initPower['status'] == 1){

			$this->assign('_powerList',json_encode($initPower['res']));

		}else{

    		$this->error($initPower['info'],'admin/login');die;
		}
		
		$ConnModel = model('ConnModel')->initial(); //公共模型

		$this->_controllerUrl = $ConnModel['_controllerUrl'];

		$this->_controller = $ConnModel['_controller'];

		$this->_action = $ConnModel['_action'];

		$this->_webPath = $ConnModel['_webPath'];

		$this->_webPathRK = $ConnModel['_webPathRK'];

		$this->_version = $ConnModel['_version'];

		$this->_isPost = $ConnModel['_isPost'];

		$this->_isGet = $ConnModel['_isGet'];
		
		$this->_isFile = $ConnModel['_isFile'];

		$this->_arrayTrim = $ConnModel['_arrayTrim'];
		
		$this->_arrayTrimNull = $ConnModel['_arrayTrimNull'];

		$this->_SqlModel = $ConnModel['_SqlModel'];

		$this->_adminid = $ConnModel['_adminid'];

		$this->_limit = $ConnModel['_limit'];
		
		$this->_getTrim = $ConnModel['_getTrim'];

		$this->_userImages = $ConnModel['_userImages'];

		$this->assign('_controllerUrl',$this->_controllerUrl);

		$this->assign('_controller',$this->_controller);

		$this->assign('_action',$this->_action);
		
		$this->assign('version',$this->_version);

		$this->assign('web_path',$this->_webPath);

		$this->assign('web_path_rk',$this->_webPathRK);

		$this->assign('_limit',$this->_limit);

		$this->assign('_nickname',$this->_nickname);

		$this->assign('_user_images',$this->_userImages);


		/**
		 * [PostVrification POST提交验证是否还有作者名称Ycl_24]
		 */
		if($this->_isPost){

    		$verification = verificationAjax($this->_arrayTrim);


    		if(!$verification){


    			$return = [
    					'status' => 0,
    					'info'	 => '作者参数错误,请重新刷新页面!',
    					'popup'  => 0,
    				];
    			$this->YCL24_AJAX_MSG($return);

    			// $this->error($return['info'],$this->_controllerUrl);die;
    		}

    		$return = $this->is_power();

    		if($return['status'] != 1){

    			$this->YCL24_AJAX_MSG($return);

    		}
    	}

    	/**
		 * [PostVrification GET提交验证是否还有作者名称Ycl_24]
		 */
		if($this->_isGet){

    		$return = $this->is_power();

    		if($return['status'] != 1){

    			$this->error($return['info'],'');die;

    		}
    		

    	}

    	$data = [
            'count'       => 0,
            'page'        => 0,
            ];
            
        $this->assign('data',$data);
	}

	/**
	 * [YCL24_AJAX_MSG json返回]
	 * @param [type] $data [description]
	 */
	public function YCL24_AJAX_MSG($data){

	    echo json_encode($data);die;  //返回结果，json

	}


	/**
   * [is_power 判断当前路径是否有权限]
   * @return [type] [description]
   */
  	public function is_power(){

  		$_controllerUrl = $this->_controllerUrl;

  		$order = ' a.id asc ';

  		$whereTwo = [
  			'delete'			  => 0,
  			'status'			  => 1,
  			'controller_action' => $_controllerUrl
  		];

        $join = [
            ['box_power b',' a.role_id = b.id '],
        ];
        
        $fen = $this->_SqlModel->getOne('power',' role_id ',' id =  "'.$this->_adminid.'" ');

        $ret = $this->_SqlModel->getOne('menu',' id ',$whereTwo);

        $res = $this->_SqlModel->getOne('role',' id ', ' id = "'.$fen['role_id'].'" and  locate('.$ret['id'].',power)');

        $i = 0;

        if($res){

        	$i = 1;
        }

        $return = returnArr($i,0,'','成功','没有权限操作!');

        return $return;
        

  	}
}
	