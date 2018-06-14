<?php
//配置文件
return [
'view_replace_str'       => [
				'_PUBLIC_' => PATH_NAME.'public',
	        	'_CSS_'=>PATH_NAME.'public/static/admin/css',
	        	'_JS_'=>PATH_NAME.'public/static/admin/js',
	        	'_COMM_JS_'=>PATH_NAME.'public/static/comm/js',
	        	'_COMM_'=>PATH_NAME.'public/static/comm',
	        	'_LIB_'=>PATH_NAME.'public/static/admin/lib',
	        	'_IMAGES_'=>PATH_NAME.'public/static/admin/images',
    	],
  //   	'database'   =>  [
		//    // 数据库类型   
		//     'type'        => 'mysql',   
		//     // 服务器地址     
		//     'hostname'    => '127.0.0.1',   
		//      // 数据库名     
		//     'database'    => 'thecollar',   
		//      // 数据库用户名    
		//     'username'    => 'root',   
		//       // 数据库密码    
		//     'password'    => 'root',    
		//     // 数据库连接端口    
		//     'hostport'    => '',    
		//     // 数据库连接参数    
		//     'params'      => [],     
		//     // 数据库编码默认采用utf8    
		//     'charset'     => 'utf8',    
		//     // 数据库表前缀    
		//     'prefix'      => 'tp_',    
		//     // 数据库调试模式    
		//     'debug'       => false,
		// ],
];