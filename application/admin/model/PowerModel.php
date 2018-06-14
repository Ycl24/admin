<?php   
namespace app\admin\model; 
use app\admin\model\ConnModel;  
use app\admin\validate\Verification;  
class PowerModel extends ConnModel{  

    protected $field = true; //忽略数据表不存在的字段

    protected function initialize(){

        parent::initialize();
        
    }

    /**
     * [powerAdd 权限添加model]
     * @return [type] [description]
     */
    public function powerAdd(){

         if($this->_isPost){

             $time = date('Y-m-d H:i:s');

             $arrayTrim = $this->_arrayTrim; //获取表单数据

             
            
            //调用验证类并把数据传入    Verification.nav是调用验证类里面的nav场景
            //
             $validate = new \app\admin\validate\Verification;

             $Verification = $validate->scene('power_add')->check($arrayTrim);


             if( 0 !== $Verification && $validate->getError()){ //场景验证返回0 表示成功 返回空 表示失败并且$this->getError()有打印值
                
                $return = array('status'=>0,'info'=>$validate->getError());

             }else{


                  $getInfo = $this->_SqlModel->getOne('power','id',['nickname' => $arrayTrim['nickname'],'delete'=>0]);   //判断导航是否存在


                 if($getInfo){

                    $return = array('status'=>0,'info'=>'管理员名称已经存在!');

                    $this->operation('管理员管理操作','添加管理员失败,管理员名为'.$arrayTrim['nickname']);  //操作记录

                 }else{

                    $encryption_accounts = encryption($arrayTrim['accounts'],'accounts');

                    $is_account = $this->_SqlModel->getOne('power','id',['accounts' => $encryption_accounts,'delete'=>0]);   //判断帐号是否存在

                    if($is_account){

                        $return = array('status'=>0,'info'=>'管理员帐号已经存在!');

                        $this->operation('管理员管理操作','添加管理员帐号失败,管理员帐号名为'.$arrayTrim['accounts']);  //操作记录

                    }else{


                        $data = [
                            'nickname'          => $arrayTrim['nickname'],
                            'accounts'          => encryption($arrayTrim['accounts'],'accounts'),
                            'password'          => encryption($arrayTrim['password'],'password'),
                            'phone'             => encryption($arrayTrim['phone'],'phone'),
                            'remarks'           => htmlspecialchars($arrayTrim['remarks']),
                            'role_id'           => $arrayTrim['role_id'],
                            'status'            => isset($arrayTrim['status'])?$arrayTrim['status']:0,
                            'images'            => isset($arrayTrim['file_info'])?$arrayTrim['file_info']:'',
                            'delete'            => 0,
                            'createtime'        => $time,
                            'updatetime'        => $time,
                            'admin_id'          => $this->_adminid,
                         ];


                         $add = $this->_SqlModel->add('power',$data);

                         $return = returnArr($add);

                         $this->operation('管理员管理操作','添加管理员,'.$return['info'].',管理员名为'.$arrayTrim['nickname']); //操作记录
                    }
                     

                 }
             }

             return $return;


        }

    }

    /**
     * [rodeEdit 修改]
     * @return [type] [description]
     */
    public function powerEdit(){

        if($this->_isPost){

             $time = date('Y-m-d H:i:s');

             $arrayTrim = $this->_arrayTrim; //获取表单数据

             //调用验证类并把数据传入    Verification.nav是调用验证类里面的nav场景
       
            $validate = new \app\admin\validate\Verification;

            $Verification = $validate->scene('power_edit')->check($arrayTrim);


             if( 0 !== $Verification && $validate->getError()){ //场景验证返回0 表示成功 返回空 表示失败并且$this->getError()有打印值
                
                $return = array('status'=>0,'info'=>$this->getError());
             }else{

                $getRes = $this->_SqlModel->getOne('power','id,images',['nickname' => $arrayTrim['nickname'],'delete'=>0]);   //判断ID是否存在

                if(!$getRes){

                    $return = array('status'=>0,'info'=>'管理员不存在,参数错误,请重新刷新页面!');

                    $this->operation('管理员管理操作','管理员不存在,参数id错误');  //操作记录

                }else{

                    $where = [
                            'id' => $arrayTrim['id'],
                         ];


                      $getInfo = $this->_SqlModel->getOne('power','id',['nickname' => $arrayTrim['nickname'],'id' => ['neq',$arrayTrim['id']],'delete'=>0 ]);   //判断导航是否存在

                     if($getInfo){

                        $return = array('status'=>0,'info'=>'管理员名称已经存在!');

                        $this->operation('管理员管理操作','添加管理员失败,管理员名为'.$arrayTrim['nickname']);  //操作记录

                     }else{

                        $data = [
                            'nickname'          => $arrayTrim['nickname'],
                            'phone'             => encryption($arrayTrim['phone'],'phone'),
                            'remarks'           => htmlspecialchars($arrayTrim['remarks']),
                            'role_id'           => $arrayTrim['role_id'],
                            'status'            => isset($arrayTrim['status'])?$arrayTrim['status']:0,
                            'delete'            => 0,
                            'updatetime'        => $time,
                            'admin_id'          => $this->_adminid,
                         ];

                         $file_info = isset($arrayTrim['file_info'])?$data['images'] = $arrayTrim['file_info']:'';

                         if($arrayTrim['password']){

                            $data['password'] = encryption($arrayTrim['password'],'password');
                         }

                         $up = $this->_SqlModel->up('power',$where,$data);

                         $return = returnArr($up);

                         if($return['status'] && $getRes['images']){

                                if($file_info){

                                    $iconNameArr = explode('/',$getRes['images']);

                                    $iconName = end($iconNameArr);  //获取以前的文件名

                                    @copy('.'.$getRes['images'],'.'.PUBLIC_UNLINKFILE.$iconName); //拷贝到新目录
                                    
                                    @unlink('.'.$getRes['images']); //删除旧目录下的文件

                                }

                         }


                         $this->operation('管理员管理操作','修改管理员,管理员id为'.$arrayTrim['id']); //操作记录

                    }
                    
                }
                
             }

            

             return $return;


        }
    }

   
}