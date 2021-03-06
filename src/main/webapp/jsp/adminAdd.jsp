<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>车辆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" >
    <link rel="stylesheet" href="../static/css/font.css">
    <link rel="stylesheet" href="../static/css/xadmin.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="../static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../static/js/xadmin.js"></script>
</head>
<body>
<!-- 中部开始 -->
<div class="wrapper">
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <form class="layui-form" id = "adminData">
                <div class="layui-form-item">
                    <label for="id" class="layui-form-label">
                        <span class="x-red">*</span>工号ID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="id" name="id" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>将会成为您唯一的登入名
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        <span class="x-red">*</span>姓名
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_username" name="name" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_gender" class="layui-form-label">
                        性别
                    </label>
                    <div class="layui-input-inline" id = "L_gender">
                        <input type="radio" name="gender" value="男" title="男" checked>
                        <input type="radio" name="gender" value="女" title="女">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_phone" class="layui-form-label">
                        <span class="x-red">*</span>电话
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_phone" name="tel" required="" lay-verify="phone"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_email" class="layui-form-label">
                        <span class="x-red">*</span>邮箱
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_email" name="email" required="" lay-verify="email"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_identity" class="layui-form-label">
                        <span class="x-red">*</span>证件号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_identity" name="id_card" required="" lay-verify="identity"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_address" class="layui-form-label">
                        <span class="x-red">*</span>地址
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_address" name="address" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="L_date" class="layui-form-label">
                        <span class="x-red">*</span>日期
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_date" name="date" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label">
                        <span class="x-red">*</span>密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_pass" name="password" required="" lay-verify="pass"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        1到20个字符
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_authority" class="layui-form-label">
                        权限级别
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_authority" name="authority" class="layui-input" readonly="readonly" value="1">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                    </label>
                    <div  class="layui-btn" onclick="sub()">
                        确认
                    </div>
                </div>
            </form>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 中部结束 -->
<script type="text/javascript">
    layui.use(['laydate'], function(){
        laydate = layui.laydate;//日期插件
        var options = {
            min: '2000-01-01 00:00:00'
            ,max: '2099-12-31 23:59:59'
            //,format: 'YYYY-MM-DD hh:mm:ss'
            //,istime: true
        };
        document.getElementById('L_date').onclick = function(){
            options.elem = this;
            laydate(options);
        }
    });
function sub() {
    $.ajax({
            method:"POST",
            url:"/adminAdd",
            data: $("#adminData").serializeArray(),
            success:function (data) {
                layer.msg('添加成功!',{icon:1,time:1000});
                setTimeout("closePage()",1500);
            },
            error:function(){
                layer.msg('添加失败!',{icon:1,time:1000});
            }
        }
    );
}
function closePage() {
    parent.location.reload();
    x_admin_close();
}
</script>
</body>
</html>