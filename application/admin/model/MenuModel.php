<?php   
namespace app\admin\model; 
use app\admin\model\ConnModel;  
use app\admin\validate\Verification;  
class MenuModel extends ConnModel{  

	protected $field = true; //忽略数据表不存在的字段

	protected function initialize(){

		parent::initialize();
		
	}
	/**
	 * [menuAdd 菜单添加model]
	 * @return [type] [description]
	 */
	public function menuAdd(){

		 if($this->_isPost){

             $time = date('Y-m-d H:i:s');

             $arrayTrim = $this->_arrayTrim; //获取表单数据

             // var_dump($arrayTrim);die;
            
            //调用验证类并把数据传入    Verification.nav是调用验证类里面的nav场景
            //
             $validate = new \app\admin\validate\Verification;

             $Verification = $validate->scene('menu_add')->check($arrayTrim);


             if( 0 !== $Verification && $validate->getError()){ //场景验证返回0 表示成功 返回空 表示失败并且$this->getError()有打印值
             	
             	$return = array('status'=>0,'info'=>$validate->getError());


             }else{

             	  $getInfo = $this->_SqlModel->getOne('menu','id',['title' => $arrayTrim['menu_title'],'delete'=>0]);   //判断导航是否存在

                 if($getInfo){

                    $return = array('status'=>0,'info'=>'菜单名称已经存在!');

                    $this->operation('菜单操作','添加菜单失败,菜单名为'.$arrayTrim['menu_title']);  //操作记录

                 }else{

                     $max_sort = $this->_SqlModel->getOne('menu','(max(sort)+1) as max_sort'); //获取排序最大值

                     $data = [
                        'title'                       => $arrayTrim['menu_title'],
                        'controller_action'           => $arrayTrim['menu_controller_action'],
                        'parent_id'                   => isset($arrayTrim['parent_id'])?$arrayTrim['parent_id']:0,
                        'icon'                        => isset($arrayTrim['menu_icon'])?$arrayTrim['menu_icon']:'',
                        'sort'                        => !empty($arrayTrim['menu_sort'])?$arrayTrim['menu_sort']:$max_sort['max_sort'],
                        'status'                      => isset($arrayTrim['menu_status'])?$arrayTrim['menu_status']:0,
                        'type'                        => isset($arrayTrim['menu_type'])?$arrayTrim['menu_type']:1,
                        'createtime'                  => $time,
                        'updatetime'                  => $time,
                        'admin_id'                    => $this->_adminid,
                     ];

                     $add = $this->_SqlModel->add('menu',$data);

                     $return = returnArr($add);

                     $this->operation('菜单操作','添加菜单,'.$return['info'].',菜单名为'.$arrayTrim['menu_title']); //操作记录

                 }
             }

             return $return;


        }

	}

    /**
     * [menuEdit 修改]
     * @return [type] [description]
     */
    public function menuEdit(){

        if($this->_isPost){

             $time = date('Y-m-d H:i:s');

             $arrayTrim = $this->_arrayTrim; //获取表单数据

             //调用验证类并把数据传入    Verification.nav是调用验证类里面的nav场景
       
            $validate = new \app\admin\validate\Verification;

            $Verification = $validate->scene('menu_edit')->check($arrayTrim);


             if( 0 !== $Verification && $validate->getError()){ //场景验证返回0 表示成功 返回空 表示失败并且$this->getError()有打印值
                
                $return = array('status'=>0,'info'=>$this->getError());

             }else{
                
                $getRes = $this->_SqlModel->getOne('menu','id,icon',['id' => $arrayTrim['id']]);   //判断ID是否存在
               
                if(!$getRes){

                    $return = array('status'=>0,'info'=>'菜单不存在,参数错误,请重新刷新页面!');

                    $this->operation('菜单操作','菜单不存在,参数id错误');  //操作记录

                }else{

                    $where = [
                            'id' => $arrayTrim['id'],
                         ];


                      $getInfo = $this->_SqlModel->getOne('menu','id',['title' => $arrayTrim['menu_title'],'id' => ['neq',$arrayTrim['id']],'delete'=>0 ]);   //判断导航是否存在

                     if($getInfo){

                        $return = array('status'=>0,'info'=>'菜单名称已经存在!');

                        $this->operation('菜单操作','添加菜单失败,菜单名为'.$arrayTrim['menu_title']);  //操作记录

                     }else{

                         $max_sort = $this->_SqlModel->getOne('menu','(max(sort)+1) as max_sort'); //获取排序最大值

                          $data = [
                            'title'                       => $arrayTrim['menu_title'],
                            'controller_action'           => $arrayTrim['menu_controller_action'],
                            'parent_id'                   => isset($arrayTrim['parent_id'])?$arrayTrim['parent_id']:0,
                            'icon'                        => isset($arrayTrim['menu_icon'])?$arrayTrim['menu_icon']:'',
                            'sort'                        => !empty($arrayTrim['menu_sort'])?$arrayTrim['menu_sort']:$max_sort['max_sort'],
                            'status'                      => isset($arrayTrim['menu_status'])?$arrayTrim['menu_status']:0,
                            'type'                        => isset($arrayTrim['menu_type'])?$arrayTrim['menu_type']:1,
                            'updatetime'                  => $time,
                            'admin_id'                    => $this->_adminid,
                         ];

                         $up = $this->_SqlModel->up('menu',$where,$data);

                         $return = returnArr($up);

                         $this->operation('菜单操作','修改菜单,菜单id为'.$arrayTrim['id']); //操作记录

                    }
                    
                }
                
             }

            

             return $return;


        }
    }

   
}