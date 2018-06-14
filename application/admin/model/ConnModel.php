<?php   
/*公共模型*/
namespace app\admin\model;  
use app\admin\model\SqlModel; 
use think\Model;  
class ConnModel extends SqlModel{  

	protected $_limit;			//每页分页数
	protected $_adminid;		//管理员ID
	protected $_controllerUrl;  //控制器路径
	protected $_controller;  	//控制器
	protected $_action;			//控制器方法
	protected $_isPost;			//post提交
	protected $_isGet;			//get提交
	protected $_isFile;			//file提交
	protected $_arrayTrim;		//post/get数据
	protected $_arrayTrimNull;		//post/get数据
	protected $_getTrim;		//post/get 数组转为get参数数据
  protected $_webPath;    //web网址
	protected $_webPathRK;		//web网址+入口
	protected $_version = 1.1;	//版本号
  protected $_SqlModel;   //操作数据库模型（增删改）
	protected $_powerList;		//权限列表

	protected function initialize(){

    $this->initPower();

		$this->initial();

	}


  /**
   * [initPower 获取权限列表]
   * @return [type] [description]
   */
  public function initPower(){

    $this->_adminid = $_SESSION['login']['_adminid'];

    $this->_SqlModel = model('SqlModel');

    $order = ' a.id asc ';

    $whereTwo = [

      ' a.id '     => $this->_adminid,

      ' a.delete ' => 0,

      ' a.status ' => 1

    ];

    $join = [
        ['box_role b',' a.role_id = b.id '],
    ];
    
    $ret = $this->_SqlModel->getAllData('power',$order,' b.power',$whereTwo,' a.id ',$join);

    $this->_powerList = [];

    if($ret){

      $where = [
          'id'     => ['in',$ret[0]['power']],
          'status' => 1,
          'delete' => 0,
          'type'   => 1,
      ];


      $res = $this->_SqlModel->getAllData('menu',' sort asc ',' id,title,controller_action as href,parent_id,icon,sort',$where);

      $list = arraySort($res);

      if($list){

        $arr = [];

        foreach ($list[0]['children'] as $key => $value) {

          $i = explode('公共',$value['title']);

          if(count($i) <= 1){

            $arr[$key] = $value;

          }
          # code...
        }
        $this->_powerList = $arr;

      }
      $return = returnArr($this->_powerList);

    }else{

      $return = returnArr($ret,0,'','','获取权限信息错误');

    }

    return $return;
  }

	/**
	 * [initial 初始数据]
	 * @return [type] [description]
	 */
	public function initial(){

		$return = [];

		$request= \think\Request::instance();

		$return['_SqlModel'] = $this->_SqlModel = model('SqlModel');

		$sel = $this->_SqlModel->getOne('version','version_start,version_end'); //版本号

		$config = $this->_SqlModel->getOne('config','url'); //配置表

		$version = $sel['version_start'].'-'.$sel['version_end'];

		$return['_controllerUrl'] = $this->_controllerUrl = $request->controller().'/'.$request->action();

		$return['_controller'] = $this->_controller = $request->controller();

		$return['_action'] = $this->_action = $request->action();

    $return['_webPath'] = $this->_webPath = $config['url'];

		$return['_webPathRK'] = $this->_webPathRK = $config['url'].'/admin.php';

		$return['_version'] = $this->_version = $version;

		$return['_isPost'] = $this->_isPost = request()->isPost();

		$return['_isGet'] = $this->_isGet = request()->isGet();

		$return['_isFile'] = $this->_isFile =  request()->file();

		$return['_arrayTrim'] = $this->_arrayTrim = arrayTrim(input('param.'));

		$return['_arrayTrimNull'] = $this->_arrayTrimNull = arrayTrimNull(input('param.'));

		$return['_getTrim'] = $this->_getTrim = http_build_query($this->_arrayTrim);

		$return['_adminid'] = $this->_adminid;

		$return['_limit'] = $this->_limit = 25;

		$befinDB = model('DbBackupModel');  //备份数据库

    $whereTwo = [

      ' id '     => $this->_adminid,

      ' delete ' => 0,

      ' status ' => 1

    ];

    
    $ret = $this->_SqlModel->getOne('power','id,images,nickname',$whereTwo);

    $return['_userImages'] = $ret['images'];

    $return['_nickname'] = $ret['nickname'];

		return $return;

	}


  

