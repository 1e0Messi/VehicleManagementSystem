<%--
  Created by IntelliJ IDEA.
  User: 缑元彪
  Date: 2018/3/17
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>车辆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
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
            <form class="layui-form" id="adminData">
                <div class="layui-form-item">
                    <label for="L_id" class="layui-form-label">
                        工号ID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_id" name="id" class="layui-input" readonly = "readonly" value="${requestScope.admin.id}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_name" class="layui-form-label">
                        姓名
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_name" name="name" class="layui-input" lay-verify="required" value="${requestScope.admin.name}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_tel" class="layui-form-label">
                        手机
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_tel" name="tel" class="layui-input" lay-verify="phone" value="${requestScope.admin.tel}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_email" class="layui-form-label">
                        邮箱
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_email" name="email" class="layui-input" lay-verify="email" value="${requestScope.admin.email}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_address" class="layui-form-label">
                        地址
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_address" name="address" class="layui-input" lay-verify="required" value="${requestScope.admin.address}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                    </label>
                    <div class="layui-btn" onclick="subAdminEdit()">
                        保存
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
    function subAdminEdit() {
        $.ajax({
                method:"POST",
                url:"/subAdminEdit",
                data: $("#adminData").serializeArray(),
                success:function () {
                    layer.msg('修改成功!',{icon:1,time:1000});
                    setTimeout("closePage()",1500);
                },
                error:function(){
                    layer.msg('修改失败!',{icon:1,time:1000});
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
