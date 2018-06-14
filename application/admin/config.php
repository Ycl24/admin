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
	        	'_PLUGINS_'=>PATH_NAME.'public/static/comm/layer',
	        	'_DATAS_'=>PATH_NAME.'public/static/admin/datas',
	        	'_Layui_'=>PATH_NAME.'public/static/layui',
	        	'_UPLOAD_'=>PATH_NAME.'public/static/upload',
	        	'_LOGIN_'=>PATH_NAME.'public/static/admin/login',
    	],
    	'database'   =>  [
		   // 数据库类型   
		    'type'        => 'mysql',   
		    // 服务器地址     
		    'hostname'    => '127.0.0.1',   
		     // 数据库名     
		    'database'    => 'box',   
		     // 数据库用户名    
		    'username'    => 'root',   
		      // 数据库密码    
		    'password'    => 'root',    
		    // 数据库连接端口    
		    'hostport'    => '',    
		    // 数据库连接参数    
		    'params'      => [],     
		    // 数据库编码默认采用utf8    
		    'charset'     => 'utf8',    
		    // 数据库表前缀    
		    'prefix'      => 'box_',    
		    // 数据库调试模式    
		    'debug'       => false,
		],
		 // 默认控制器名
    'default_controller'     => 'Extend',
    // 默认操作名
    'default_action'         => 'index',
];