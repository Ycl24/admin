<?php   
namespace app\admin\model; 
use app\admin\model\ConnModel;  
use app\admin\validate\Verification;  
class RoleModel extends ConnModel{  

    protected $field = true; //忽略数据表不存在的字段

    protected function initialize(){

        parent::initialize();
        
    }
    /**
     * [roleAdd 权限添加model]
     * @return [type] [description]
     */
    public function roleAdd(){

         if($this->_isPost){

             $time = date('Y-m-d H:i:s');

             $arrayTrim = $this->_arrayTrim; //获取表单数据

             // var_dump($arrayTrim);die;
            
            //调用验证类并把数据传入    Verification.nav是调用验证类里面的nav场景
            //
             $validate = new \app\admin\validate\Verification;

             $Verification = $validate->scene('role_add')->check($arrayTrim);


             if( 0 !== $Verification && $validate->getError()){ //场景验证返回0 表示成功 返回空 表示失败并且$this->getError()有打印值
                
                $return = array('status'=>0,'info'=>$validate->getError());

             }else{

                  $getInfo = $this->_SqlModel->getOne('role','id',['name' => $arrayTrim['role_name']],'delete'=>0);   //判断导航是否存在

                 if($getInfo){

                    $return = array('status'=>0,'info'=>'角色名称已经存在!');

                    $this->operation('权限操作','添加角色失败,角色名为'.$arrayTrim['role_name']);  //操作记录

                 }else{

                     $data = [
                        'name'          => $arrayTrim['role_name'],
                        'power'         => isset($arrayTrim['power'])?trim($arrayTrim['power'],','):'',
                        'status'        => isset($arrayTrim['status'])?$arrayTrim['status']:0,
                        'delete'        => 0,
                        'createtime'    => $time,
                        'updatetime'    => $time,
                        'admin_id'      => $this->_adminid,
                     ];

                     $add = $this->_SqlModel->add('role',$data);

                     $return = returnArr($add);

                     $this->operation('权限操作','添加角色,'.$return['info'].',角色名为'.$arrayTrim['role_name']); //操作记录

                 }
             }

             return $return;


        }

    }

    /**
     * [rodeEdit 修改]
     * @return [type] [description]
     */
    public function roleEdit(){

        if($this->_isPost){

             $time = date('Y-m-d H:i:s');

             $arrayTrim = $this->_arrayTrim; //获取表单数据

             //调用验证类并把数据传入    Verification.nav是调用验证类里面的nav场景
       
            $validate = new \app\admin\validate\Verification;

            $Verification = $validate->scene('role_edit')->check($arrayTrim);


             if( 0 !== $Verification && $validate->getError()){ //场景验证返回0 表示成功 返回空 表示失败并且$this->getError()有打印值
                
                $return = array('status'=>0,'info'=>$this->getError());

             }else{

                $getRes = $this->_SqlModel->getOne('role','id',['id' => $arrayTrim['id']]);   //判断ID是否存在

                if(!$getRes){

                    $return = array('status'=>0,'info'=>'导航不存在,参数错误,请重新刷新页面!');

                    $this->operation('权限操作','角色不存在,参数id错误');  //操作记录

                }else{

                    $where = [
                            'id' => $arrayTrim['id'],
                         ];


                      $getInfo = $this->_SqlModel->getOne('role','id',['name' => $arrayTrim['role_name'],'id' => ['neq',$arrayTrim['id']],'delete'=>0 ]);   //判断导航是否存在

                     if($getInfo){

                        $return = array('status'=>0,'info'=>'角色名称已经存在!');

                        $this->operation('权限操作','添加角色失败,角色名为'.$arrayTrim['role_name']);  //操作记录

                     }else{

                          $data = [
                            'name'          => $arrayTrim['role_name'],
                            'power'         => isset($arrayTrim['power'])?trim($arrayTrim['power'],','):'',
                            'status'        => isset($arrayTrim['status'])?$arrayTrim['status']:0,
                            'updatetime'    => $time,
                            'admin_id'      => $this->_adminid,
                         ];


                         $up = $this->_SqlModel->up('role',$where,$data);

                         $return = returnArr($up);

                         $this->operation('权限操作','修改角色,角色id为'.$arrayTrim['id']); //操作记录

                    }
                    
                }
                
             }

            

             return $return;


        }
    }

   
}