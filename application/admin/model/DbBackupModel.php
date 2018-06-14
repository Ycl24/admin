<?php   
/*数据库备份模型
	根据日期，每天备份一次
*/
namespace app\admin\model;  
use app\admin\model\SqlModel; 
use think\Model;  
class DbBackupModel extends SqlModel{  


	protected $_SqlModel;		//操作数据库模型（增删改）

	protected function initialize(){

		parent::initialize();

		$date = date("Y-m-d");

        $fileName = $date."_".$this->_Database.".sql";

        $dumpFileName = ROOT_PATH . 'public' . DS .'database'. DS .$fileName;  //备份文件路径

		if (!file_exists($dumpFileName)){

            $this->backup($dumpFileName);

        }

		

	}
	/**
	 * [backup 备份数据]
	 * @return [type] [description]
	 */
	protected function backup($dumpFileName){

        $res = $this->querySql("SHOW VARIABLES LIKE 'DATADIR' ");  //获取mysql路径

        $arr = explode('\\',$res[0]['Value']);

        $new_arr = [];

        foreach ($arr as $key => $value) {

        	if ($value != 'data' && $value) {

        		$new_arr[] = $value;

        		# code...
        	}
        	# code...
        }

        $url = implode('/',$new_arr).'/bin/mysqldump';
		// print_r($rs);
        exec(" $url -u".$this->_User." -p".$this->_Pwd." ".$this->_Database." > ".$dumpFileName." "); 
	}

}