  /**
   * [operation 操作记录]
   * @return [type] [description]
   */
  public function operation($operation_name,$remarks){


  	 $where = [
  	 		'operation_name' => $operation_name,
  	 	];

  	 $getOne = $this->_SqlModel->getOne('operation','id',$where);

  	 if($getOne && $operation_name == "更新缓存操作"){

  	 	$where = [
  	 		'operation_name' => $operation_name,
  	 	];

  	 	$addOperition = [
	     	'operation_controllerurl' => $this->_controllerUrl,
	     	'remarks'		 		  => $remarks,
	     	'createtime'			  => date('Y-m-d H:i:s'),
	     	'admin_id'				  => $this->_adminid,
	     ];

	    $up = $this->_SqlModel->up('operation',$where,$addOperition);
  	 }else{

  	 	$addOperition = [
	     	'operation_name' 		  => $operation_name,
	     	'operation_controllerurl' => $this->_controllerUrl,
	     	'remarks'		 		  => $remarks,
	     	'createtime'			  => date('Y-m-d H:i:s'),
	     	'admin_id'				  => $this->_adminid,
	     ];

	     $up = $this->_SqlModel->add('operation',$addOperition);

  	 }
  	 
     return $up;
  }


  	/**
     * [clearcache 清除缓存]
     * @return [type] [description]
     */
    public function clearcache(){

    	if($this->_isPost){

    		 $where = [
    		 	'id' => 1,
    		 ];

    		 $data = [
    		 	'version_end' => time(),
    		 	'updatetime'  => date('Y-m-d H:i:s'),
    		 	'admin_id'	  => $this->_adminid,
    		 ];

    		 $up = $this->_SqlModel->up('version',$where,$data);

    		 $return = returnArr($up);

    		 $this->operation('更新缓存操作','后台更新缓存');

    		 return $return;
    		
    	}

    }


     /**
     * [delete 删除操作]
     * @return [dataTable] 数据表
     * @return [arr] [操作数据]
     * @return [field] [添加字段]
     * @return [type] [description]
     */
    public function deleteopear(){

    	if($this->_isPost){

    		$dataTable = $this->_arrayTrim['dataTable'];

    		$arr =  json_decode($this->_arrayTrim['arr'],true);

    		$field = $this->_arrayTrim['field'];

        $type = $this->_arrayTrim['type'];

        $search_field = ' id';

        if($type == 1){

          $search_field = ' id,ifnull(parent_id,0) as parent_id ';

        }

    		foreach ($arr as $key => $value) {

          $where = [
            $field => $value,
           ];

          $getRes = $this->_SqlModel->getOne($dataTable,$search_field,$where);   //判断ID是否存在

    			if($getRes){

             $data = [
              'delete' => 1,
              'updatetime' => date('Y-m-d H:i:s'),
             ];

             $up = $this->_SqlModel->up($dataTable,$where,$data);

             if($up && $type == 1 && $getRes['parent_id'] == 0){

                $chid_where = [

                  'parent_id' => $getRes['id'],

                ];


                $chid_data = [
                  'delete' => 1,
                  'updatetime' => date('Y-m-d H:i:s'),
                 ];

                 $chid_up = $this->_SqlModel->up($dataTable,$chid_where,$chid_data);
             }
          }

	    		

	    		# code...
	    	}

	    	$return = returnArr($up);

    		$this->operation($dataTable.'数据表删除操作','根据字段'.$field.'键值为'.$this->_arrayTrim['arr'].'的数据信息');


    		return $return;
    	}


       
    }


     /**
     * [EditStatus 修改状态]
     * @param  string $type [description]
     * @return [type]       [description]
     */
    public function EditStatus(){

        if($this->_isPost){

             $time = date('Y-m-d H:i:s');

             $arrayTrim = $this->_arrayTrim; //获取表单数据


            $getRes = $this->_SqlModel->getOne($arrayTrim['dataTable'],'id',['id' => $arrayTrim['id']]);   //判断ID是否存在

            if(!$getRes){

                $return = array('status'=>0,'info'=> $arrayTrim['info'].'不存在,参数错误,请重新刷新页面!');

                $this->operation($arrayTrim['info'].'操作',$arrayTrim['info'].'不存在,参数id错误');  //操作记录

            }else{

                $where = [
                        'id' => $arrayTrim['id'],
                     ];


                $data = [
                    'status'        => isset($arrayTrim['status'])?$arrayTrim['status']:0,
                    'updatetime'    => $time,
                 ];

                 $up = $this->_SqlModel->up($arrayTrim['dataTable'],$where,$data);

                 $return = returnArr($up);

                 $this->operation($arrayTrim['info'].'操作','修改'.$arrayTrim['info'].'状态,'.$return['info'].',id为'.$arrayTrim['id']); //操作记录


                
            }
            


         return $return;


        }
    }
}