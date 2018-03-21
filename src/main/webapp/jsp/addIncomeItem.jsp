
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>车辆管理系统</title>
    <link rel="stylesheet" href="../static/css/font.css">
    <link rel="stylesheet" href="../static/css/xadmin.css">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
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
            <form class="layui-form" action="/submitIncomeForm" method="post">
                <div class="layui-form-item">
                    <label for="L_email" class="layui-form-label">
                        <span class="x-red">*</span>收入条例ID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_email" name="id"
                        autocomplete="off" class="layui-input" >
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>不能与原有数据相同
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="time" class="layui-form-label">
                        <span class="x-red">*</span>时间
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="time" name="time" required="" lay-verify="nikename"
                        autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label">
                        <span class="x-red">*</span>车牌号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_pass" name="carID" required="" lay-verify="pass"
                        autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        6到16个字符
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label">
                        <span class="x-red">*</span>金额
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="amount" name="amount" required="" lay-verify="pass"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        6到16个字符
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                        <span class="x-red">*</span>报账人
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_repass" name="applicantID" required="" lay-verify="repass"
                        autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                    </label>
                    <button  class="layui-btn" lay-filter="add" lay-submit="" >
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