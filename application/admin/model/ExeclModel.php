<?php 
namespace app\admin\model;  
use app\admin\model\ConnModel;  
use think\Db;  //加载Db数据库
/**
 * 导出excel
 */
class ExeclModel extends ConnModel {


    public function opertion(){

        if($this->_isPost){

            $opertion = $this->_arrayTrim['opertion'];

            $table = $this->_arrayTrim['table'];

            $data = $this->getPostDate($table);

            $name = $data['name'];

            switch ($opertion) {

                case 'export':
                        
                        $this->export($data['title'],$data['res'],['数据信息'],$data['title'],$name);

                    break;
                
                default:
                    # code...
                    break;
            }

            $return = [
                'status' => 1,
                'info'   => '成功',
                'path'   =>  $this->_webPath.'/public/execl/'.$name .'.xls',
                ];

            return  $return;
        }
    }

    /**
     * 导出条件，查询数据
     */
    private function getPostDate($table){

        $where = ['delete' => 0]; //查询条件

        $whereTwo = ['a.delete' => 0]; //查询条件

        $res = isset($_SESSION['search']['_arrayTrim'])?$_SESSION['search']['_arrayTrim']:'';
     
        $ret = [];

        $order = ' id asc ';

        switch ($table) {

            case 'Nav':

                if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controller'] && $_SESSION['search']['_controller'] == 'Nav'){
                
                    if(isset($res['nav_title']) && $res['nav_title'])$where['title'] = ['like','%'.$res['nav_title'].'%'];

                    if(isset($res['nav_url']) && $res['nav_url'] )$where['url'] = $res['nav_url'];

                    if(isset($res['nav_status']))$where['status'] = $res['nav_status'];

                    if(isset($res['start_time']) && isset($res['end_time']) && $res['start_time'] && $res['end_time']){

                        $date = [$res['start_time'],$res['end_time']];

                        $where['createtime'] = ['between',$date];
                    }
                }

                $order = ' sort asc ';

                $ret = $this->_SqlModel->getAllData($table,$order,'*',$where);

                # code...
                break;

            case 'Menu':

                if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controller'] && $_SESSION['search']['_controller'] == 'Menu'){

                   if(isset($res['title']) && $res['title'])$where['title'] = ['like','%'.$res['title'].'%'];

                    if(isset($res['controller_action']) && $res['controller_action'] )$where['url'] = $res['controller_action'];

                    if(isset($res['status']) )$where['status'] = $res['status'];

                    if(isset($res['start_time']) && isset($res['end_time']) && $res['start_time'] && $res['end_time']){

                        $date = [$res['start_time'],$res['end_time']];

                        $where['createtime'] = ['between',$date];
                    }
                }

                $order = ' sort asc ';

                $ret = $this->_SqlModel->getAllData($table,$order,'*',$where);
                # code...
                break;

            case 'Role':

                if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controller'] && $_SESSION['search']['_controller'] == 'Role'){

                        if(isset($res['name']) && $res['name'])$where['name'] = ['like','%'.$res['name'].'%'];

