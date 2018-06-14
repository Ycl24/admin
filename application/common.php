<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
// 应用公共文件
define('PATH_NAME','/');
define('PUBLIC_FILE','/public/upload/file/');
define('PUBLIC_IMAGES','/public/upload/images/');
define('PUBLIC_UNLINKFILE','/public/upload/unlinkfile/');
// define('DB_NAME','/');


//中文截取
function msubstr($str, $start=0, $length, $charset="utf-8", $suffix=true)  
    {  
  if(function_exists("mb_substr")){  
              if($suffix)  
              return mb_substr($str, $start, $length, $charset)."...";  
              else
                   return mb_substr($str, $start, $length, $charset);  
         }  
         elseif(function_exists('iconv_substr')) {  
             if($suffix)  
                  return iconv_substr($str,$start,$length,$charset)."...";  
             else
                  return iconv_substr($str,$start,$length,$charset);  
         }  
         $re['utf-8']   = "/[x01-x7f]|[xc2-xdf][x80-xbf]|[xe0-xef]
                  [x80-xbf]{2}|[xf0-xff][x80-xbf]{3}/";  
         $re['gb2312'] = "/[x01-x7f]|[xb0-xf7][xa0-xfe]/";  
         $re['gbk']    = "/[x01-x7f]|[x81-xfe][x40-xfe]/";  
         $re['big5']   = "/[x01-x7f]|[x81-xfe]([x40-x7e]|xa1-xfe])/";  
         preg_match_all($re[$charset], $str, $match);  
         $slice = join("",array_slice($match[0], $start, $length));  
         if($suffix) return $slice."…";  
         return $slice;
}

//生成url
//
function BuildUrl($str){
    
    $url = 'http://'.$_SERVER["SERVER_NAME"].\think\Url::build('/');

        $aa = trim($url,'/');

        $arr = explode('/',$aa);

        foreach ($arr as $key => $value) {
            
            if(strpos($value,'.php')){

                unset($arr[$key]);

            }
        }

        $url = implode('/',$arr).$str; //前台页面
    return $url;
}
//判断是否是手机
//判断是否是手机
function isMobile()  
{   
    // 如果有HTTP_X_WAP_PROFILE则一定是移动设备  
    if (isset ($_SERVER['HTTP_X_WAP_PROFILE']))  
    {  
        return true;  
    }   
    // 如果via信息含有wap则一定是移动设备,部分服务商会屏蔽该信息  
    if (isset ($_SERVER['HTTP_VIA']))  
    {   
        // 找不到为flase,否则为true  
        return stristr($_SERVER['HTTP_VIA'], "wap") ? true : false;  
    }   
    // 脑残法，判断手机发送的客户端标志,兼容性有待提高  
    if (isset ($_SERVER['HTTP_USER_AGENT']))  
    {  
        $clientkeywords = array ('nokia',  
            'sony',  
            'ericsson',  
            'mot',  
            'samsung',  
            'htc',  
            'sgh',  
            'lg',  
            'sharp',  
            'sie-',  
            'philips',  
            'panasonic',  
            'alcatel',  
            'lenovo',  
            'iphone',  
            'ipod',  
            'blackberry',  
            'meizu',  
            'android',  
            'netfront',  
            'symbian',  
            'ucweb',  
            'windowsce',  
            'palm',  
            'operamini',  
            'operamobi',  
            'openwave',  
            'nexusone',  
            'cldc',  
            'midp',  
            'wap',  
            'mobile'  
            );   
        // 从HTTP_USER_AGENT中查找手机浏览器的关键字  
        if (preg_match("/(" . implode('|', $clientkeywords) . ")/i", strtolower($_SERVER['HTTP_USER_AGENT'])))  
        {  
            return true;  
        }   
    }   
    // 协议法，因为有可能不准确，放到最后判断  
    if (isset ($_SERVER['HTTP_ACCEPT']))  
    {   
        // 如果只支持wml并且不支持html那一定是移动设备  
        // 如果支持wml和html但是wml在html之前则是移动设备  
        if ((strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false) && (strpos($_SERVER['HTTP_ACCEPT'], 'text/html') === false || (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'text/html'))))  
        {  
            return true;  
        }   
    }   
    return false;  
}   


