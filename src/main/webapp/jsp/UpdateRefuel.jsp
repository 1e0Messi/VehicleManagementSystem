<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>��������ϵͳ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../static/css/font.css">
    <link rel="stylesheet" href="../static/css/xadmin.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="../static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../static/js/xadmin.js"></script>


</head>
<body>
<!-- �в���ʼ -->
<div class="wrapper">
    <!-- �Ҳ����忪ʼ -->
    <div class="page-content">
        <div class="content">
            <!-- �Ҳ����ݿ�ܣ����Ĵ����￪ʼ -->
            <form class="layui-form" action="" method="post" id="refuels">
                <div class="layui-form-item">
                    <label for="L_id" class="layui-form-label">
                        <span class="x-red">*</span>���
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_id" name="id" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.refuel.id}" readonly="readonly">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_time" class="layui-form-label">
                        <span class="x-red">*</span>ʱ��
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_time" name="time" required="" lay-verify="required" value="${requestScope.refuel.time}"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_carid" class="layui-form-label">
                        <span class="x-red">*</span>���ƺ�
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_carid" name="carid" required="" lay-verify="required" value="${requestScope.refuel.carid}"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_oilcardid" class="layui-form-label">
                        <span class="x-red">*</span>�Ϳ����
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_oilcardid" name="oilcardid" required="" lay-verify="required" value="${requestScope.refuel.oilcardid}"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_money" class="layui-form-label">
                        <span class="x-red">*</span>����
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_money" name="money" required="" lay-verify="required"  value="${requestScope.refuel.money}"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-form-item">
                        <label for="L_id" class="layui-form-label">
                        </label>
                        <div class="layui-btn" onclick="sub()">
                            ȷ��
                        </div>
                    </div>
                </div>
            </form>

            <!-- �Ҳ����ݿ�ܣ����Ĵ�������� -->
        </div>
    </div>
    <!-- �Ҳ�������� -->
</div>
<script>
    function sub(){
        $.ajax({
            method:"POST",
            url:"/updateResult",
            data:$("#refuels").serializeArray(),
            success:function(){
                layer.msg('���³ɹ�!',{icon:1,time:1000});
                setTimeout("closePage()",1500);
            },
            error:function(){
                layer.msg('����ʧ��!',{icon:1,time:1000});
            }
        });
    }
    function closePage() {
        parent.location.reload();
        x_admin_close();
    }
    layui.use(['laydate'], function(){
        laydate = layui.laydate;//���ڲ��
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
<!-- �в����� -->
</body>
</html>