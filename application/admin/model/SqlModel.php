<?php   
namespace app\admin\model;  
use think\Model;  
use think\Db;  //加载Db数据库
class SqlModel extends Model{  

      protected $_Database;         //数据库名

      protected $_User;       //数据库用户名

      protected $_Pwd;        //数据库密码

      protected function initialize(){

            Db::connect();  //链接数据库

            $this->_Database = 'box';

            $this->_User = 'root';

            $this->_Pwd = 'root';

      }
      /**
       * [count 统计数据总数]
       * @param  [type] $table [description]
       * @param  string $where [description]
       * @return [type]        [description]
       */
      public function count($table,$where=''){

            if($where){

                  $sel = db($table)->where($where)->count(); 

            }else{

                  $sel = db($table)->count(); 

            }
            
            
            return $sel;
      }
      /**
       * [getOne 查询一条]
       * @param  [type] $table [description]
       * @param  string $field [description]
       * @param  string $where [description]
       * @return [type]        [description]
       */
      public function getOne($table,$field='*',$where=''){

            if($where){

                  $sel = db($table)->field($field)->where($where)->find(); 

            }else{

                  $sel = db($table)->field($field)->find(); 

            }
            
            
            return $sel;
      }  

      /**
       * [getAll 查询多条/分页]
       * @param  [type] $table [description]
       * @param  string $field [description]
       * @param  string $where [description]
       * @return [type] group      [description]
       * @return [type] join      [链表]
       */
      public function getAll($table,$pageStart,$pageEnd = '15',$order=" id asc ",$field='*',$where='',$group="",$join=""){

            if($where){

                  if($group){

                        if($join){

                              $sel = db($table)->field($field)->alias('a')->join($join)->where($where)->page($pageStart,$pageEnd)->order($order)->group($group)->select(); 

                        }else{

                              $sel = db($table)->field($field)->where($where)->page($pageStart,$pageEnd)->order($order)->group($group)->select(); 
                        }
                        

                  }else{

                        if($join){

                              $sel = db($table)->field($field)->alias('a')->join($join)->where($where)->page($pageStart,$pageEnd)->order($order)->select(); 

                        }else{

                              $sel = db($table)->field($field)->where($where)->page($pageStart,$pageEnd)->order($order)->select(); 
                        }
     
                  }

                  

            }else{

                  if($group){

                        if($join){

                              $sel = db($table)->field($field)->alias('a')->join($join)->order($order)->page($pageStart,$pageEnd)->group($group)->select(); 


                        }else{

                              $sel = db($table)->field($field)->order($order)->page($pageStart,$pageEnd)->group($group)->select(); 

                        }
                        
                  }else{

                        if($join){

                               $sel = db($table)->field($field)->alias('a')->join($join)->order($order)->page($pageStart,$pageEnd)->select(); 


                        }else{


                               $sel = db($table)->field($field)->order($order)->page($pageStart,$pageEnd)->select(); 

                        }
     
                  }


                  
                  
            }

            return $sel;
      } 


      /**
       * [getAllData 查询多条]
       * @param  [type] $table [description]
       * @param  string $field [description]
       * @param  string $where [description]
       * @return [type]        [description]
       */
      public function getAllData($table,$order=" id asc ",$field='*',$where='',$group="",$join=""){

            if($where){

                  if($group){

                        if($join){

                              $sel = db($table)->field($field)->alias('a')->join($join)->where($where)->order($order)->group($group)->select();

                        }else{

                              $sel = db($table)->field($field)->where($where)->order($order)->group($group)->select(); 
                        }
                        

                  }else{

                        if($join){

                              $sel = db($table)->field($field)->alias('a')->join($join)->where($where)->order($order)->select(); 

                        }else{

                              $sel = db($table)->field($field)->where($where)->order($order)->select(); 
                        }
                        
     
                  }
                  
            }else{

                  if($group){


                        if($join){

                              $sel = db($table)->field($field)->alias('a')->join($join)->order($order)->group($group)->select(); 

                        }else{

                              $sel = db($table)->field($field)->order($order)->group($group)->select(); 
                        }

                        

                  }else{


                        if($join){

                               $sel = db($table)->field($field)->alias('a')->join($join)->order($order)->select(); 

                        }else{

                              $sel = db($table)->field($field)->order($order)->select(); 
                        }
                        
                       
                  }

                  
                  
            }

            return $sel;
      } 


      /**
       * [querySql 原生查询操作]
       * @param  [type] $sql [description]
       * @return [type]      [description]
       */
      public function querySql($sql){
            
            $res = Db::query($sql);

            return $res;
      } 


      /**
       * [getDadaTable 获取数据表字段操作]
       * @param  [type] $table [description]
       * @param  [type] $arr [description]
       * @return [type]      [description]
       */
      public function getDadaTable($table,$arr=[]){
            
            $sql = " SHOW FULL COLUMNS FROM ".$table;

            $res = Db::query($sql);

            $return = [];

            if($res){

                foreach ($res as $key => $value) {

                        $return[$value['Field']] = '';

                        foreach ($arr as $ke => $val) {

                              if($val == $value['Field']){

                                     $return[$value['Field']] = 0;

                              }
                              # code...
                        }
                        
                        # code...
                  }  
            }
            
            return $return;
      } 

      /**
       * [add 添加一条]
       * @param [type] $table [description]
       * @param [type] $data  [description]
       */
	public function add($table,$data){

      	$add = db($table)->insert($data);

      	$userId = db($table)->getLastInsID();
      	
      	return $userId;
	}  

      /**
       * [addAll 添加多条]
       * @param [type] $table [description]
       * @param [type] $data  [description]
       */
	public function addAll($table,$data){

      	$add = db($table)->insertAll($data);

      	$userId = db($table)->getLastInsID();
      	
      	return $userId;
	}  

      /**
       * [up 修改一条]
       * @param  [type] $table [description]
       * @param  [type] $where [description]
       * @param  [type] $data  [description]
       * @return [type]        [description]
       */
	public function up($table,$where,$data){

      	$up = db($table)->where($where)->update($data);

      	return $up;
	}  

      // 根据主键删除
      public function delTim($table,$data){

            $del = db($table)->delete($data);

            return $del;
      }

      // 根据删除
      public function del($table,$where){

            $del = db($table)->where($where)->delete();

            return $del;
      }


      // 打印最后一条sql
      public function getSql($table){

            $res = db($table)->getLastSql();

            return $res;
      }
}
?> 