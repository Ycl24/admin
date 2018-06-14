<?php
namespace app\admin\controller;
use app\admin\controller\ConnController; 
use think\Model;  //模型
use think\Url;		
use think\Paginator;	//分页
class Common extends ConnController
{
    public function base()
    {
       return view();
    }

    /**
     * [clearcache 清除缓存]
     * @return [type] [description]
     */
    public function clearcache(){

    	if($this->_isPost){

    		 $return = model('ConnModel')->clearcache(); //公共模型 清除缓存

             $this->YCL24_AJAX_MSG($return);

    	}

    }

    /**
     * [upimg 图片上传]
     * @return [type] [description]
     */
    public function upimg(){

        $return = model('UploadModel')->uploadFile('images');

        $this->YCL24_AJAX_MSG($return);
        
    }

    /**
     * [upfile 文件上传]
     * @return [type] [description]
     */
    public function upfile(){

        $return = model('UploadModel')->uploadFile();

        $this->YCL24_AJAX_MSG($return);
        
    }

     /**
     * [delete 删除操作]
     * @return [type] [description]
     */
    public function deleteopear(){

        if($this->_isPost){

             $return = model('ConnModel')->deleteopear(); 

             $this->YCL24_AJAX_MSG($return);
        }
        
    }


    /**
     * [exportexecl execl导出]
     * @return [type] [description]
     */
    public function exportexecl(){

        if($this->_isPost){

             $return = model('ExeclModel')->opertion(); 

             $this->YCL24_AJAX_MSG($return);
        }
        
    }


     /**
     * [get_parent_list 获取父类列表]
     * @return [type] id [自身id]
     * @return [type] dbtable [数据表]
     * @return [type] filed [查询字段]
     * @return [type]  parent_id [父类id]
     * @return [type]  type 1:查看父类下的子类  2：所有信息
     */
    public function get_parent_list($id='',$dbtable='',$filed='',$parent_id='',$type=1){

        $id        = isset($this->_arrayTrim['id'])?$this->_arrayTrim['id']:$id;

        $dbtable   = isset($this->_arrayTrim['dbtable'])?$this->_arrayTrim['dbtable']:$dbtable;

        $filed     = isset($this->_arrayTrim['filed'])?$this->_arrayTrim['filed']:$filed;

        $parent_id = isset($this->_arrayTrim['parent_id'])?$this->_arrayTrim['parent_id']:$parent_id;

        if($type == 1){

            $where = [
                'delete'    => 0,
                'parent_id' => 0,
                'id'        => [ 'neq',$id],
            ]; //查询条件
           
        }else{

            $where = [
                'delete'    => 0,
                'id'        => [ 'neq',$id],
            ]; //查询条件
        }
        
        if($parent_id){

                $where['parent_id'] = $parent_id;
                
        }
        $res = $this->_SqlModel->getAllData($dbtable,' sort asc',$filed,$where);

        $return = returnArr($res);

        $this->YCL24_AJAX_MSG($return);

        
    }
    

     /**
     * [get_parent_list 搜索父类列表]
      * @return [type] id [自身id]
     * @return [type] dbtable [数据表]
     * @return [type] filed [查询字段]
     * @return [type]  parent_id [父类id]
     */
    public function get_parent_search($id='',$dbtable='',$filed='',$parent_id=''){

        $id        = isset($this->_arrayTrim['id'])?$this->_arrayTrim['id']:$id;

        $dbtable   = isset($this->_arrayTrim['dbtable'])?$this->_arrayTrim['dbtable']:$dbtable;

        $filed     = isset($this->_arrayTrim['filed'])?$this->_arrayTrim['filed']:$filed;

        $parent_id = isset($this->_arrayTrim['parent_id'])?$this->_arrayTrim['parent_id']:$parent_id;

        $where = [
            'delete'    => 0,
            'id'        => [ 'neq',$id],
        ]; //查询条件


        if($parent_id){

            $where['parent_id'] = $parent_id;
            
        }
        
        $res = $this->_SqlModel->getAllData($dbtable,' sort asc',$filed,$where);


        $array = arraySort($res);
       
        $aa = selectSort($array,$id);

        $arr = explode('</optgroup>', $aa);

        $str = '<optgroup label="分组名称:1"><option value=""></option></optgroup>';

        foreach ($arr as $key => $value) {

            if($value){

                $str .= $value.'</optgroup>';

            }
            # code...
        }

        $return = returnArr($str);

        $this->YCL24_AJAX_MSG($return);

        
    }
    

       /**
     * [editAjax 修改状态]
     * @return [type] [description]
     */
    public function statusAjax(){

        if($this->_isPost){

             $model = model('ConnModel');

             $return = $model->EditStatus(); //模型修改状态类

             $this->YCL24_AJAX_MSG($return);

        }
    }
}
