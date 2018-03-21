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
            <form class="layui-form" action="" method="post" id="refuel">
                <div class="layui-form-item">
                    <label for="L_id" class="layui-form-label">
                        <span class="x-red">*</span>编号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_id" name="id" required="" lay-verify="required" value="${requestScope.id}"
                               autocomplete="off" class="layui-input" readonly="readonly">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>唯一的编号
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_carid" class="layui-form-label">
                        <span class="x-red">*</span>车牌号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_carid" name="carid" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_oilcardid" class="layui-form-label">
                        <span class="x-red">*</span>油卡编号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_oilcardid" name="oilcardid" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_money" class="layui-form-label">
                        <span class="x-red">*</span>花费
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_money" name="money" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_time" class="layui-form-label">
                        <span class="x-red">*</span>时间
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_time" name="time" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                    </label>
                    <div class="layui-btn" onclick="sub()">
                        确定
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<script>
    layui.use(['laydate'], function(){
        laydate = layui.laydate;//日期插件
        var options = {
            min: '2000-01-01 00:00:00'
            ,max: '2099-12-31 23:59:59'
        };
        document.getElementById('L_time').onclick = function(){
            options.elem = this;
            laydate(options);
        }
    });
    function sub(){
        $.ajax({
            method:"POST",
            url:"/Insert",
            data:$("#refuel").serializeArray(),
            success:function(){
                layer.msg('添加成功!',{icon:1,time:1000});
                setTimeout("closePage()",1500);
            },
            error:function(){
                layer.msg('添加失败!',{icon:1,time:1000});
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