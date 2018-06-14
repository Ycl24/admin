<?php
/**
 * 角色控制器
 */
namespace app\admin\controller;
use app\admin\controller\ConnController; 
use think\Model;  //模型
use think\Url;      
use think\Paginator;    //分页
class Role extends ConnController
{   


	 /**
     * [index 导航列表]
     * @return [type] [description]
     */
    public function index()
    {	  

        $where = ['delete' => 0]; //查询条件

        if($this->_isGet && $this->_arrayTrim){

            if(isset($this->_arrayTrim['name']) && $this->_arrayTrim['name'])$where['name'] = ['like','%'.$this->_arrayTrim['name'].'%'];

            if(isset($this->_arrayTrim['status']) )$where['status'] = $this->_arrayTrim['status'];

        }else{

            if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controller'] && $_SESSION['search']['_controller'] == $this->_controller){


                session_unset("search");

            }

        }
 
        $count = $this->_SqlModel->count('role',$where);


        $page = isset($this->_arrayTrim['page'])?$this->_arrayTrim['page']:1;

        $res = $this->_SqlModel->getAll('role',$page,$this->_limit,'id asc','*',$where);

        $data = [
            'count'       => $count,
            'page'        => $page,
            'json_data'   => json_encode($res),
            ];
        $this->assign('data',$data);

        return view();
    }

     /**
     * [search 搜索]
     */
    public function search(){

        if($this->_isPost){

            $_SESSION['search']['_controllerUrl'] = $this->_controllerUrl;

            $_SESSION['search']['_controller'] = $this->_controller;

            $_SESSION['search']['_arrayTrim'] = $this->_arrayTrim;

            $_getTrim = $this->_getTrim;

            if(!isset($this->_arrayTrim['status'])){

                $_SESSION['search']['_arrayTrim']['status'] = 0;

                $_getTrim = $this->_getTrim.'&status=0';
            }
            
            $parent_url = "index?".$_getTrim;

            $return = returnArr(1,0,$parent_url);

            $this->YCL24_AJAX_MSG($return);

        }

        $res = $this->_SqlModel->getDadaTable('box_Role');

        if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controllerUrl'] == $this->_controllerUrl){

            $res = $_SESSION['search']['_arrayTrim'];

        }

            
        $this->assign('res',$res);

        return view();
    }


    /**
     * [power 获取菜单列表]
     */
    private function power_list($arr=[]){

    	$where = [
                'delete'    => 0,
                'id'        => [ 'neq',0],
            ]; //查询条件

    	$power_arr = $this->_SqlModel->getAllData('menu',' sort asc','id,id as value,title,type,parent_id',$where);

    	$power_list =  arraySort($power_arr,'id',0,'data',$arr);

    	$return = json_encode($power_list);

    	return $return;

    }
    /**
     * [add 导航添加]
     */
    public function add(){

        if($this->_isPost){

             $model = model('RoleModel');

             $return = $model->roleAdd(); //role模型添加类

             $this->YCL24_AJAX_MSG($return);

        }

        $power_list = $this->power_list();

    	$this->assign('power_list',$power_list);
        
        $res = $this->_SqlModel->getDadaTable('box_Role',['id']);

        $this->assign('res',$res);

    	return view();
    }

    /**
     * [edit 权限编辑]
     * @return [type] [description]
     */
    public function edit(){

        if($this->_isPost){

             $model = model('RoleModel');

             $return = $model->roleEdit(); //role模型添加类

             $this->YCL24_AJAX_MSG($return);

        }

        
        
        $id = $this->_arrayTrim['id'];

        $res = $this->_SqlModel->getOne('role','*',['id' => $id]);

        $val_arr = explode(',', $res['power']);

        $power_list = $this->power_list($val_arr);

    	$this->assign('power_list',$power_list);

       
        $this->assign('res',$res);

        return view();
    }

 



}