/**
   * [verificationAjax 验证ajax]
   * @return [type] [description]
   */
  function verificationAjax($data){

    if(isset($data['author']) && $data['author'] == 'Ycl_24'){

      return true;

    }
   

    return false;
  }

 /**
   * [arrayTrim 表单接受数据处理]
   * @param  [type] $arr [description]
   * @return [type]      [description]
   */
  function arrayTrim($arr,$array=array()){

      foreach ($arr as $key => $value) {
          
          if(is_array($value)){

            $array[$key] = $this->arrayTrim($value);

          }else{

            $val = trim($value);

            $array[$key] = htmlspecialchars_decode($val); 
              
          }
          
      }

      return $array;

  }


  /**
   * [arrayTrim 表单接受数据处理 不为空的数据]
   * @param  [type] $arr [description]
   * @return [type]      [description]
   */
  function arrayTrimNull($arr,$array=array()){

      foreach ($arr as $key => $value) {
          
          if(is_array($value)){

            $array[$key] = $this->arrayTrim($value);

          }else{

            $val = trim($value);

            if($val){

               $array[$key] = htmlspecialchars_decode($val); 

            }
            
              
          }
          
      }

      return $array;

  }


     /**
   * [returnArr ajax sql操作是否通过]
   * @param  [type] $data [description]
   * @return [type]       [description]
   */
  function returnArr($data,$popup=0,$errorUrl='',$success='操作成功!',$error="操作失败!"){

    $return = ['popup' => $popup];

    if($data){

      $return['status'] = 1;

      $return['info'] = $success;

      $return['res'] = $data;

    }else{

      $return['status'] = 0;

      $return['info'] = $error;

    }

    if($errorUrl){

      $return['url'] = $errorUrl;

    }

    return $return;

  }



/**
     * [format_excel2array 读取excel]
     * @param  string  $filePath [文件路径]
     * @param  integer $sheet    [description]
     * @return [type]            [description]
     */
  function format_excel2array($filePath='',$sheet=0){
      
    import("Org.Util.PHPExcel");
        if(empty($filePath) or !file_exists($filePath)){return ;}
        $PHPReader = new \PHPExcel_Reader_Excel2007();        //建立reader对象
        if(!$PHPReader->canRead($filePath)){
                $PHPReader = new \PHPExcel_Reader_Excel5();
                if(!$PHPReader->canRead($filePath)){
                        echo 'no Excel';
                        return ;
                }
        }
        $PHPExcel = $PHPReader->load($filePath);        //建立excel对象
        $currentSheet = $PHPExcel->getSheet($sheet);        //**读取excel文件中的指定工作表*/
        $allColumn = $currentSheet->getHighestColumn();        //**取得最大的列号*/
        $allRow = $currentSheet->getHighestRow();        //**取得一共有多少行*/
        $data = array();
        for($rowIndex=1;$rowIndex<=$allRow;$rowIndex++){        //循环读取每个单元格的内容。注意行从1开始，列从A开始
                for($colIndex='A';$colIndex<=$allColumn;$colIndex++){
                        $addr = $colIndex.$rowIndex;
                        $cell = $currentSheet->getCell($addr)->getValue();
                        if($cell instanceof PHPExcel_RichText){ //富文本转换字符串
                                $cell = $cell->__toString();
                        }
                        $data[$rowIndex][$colIndex] = $cell;
                }
        }
        return $data;
    }




     /**
     * [selectSort 下拉分类]
     * @param  [type]  $arr      [description]
     * @param  integer $parentid [description]
     * @return [type]            [description]
     */
     function selectSort($arr,$id,$field='children'){

      $list=array();

      $field_name =  $field;

      $str = '';

      foreach($arr as $key => $v){

        if($v['parent_id'] == 0){

                $str .= '</optgroup><optgroup label="分组名称:'.$v['name'].'">';

        }

        if($id == $v['id']){

             $str .= '<option value="'.$v['value'].'" disabled="disabled">'.$v['name'].'</option>';

        }else{

             $str .= '<option value="'.$v['value'].'" >'.$v['name'].'</option>';

        }   
       

        if(is_array($v[$field_name])){

            $tmp = selectSort($v[$field_name],$id,$field_name);

            if($tmp){

                $str .= $tmp;
            }else{
                $str .= '';
            }

        }

       
        
      }

      return $str;
    }


    
    /**
     * [arraySort 无限极分类函数]
     * @param  [type]  $arr      [description]
     * @param  integer $parentid [description]
     * @return [type]            [description]
     */
    function arraySort($arr,$field='id',$parentid=0,$children='children',$val_arr=[],$type = 1){

      $list=array();

      $field_name =  $field;

      foreach($arr as $key => $v){

        if($v['parent_id']==$parentid){

            $tmp = arraySort($arr,$field_name,$v[$field_name],$children,$val_arr,$type);

            if($tmp){

                $v[$children] = $tmp;

            }else{

                $v[$children] = '';

            }

            $v['checked'] = false;
            
            if(is_array($val_arr) && count($val_arr)){

                foreach ($val_arr as $ke => $val) {

                  if($v[$field_name] == $val){

                    $v['checked'] = true;

                    break;
                  }
                  # code...
                }
            }

             $list[]=$v;
        }
       
        
      }

      return $list;
    }


 /**
     * [encryption 信息加密]
     * @return [type] [description]
     */
   function encryption($val,$type="accounts"){

        $res = base64_encode('Ycl_24:'.$type.base64_encode($val));

        return $res;
    }

    /**
     * [encryption 信息解密]
     * @return [type] [description]
     */
   function undoEncryption($val,$type="accounts"){

        $res = base64_decode($val);

        $arr = explode($type, $res);

        $return = base64_decode($arr[1]);

        return $return;
    }