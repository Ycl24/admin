<?php   
namespace app\admin\model; 
use app\admin\model\ConnModel;  
use app\admin\validate\Verification;  
class NavModel extends ConnModel{  

	protected $field = true; //忽略数据表不存在的字段

	protected function initialize(){

		parent::initialize();
		
	}
	/**
	 * [navAdd 导航添加model]
	 * @return [type] [description]
	 */
	public function navAdd(){

		 if($this->_isPost){

             $time = date('Y-m-d H:i:s');

             $arrayTrim = $this->_arrayTrim; //获取表单数据

             // var_dump($arrayTrim);die;
            
            //调用验证类并把数据传入    Verification.nav是调用验证类里面的nav场景
            //
             $validate = new \app\admin\validate\Verification;

             $Verification = $validate->scene('nav')->check($arrayTrim);


             if( 0 !== $Verification && $validate->getError()){ //场景验证返回0 表示成功 返回空 表示失败并且$this->getError()有打印值
             	
             	$return = array('status'=>0,'info'=>$validate->getError());

             }else{

             	  $getInfo = $this->_SqlModel->getOne('nav','id',['title' => $arrayTrim['nav_title'],'delete'=>0]);   //判断导航是否存在

                 if($getInfo){

                    $return = array('status'=>0,'info'=>'导航名称已经存在!');

                    $this->operation('导航操作','添加导航失败,导航名为'.$arrayTrim['nav_title']);  //操作记录

                 }else{

                     $max_sort = $this->_SqlModel->getOne('nav','(max(sort)+1) as max_sort'); //获取排序最大值

                     $data = [
                        'title'         => $arrayTrim['nav_title'],
                        'url'           => $arrayTrim['nav_url'],
                        'parent_id'     => isset($arrayTrim['parent_id'])?$arrayTrim['parent_id']:0,
                        'icon'          => isset($arrayTrim['file_info'])?$arrayTrim['file_info']:'',
                        'sort'          => !empty($arrayTrim['nav_sort'])?$arrayTrim['nav_sort']:$max_sort['max_sort'],
                        'status'        => isset($arrayTrim['nav_status'])?$arrayTrim['nav_status']:0,
                        'createtime'    => $time,
                        'updatetime'    => $time,
                        'admin_id'      => $this->_adminid,
                     ];

                     $add = $this->_SqlModel->add('nav',$data);

                     $return = returnArr($add);

                     $this->operation('导航操作','添加导航,'.$return['info'].',导航名为'.$arrayTrim['nav_title']); //操作记录

                 }
             }

             return $return;


        }

	}

    /**
     * [navEdit 修改]
     * @return [type] [description]
     */
    public function navEdit(){

        if($this->_isPost){

             $time = date('Y-m-d H:i:s');

             $arrayTrim = $this->_arrayTrim; //获取表单数据

             //调用验证类并把数据传入    Verification.nav是调用验证类里面的nav场景
       
            $validate = new \app\admin\validate\Verification;

            $Verification = $validate->scene('nav')->check($arrayTrim);


             if( 0 !== $Verification && $validate->getError()){ //场景验证返回0 表示成功 返回空 表示失败并且$this->getError()有打印值
                
                $return = array('status'=>0,'info'=>$this->getError());

             }else{

                $getRes = $this->_SqlModel->getOne('nav','id,icon',['id' => $arrayTrim['id']]);   //判断ID是否存在

                if(!$getRes){

                    $return = array('status'=>0,'info'=>'导航不存在,参数错误,请重新刷新页面!');

                    $this->operation('导航操作','导航不存在,参数id错误');  //操作记录

                }else{

                    $where = [
                            'id' => $arrayTrim['id'],
                         ];


                      $getInfo = $this->_SqlModel->getOne('nav','id',['title' => $arrayTrim['nav_title'],'id' => ['neq',$arrayTrim['id']],'delete'=>0 ]);   //判断导航是否存在

                     if($getInfo){

                        $return = array('status'=>0,'info'=>'导航名称已经存在!');

                        $this->operation('导航操作','添加导航失败,导航名为'.$arrayTrim['nav_title']);  //操作记录

                     }else{

                         $max_sort = $this->_SqlModel->getOne('nav','(max(sort)+1) as max_sort'); //获取排序最大值

                         $data = [
                            'title'         => $arrayTrim['nav_title'],
                            'url'           => $arrayTrim['nav_url'],
                            'parent_id'     => isset($arrayTrim['parent_id'])?$arrayTrim['parent_id']:0,
                            'sort'          => !empty($arrayTrim['nav_sort'])?$arrayTrim['nav_sort']:$max_sort['max_sort'],
                            'status'        => isset($arrayTrim['nav_status'])?$arrayTrim['nav_status']:0,
                            'updatetime'    => $time,
                            'admin_id'      => $this->_adminid,
                         ];

                         $file_info = isset($arrayTrim['file_info'])?$data['icon'] = $arrayTrim['file_info']:'';


                         $up = $this->_SqlModel->up('nav',$where,$data);

                         $return = returnArr($up);

                         if($return['status'] && $getRes['icon']){

                                if($file_info){

                                    $iconNameArr = explode('/',$getRes['icon']);

                                    $iconName = end($iconNameArr);  //获取以前的文件名

                                    @copy('.'.$getRes['icon'],'.'.PUBLIC_UNLINKFILE.$iconName); //拷贝到新目录
                                    
                                    @unlink('.'.$getRes['icon']); //删除旧目录下的文件

                                }

                         }

                         $this->operation('导航操作','修改导航,导航id为'.$arrayTrim['id']); //操作记录

                    }
                    
                }
                
             }

            

             return $return;


        }
    }

   
}