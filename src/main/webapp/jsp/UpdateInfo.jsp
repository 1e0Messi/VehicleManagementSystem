<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>车辆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
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
            <form class="layui-form" action="" method="post" id="vehicles">
                <div class="layui-form-item">
                    <label for="L_carID" class="layui-form-label">
                        <span class="x-red">*</span>编号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_carID" name="carID" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.vehicle.carID}" readonly="readonly">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_carname" class="layui-form-label">
                        <span class="x-red">*</span>车名
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_carname" name="carname" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.vehicle.carname}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_ctype" class="layui-form-label">
                        <span class="x-red">*</span>车型
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_ctype" name="ctype" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.vehicle.ctype}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_age" class="layui-form-label">
                        <span class="x-red">*</span>车龄
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_age" name="age" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.vehicle.age}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_number" class="layui-form-label">
                        <span class="x-red">*</span>车牌号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_number" name="number" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.vehicle.number}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_AIP" class="layui-form-label">
                        <span class="x-red">*</span>年检期限
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_AIP" name="AIP" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.vehicle.AIP}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_state" class="layui-form-label">
                        <span class="x-red">*</span>状态
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_state" name="state" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.vehicle.state}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_number" class="layui-form-label">
                    </label>
                    <div class="layui-btn" onclick="sub()">
                        确定
                    </div>
                </div>
            </form>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<script>
    function sub(){
        $.ajax({
            method:"POST",
            url:"/UpdateResult",
            data:$("#vehicles").serializeArray(),
            success:function(){
                layer.msg('更新成功!',{icon:1,time:1000});
                setTimeout("closePage()",1500);
            },
            error:function(){
                layer.msg('更新失败!',{icon:1,time:1000});
            }
        });
    }
    function closePage() {
        parent.location.reload();
        x_admin_close();
    }
</script>
<!-- 中部结束 -->
</body>
</html>