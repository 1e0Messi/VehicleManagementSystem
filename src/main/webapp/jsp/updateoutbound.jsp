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
            <form class="layui-form" action="" method="post" id="outbound">
                <div class="layui-form-item">
                    <label for="L_id" class="layui-form-label">
                        <span class="x-red">*</span>序号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_id" name="id"  value="${requestScope.outbound.id}"
                               lay-verify="required" readonly="readonly"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>唯一的序号
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_time" class="layui-form-label">
                        <span class="x-red">*</span>时间
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_time" name="time" required="" lay-verify="required"
                               value="${requestScope.outbound.time}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_staff_ID" class="layui-form-label">
                        <span class="x-red">*</span>驾驶员ID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_staff_ID" name="staff_ID" required="" lay-verify="required"
                               value="${requestScope.outbound.staff_ID}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_state" class="layui-form-label">
                        <span class="x-red">*</span>状态
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_state" name="state" required="" lay-verify="required"
                               value="${requestScope.outbound.state}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_carid" class="layui-form-label">
                        <span class="x-red">*</span>车辆ID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_carid" name="carid" required="" lay-verify="required"
                               value="${requestScope.outbound.carid}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_outboundkmiles" class="layui-form-label">
                        <span class="x-red">*</span>出车时里程
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_outboundkmiles" name="outboundkmiles" required="" lay-verify="required"
                               value="${requestScope.outbound.outboundkmiles}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_inboundkmiles" class="layui-form-label">
                        <span class="x-red">*</span>回车时里程
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_inboundkmiles" name="inboundkmiles" required="" lay-verify="required"
                               value="${requestScope.outbound.inboundkmiles}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                    </label>
                    <div  class="layui-btn" onclick="sub()">
                        确认并更新
                    </div>
                </div>
            </form>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 中部结束 -->
<script>
    //百度统计可去掉
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();

    function sub(){
        $.ajax({
            method:"POST",
            url:"/updateoutboundbyid",
            data:$("#outbound").serializeArray(),
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

    layui.use(['laydate'], function(){
        laydate = layui.laydate;//日期插件
        var options = {
            min: '2000-01-01 00:00:00'
            ,max: '2099-12-31 23:59:59'
            ,format: 'YYYY-MM-DD hh:mm:ss'
            ,istime: true
        };
        document.getElementById('L_time').onclick = function(){
            options.elem = this;
            laydate(options);
        }
    });
</script>
</body>
</html>