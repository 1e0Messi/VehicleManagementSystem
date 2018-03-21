<%--
  Created by IntelliJ IDEA.
  User: cjy
  Date: 2018/3/16
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html><html lang="en">
<head>
    <meta charset="UTF-8">
    <title>车辆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" /-->
    <link rel="stylesheet" href="../static/css/font.css">
    <link rel="stylesheet" href="../static/css/xadmin.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="../static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../static/js/xadmin.js"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

</head>
<body>
<!-- 中部开始 -->
<div class="wrapper">
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <form  action="/insertFee" class="layui-form">
                <div class="layui-form-item">
                    <label for="feeid" class="layui-form-label">
                        <span class="x-red">*</span>费用编号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="feeid" name="feeid" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="time" class="layui-form-label">
                        <span class="x-red">*</span>时间
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="time" name="time" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="carid" class="layui-form-label">
                        <span class="x-red">*</span>车辆编号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="carid" name="carid" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="type" class="layui-form-label">
                        <span class="x-red">*</span>类型
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="type" name="type" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="cost" class="layui-form-label">
                        <span class="x-red">*</span>金额
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="cost" name="cost" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="applicantid" class="layui-form-label">
                        <span class="x-red">*</span>申请人编号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="applicantid" name="applicantid" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="approverid" class="layui-form-label">
                        <span class="x-red">*</span>批准人编号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="approverid" name="approverid" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="text" class="layui-form-label">
                        <span class="x-red">*</span>备注
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="text" name="text" required="" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">
                    </label>
                    <button  class="layui-btn" lay-filter="add" lay-submit="">
                        增加
                    </button>
                </div>
            </form>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 中部结束 -->
<script>
    layui.use(['laydate'], function(){
        laydate = layui.laydate;//日期插件
        var options = {
            min: '2000-01-01 00:00:00'
            ,max: '2099-12-31 23:59:59'
        };
        document.getElementById('time').onclick = function(){
            options.elem = this;
            laydate(options);
        }
    });
</script>
</body>
</html>
