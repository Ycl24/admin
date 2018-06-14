<?php 
namespace app\admin\validate;

use think\Validate;

class Verification extends Validate
{   

    
    protected $rule = [
        'nickname' => ['require','length:1,15'],
        'username'  =>  ['require','max'=>255,'min'=>1],
        'pass' => 'require',
        'newpass' => 'require',
        'repass' => 'require|confirm:pass',
        'type'  => 'require',
        'nav_title' => ['require','length:1,15'],
        'nav_url' => 'require',
        'menu_title' => ['require','length:1,15'],
        'id' => 'require',
        'menu_type' => 'require',
        'menu_controller_action' => 'require',
        'role_name' => ['require','length:1,15'],
        'role_id' => 'require',
        'accounts' => ['require','regex:/^[0-9a-zA-Z]{8,30}$/'],
        'password' => ['require','regex:/^(?![a-zA-Z]+$)(?![A-Z0-9]+$)(?![A-Z\W_!@#$%^&*`~()-+=]+$)(?![a-z0-9]+$)(?![a-z\W_!@#$%^&*`~()-+=]+$)(?![0-9\W_!@#$%^&*`~()-+=]+$)[a-zA-Z0-9\W_!@#$%^&*`~()-+=]{8,30}$/'],
        'phone' => ['require','regex:/^1[3|4|5|7|8]\d{9}$/'],
    ];

    protected $message = [
        'nickname.require'  =>  '昵称不能为空','至少得1个字符,最大15个字符',
        'username.require'  =>  '帐号不能为空',
        'pass.require' => '密码不能为空',
        'newpass.require' => '新密码不能为空',
        'repass.confirm' => '两次密码不一致',
        'nav_title.require'  =>  '导航标题不能为空','至少得1个字符,最大15个字符',
        'nav_url.require'  =>  '导航路径不能为空',
        'menu_title.require'  =>  '菜单名称不能为空','至少得1个字符,最大15个字符',
        'menu_type.require'  =>  '请选择菜单类型',
        'menu_controller_action.require'  =>  '菜单路径不能为空',
        'id.require'  =>  '请重新加载页面,id不存在',
        'role_name.require'  =>  '角色名称不能为空','至少得1个字符,最大15个字符',
        'role_id.require'  =>  '请选择角色',
        'accounts.require'  =>  'require','登录账户长度在8到30个数之间,格式为字母和数字',
        'password.require'  =>  'require','密码强度,必须包含数字，大写字母，小写字母，特殊字符四选三',
        'phone.require'  =>  'require','手机必须11位，只能是数字！',

    ];

    protected $scene = [   //添加场景，如果是添加在控制器调用add
        'reg'   =>  ['nickname','username','pass','repass'],//add验证括号里的字段
        'login'  =>  ['username','pass'],
        'case_type'  =>  ['username'],
        'case'  =>  ['username','type'],
        'uppasswd'  =>  ['pass','newpass'],
        'nav'  =>  ['nav_title','nav_url'],
        'menu_add'  =>  ['menu_title','menu_type','menu_controller_action'],
        'menu_edit'  =>  ['menu_title','menu_type','menu_controller_action','id'],
        'role_add'  =>  ['role_name'],
        'role_edit'  =>  ['role_name','id'],
        'power_add'  =>  ['nickname','role_id','accounts','password','phone'],
        'power_edit'  =>  ['nickname','role_id','phone','id'],
    ];
}
 ?>	