<?php   
namespace app\admin\model;  
use think\Model;  
use think\Db;  //加载Db数据库
class UploadModel extends Model{ 

	/**
	 * [upload 上传文件]
	 * @return [type] [上传类型  type = 'images' ]
	 */
	public function uploadFile($type = 'file'){

		
		$file = $_FILES['file'];  //上传文件file

        $totalPieces = $_POST['totalPieces'];  //上传文件切片总数

        $index = $_POST['index'];  //上传文件当前切片

        $progress = round(($index/$totalPieces),2)*100;

        if($index == ($totalPieces - 1)){

            $progress = 100;  //进度条
        }
        
        $filename_arr = explode('.', $file['name']);  //获取上传文件名称

        $ext = end($filename_arr);

        $date = date("Ymd");

        if($type == 'images'){

        	$type_arr = ['gif','jpeg','png','bmp','jpg'];

        	if(!in_array($ext,$type_arr)){

        		$return = [
                    'info' => '上传失败,图片格式为gif|jpeg|png|bmp|jpg!',
                    'code'      => 1,
                    'error' =>$file['error'],
                    ];


                return $return;

        	}

		}else{

			$type = 'file';

		}

        $savePathName = md5($date.$file['name']).'.'.$ext;  //上传文件名称加密

        $path = ROOT_PATH . 'public' . DS . 'upload'. DS .$type. DS .$date; // 根目录下的 public/upload/images/当前日期

        $savePath = ROOT_PATH . 'public' . DS . 'upload'. DS .$type. DS .$date. DS .$savePathName;

        $tolink = "/public/upload/".$type."/".$date.'/'.$savePathName;  //返回根目录下的图片名称

        if (!file_exists($path)){
            mkdir($path); 
        }

        $return = [
                    'info' => '上传失败!',
                    'tolink' =>  $tolink,
                    'imgid' => $savePathName,
                    'code'      => 1,
                    'error' =>$file['error'],
                    ];
        if($file['error']==0){
            if(!file_exists($savePath)){
                if(move_uploaded_file($file['tmp_name'],$savePath)){
                    $return = [
                            'info' => '上传成功!',
                            'tolink' =>  $tolink,
                            'imgid' => $savePathName,
                            'code'      => 0,
                            'progress' => $progress,
                    ];
                }
            }else{
                $content=file_get_contents($file['tmp_name']);
                if (file_put_contents($savePath, $content,FILE_APPEND)) {
                   $return = [
                            'info' => '上传成功!',
                            'tolink' =>  $tolink,
                            'imgid' => $savePathName,
                            'code'      => 0,
                            'progress' => $progress,
                    ];
                }
            }
        }

        return $return;
	}
}