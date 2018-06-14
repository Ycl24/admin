<?php
/**
 * 管理员控制器
 */
namespace app\admin\controller;
use app\admin\controller\ConnController; 
use think\Model;  //模型
use think\Url;      
use think\Paginator;    //分页
class Power extends ConnController
{   


	 /**
     * [index 列表]
     * @return [type] [description]
     */
    public function index()
    {	  

        $where = ['delete' => 0]; //查询条件

        $whereTwo = ['a.delete' => 0]; //查询条件

        if($this->_isGet && $this->_arrayTrim){

            if(isset($this->_arrayTrim['name']) && $this->_arrayTrim['name']) $where['name'] = $whereTwo['b.name'] = ['like','%'.$this->_arrayTrim['name'].'%'];

            if(isset($this->_arrayTrim['status']) )$where['status'] = $whereTwo['a.status']  = $this->_arrayTrim['status'];

            if(isset($this->_arrayTrim['role_id']) )$where['role_id'] = $whereTwo['a.role_id']  = $this->_arrayTrim['role_id'];

        }else{

            if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controller'] && $_SESSION['search']['_controller'] == $this->_controller){


                session_unset("search");

            }

        }
 
        $count = $this->_SqlModel->count('power',$where);


        $page = isset($this->_arrayTrim['page'])?$this->_arrayTrim['page']:1;

        $join = [
            ['box_role b',' a.role_id = b.id '],
        ];

        $res = $this->_SqlModel->getAll('power',$page,$this->_limit,'a.id asc','a.*,b.name as role_name',$whereTwo,' a.id ',$join);

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

        $res = $this->_SqlModel->getDadaTable('box_power');

        if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controllerUrl'] == $this->_controllerUrl){

            $res = $_SESSION['search']['_arrayTrim'];

        }

        $role_id = isset($_SESSION['search']['_arrayTrim']['role_id'])?$_SESSION['search']['_arrayTrim']['role_id']:'';
        
        $role_list = $this->role_list($role_id);

        $this->assign('role_list',$role_list);

        $this->assign('res',$res);

        return view();
    }


    /**
     * [role_list 获取角色列表]
     */
    private function role_list($id=''){

    	$where = [
                'delete'    => 0,
                'status'    => 1,
                'id'        => [ 'neq',0],
            ]; //查询条件

    	$return = $this->_SqlModel->getAllData('role',' id asc','id,name',$where,' id ');

        foreach ($return as $key => &$value) {

            $value['selected'] = 2;

            if($value['id'] == $id){

                $value['selected'] = 1;

            }

            # code...
        }
    	return  $return;

    }
    /**
     * [add 导航添加]
     */
    public function add(){

        if($this->_isPost){

             $model = model('PowerModel');

             $return = $model->powerAdd(); //role模型添加类

             $this->YCL24_AJAX_MSG($return);

        }

        $role_list = $this->role_list();

    	$this->assign('role_list',$role_list);
        
        $res = $this->_SqlModel->getDadaTable('box_power',['id']);

        $res['image_name'] = '';

        $this->assign('res',$res);

    	return view();
    }

    /**
     * [edit 权限编辑]
     * @return [type] [description]
     */
    public function edit(){

        if($this->_isPost){

             $model = model('PowerModel');

             $return = $model->powerEdit(); //role模型添加类

             $this->YCL24_AJAX_MSG($return);

        }

        
        
        $id = $this->_arrayTrim['id'];

        $res = $this->_SqlModel->getOne('power','*,images as icon',['id' => $id]);

        if($res){

            $namePathArr = explode('/', $res['images']);

            $res['image_name'] = end($namePathArr);
        }

        $res['accounts'] = undoEncryption($res['accounts'],'accounts');

        $res['password'] = undoEncryption($res['password'],'password');

        $res['phone'] = undoEncryption($res['phone'],'phone');
        
        $role_list = $this->role_list($res['role_id']);

    	$this->assign('role_list',$role_list);

        $this->assign('res',$res);

        return view();
    }

 



}