                        if(isset($res['status']) )$where['status'] = $res['status'];
                     
                }
                
                $ret = $this->_SqlModel->getAllData($table,$order,'*',$where);
                # code...
                break;

            case 'Power':

                if(isset($_SESSION['search']['_controllerUrl']) && $_SESSION['search']['_controller'] && $_SESSION['search']['_controller'] == 'Power'){

                         if(isset($res['name']) && $res['name']) $where['name'] = $whereTwo['b.name'] = ['like','%'.$res['name'].'%'];

                        if(isset($res['status']) )$where['status'] = $whereTwo['a.status']  = $res['status'];

                        if(isset($res['role_id']) )$where['role_id'] = $whereTwo['a.role_id']  = $res['role_id'];
                        
                }

                $order = ' a.id asc ';

                $join = [
                    ['box_role b',' a.role_id = b.id '],
                ];
                
                $ret = $this->_SqlModel->getAllData('power',$order,'*',$whereTwo,' a.id ',$join);

                # code...
                break;
            
            default:
                # code...
                break;
        }
        

       
        
        $title = [];

        $return = [];

        foreach ($ret[0] as $key => $value) {

                 $title[] = $key;
            # code...
        }

        $return['title'][0] = $title;

        $return['res'][0] = $ret;

        $return['name'] = $table;

        return $return;
        
    }

    /**
     * [export description]
     * @param  [type] $title [标题]
     * @param  [type] $arr   [数据数组]
     * @param  [type] $sheet [工作表]
     * @param  array  $index [键值]
     * @return [type]        [description]
     */
    public function export($title,$arr,$sheet=[],$index=[],$text=""){

        Vendor("PHPExcel.PHPExcel");//引入phpexcel类(注意你自己的路径)  
        Vendor("PHPExcel.PHPExcel.IOFactory");
        Vendor("PHPExcel.Worksheet.Drawing");
        Vendor("PHPExcel.Writer.Excel2007");
        $objPHPExcel = new \PHPExcel();
        
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);
    
        $objActSheet = $objPHPExcel->getActiveSheet();

        $charactors = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z','AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN', 'AO', 'AP', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AV', 'AW', 'AX', 'AY', 'AZ','BA', 'BB', 'BC', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BK', 'BL', 'BM', 'BN', 'BO', 'BP', 'BQ', 'BR', 'BS', 'BT', 'BU', 'BV', 'BW', 'BX', 'BY', 'BZ'];

        if(count($sheet) == 0){
                    

                foreach ($title[0] as $ke => $val) {


                    $objActSheet->setCellValue($charactors[$ke].'1', $val);

                }


                if(isset($index[0]) && count($index[0]) != 0 && is_array($index[0]) ){

                    foreach ($arr[0] as $ke => $val) {

                        $i = $ke + 2;

                        foreach ($index[0] as $k => $v) {


                            $objActSheet->setCellValue($charactors[$k].$i, $val[$v]);  

                        }
                        # code...
                    }


                }else{
                     
                    foreach ($arr[0] as $ke => $val) {

                        $i = $ke + 2;

                        foreach ($val as $k => $v) {

                            $objActSheet->setCellValue($charactors[$k].$i, $v);  

                        }
                        # code...
                    }
                }


        }else{  

            
            foreach ($sheet as $key => $value) {
       
                $msgWorkSheet = new \PHPExcel_Worksheet($objPHPExcel, $value); //创建一个工作表

                $objPHPExcel->addSheet($msgWorkSheet); //插入工作表

                $objPHPExcel->setActiveSheetIndex($key+1); //切换到新创建的工作表

                $currentSheet = $objPHPExcel->getActiveSheet(); // 获取当前活动sheet  
                 // var_dump($title);die;
                foreach ($title[$key] as $ke => $val) {

                    $currentSheet->setCellValue($charactors[$ke].'1', $val);

               }

                if(isset($index[$key]) && count($index[$key]) != 0 && is_array($index[$key]) ){

                    foreach ($arr[$key] as $ke => $val) {

                        $i = $ke + 2;

                        foreach ($index[$key] as $k => $v) {


                            $currentSheet->setCellValue($charactors[$k].$i, $val[$v]);  

                        }
                        # code...
                    }


                }else{

                    foreach ($arr[$key] as $ke => $val) {

                        $i = $ke + 2;

                        foreach ($val as $k => $v) {

                            $currentSheet->setCellValue($charactors[$k].$i, $v);  

                        }
                        # code...
                    }
                }
      
            }

             
        }
        

        // var_dump(1);die;


     

        $fileName = $text;
        $date = date("Y-m-d",time());
        $fileName .= ".xls";
        $fileName = iconv("utf-8", "gb2312", $fileName);
        //重命名表
        // $objPHPExcel->getActiveSheet()->setTitle('test');
        //设置活动单指数到第一个表,所以Excel打开这是第一个表
        $objPHPExcel->setActiveSheetIndex(0);
        header('Content-Type: application/vnd.ms-excel');
        header("Content-Disposition: attachment;filename=\"$fileName\"");
        header('Cache-Control: max-age=0');
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $savePath = ROOT_PATH . 'public' . DS . 'execl'. DS .$fileName;

        $objWriter->save($savePath); //文件通过浏览器下载
        // $objWriter->save('php://output'); //文件通过浏览器下载


    }
}