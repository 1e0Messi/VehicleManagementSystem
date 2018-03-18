<%--
  Created by IntelliJ IDEA.
  User: 缑元彪
  Date: 2018/3/17
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin1.1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" /-->
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
            <form class="layui-form">
                <div class="layui-form-item">
                    <label for="L_id" class="layui-form-label">
                        工号ID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_id" value="${requestScope.id}" class="layui-input" readonly = "readonly">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_oldpass" class="layui-form-label">
                        <span class="x-red">*</span>旧密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_oldpass" class="layui-input" value="${requestScope.password}" readonly = "readonly">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_newpass" class="layui-form-label">
                        <span class="x-red">*</span>新密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_newpass" name="newpass" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        1到20个字符
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                        <span class="x-red">*</span>确认密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_repass" name="repass" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                    </label>
                    <div  class="layui-btn" onclick="subNewPsw()">
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
    function subNewPsw(){
        var id = $("#L_id").val();
        var oldpass = $("#L_oldpass").val();
        var newpass = $("#L_newpass").val();
        var repass = $("#L_repass").val();

        if(newpass == repass){
            $.post("/passwordModify",{"id":id,"oldpass":oldpass,"newpass":newpass},function () {
                layer.msg("修改成功！",{icon:1,time:1000});
                setTimeout("closePage()",1500);
            });
        }else {
            layer.msg('新密码和确认密码的值不一致',{icon:1,time:1000});
        }
    }
    function closePage() {
        parent.location.reload();
        x_admin_close();
    }
</script>
</body>
</html>
