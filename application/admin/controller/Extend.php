<?php
/**
 * 后台首页
 */
namespace app\admin\controller;
use app\admin\controller\ConnController; 
use think\Model;  //模型
use think\Url;      
use think\Paginator;    //分页
class Extend extends ConnController
{   

	/**
     * 
     * @return [type] [description]
     */
	public function index(){


        return view();
	}



}