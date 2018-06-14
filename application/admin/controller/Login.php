<?php 
namespace app\admin\controller;
use think\Controller;
use think\Db;  //加载Db数据库
use think\Model;
class Login extends Controller
{

	protected $request;	//参数
	protected $_isPost;			//post提交
	protected $_isGet;				//get提交
	protected $_arrayTrim;				//get提交

    function __construct(){

    	$this->request     = \think\Request::instance();	//参数
		$this->_isPost     = request()->isPost();			//post提交
		$this->_isGet      = request()->isGet();				//get提交
		$this->_arrayTrim  = arrayTrim(input('param.'));				//get提交

	}

	/**
	 * [YCL24_AJAX_MSG json返回]
	 * @param [type] $data [description]
	 */
	public function YCL24_AJAX_MSG($data){

	    echo json_encode($data);die;  //返回结果，json

	}


	/**
     * 登录操作
     * @return [type] [description]
     */
	public function login(){

		if($this->_isPost){

			$model = model('LoginModel');

            $return = $model->loginOption(); //loginOption模型添加类

            $this->YCL24_AJAX_MSG($return);


		}
		return view();
	}


	/**
     * 注销操作
     * @return [type] [description]
     */
	public function singout(){

		if($this->_isPost){

			session_unset("search");

			session_unset("login");

			 $return = returnArr(1,0,'/admin.php/login/login','退出成功');

            $this->YCL24_AJAX_MSG($return);


		}

	}

}