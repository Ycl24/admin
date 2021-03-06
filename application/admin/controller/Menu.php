<?php
/**
 * 菜单控制器
 */
namespace app\admin\controller;
use app\admin\controller\ConnController; 
use think\Model;  //模型
use think\Url;      
use think\Paginator;    //分页
class Menu extends ConnController
{   

	/**
     * [index 权限列表]
     * @return [type] [description]
     */
	public function index(){

        $where = ['delete' => 0]; //查询条件

        if($this->_isGet && $this->_arrayTrim){

            if(isset($this->_arrayTrim['title']) && $this->_arrayTrim['title'])$where['title'] = ['like','%'.$this->_arrayTrim['title'].'%'];

            if(isset($this->_arrayTrim['controller_action']) && $this->_arrayTrim['controller_action'] )$where['url'] = $this->_arrayTrim['controller_action'];

            if(isset($this->_arrayTrim['status']) )$where['status'] = $this->_arrayTrim['status'];

            if(isset($this->_arrayTrim['start_time']) && isset($this->_arrayTrim['end_time']) && $this->_arrayTrim['start_time'] && $this->_arrayTrim['end_time']){

                $date = [$this->_arrayTrim['start_time'],$this->_arrayTrim['end_time']];

                $where['createtime'] = ['between',$date];
            }

            // var_dump($where);die;
        }else{

            if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controller'] && $_SESSION['search']['_controller'] == $this->_controller){


                session_unset("search");

            }

             $where['parent_id'] = 0;
        }
 

        $count = $this->_SqlModel->count('menu',$where);


        $page = isset($this->_arrayTrim['page'])?$this->_arrayTrim['page']:1;

        $res = $this->_SqlModel->getAll('menu',$page,$this->_limit,'sort asc','*',$where);

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

        $res = [
            'title' => '',
            'controller_action' => '',
            'status' => '',
            'date' => '',
            'start_time' => '',
            'end_time' => '',
        ];

        if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controllerUrl'] == $this->_controllerUrl){

            $res = $_SESSION['search']['_arrayTrim'];

        }

            
        $this->assign('res',$res);

        return view();
    }

     /**
     * [add 导航添加]
     */
    public function add(){

        if($this->_isPost){

             $model = model('MenuModel');

             $return = $model->menuAdd(); //menu模型添加类

             $this->YCL24_AJAX_MSG($return);

        }

        $res = $this->_SqlModel->getDadaTable('box_Menu',['id','parent_id']);

        $this->assign('res',$res);

        return view();
    }

    /**
     * [edit 导航编辑]
     * @return [type] [description]
     */
    public function edit(){

        if($this->_isPost){

             $model = model('MenuModel');

             $return = $model->menuEdit(); //menu模型添加类

             $this->YCL24_AJAX_MSG($return);die;
             
        }

        $id = $this->_arrayTrim['id'];

        $res = $this->_SqlModel->getOne('menu','*',['id' => $id]);

        $this->assign('res',$res);

        return view();
    }
}