<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>��������ϵͳ</title>
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
<!-- �в���ʼ -->
<div class="wrapper">
    <!-- �Ҳ����忪ʼ -->
    <div class="page-content">
        <div class="content">
            <!-- �Ҳ����ݿ�ܣ����Ĵ����￪ʼ -->
            <form class="layui-form" action="" method="post" id="oilcard">
                <div class="layui-form-item">
                    <label for="L_oilcardid" class="layui-form-label">
                        <span class="x-red">*</span>�Ϳ�ID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_oilcardid" name="oilcardid"  value="${requestScope.oilcard.oilcardid}"
                               lay-verify="required" readonly="readonly"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>Ψһ�ı��
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_balance" class="layui-form-label">
                        <span class="x-red">*</span>���
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_balance" name="balance" required="" lay-verify="required"
                               value="${requestScope.oilcard.balance}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_hierarchy" class="layui-form-label">
                        <span class="x-red">*</span>������
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_hierarchy" name="hierarchy" required="" lay-verify="required"
                               value="${requestScope.oilcard.hierarchy}" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        ��0/1��
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_carid" class="layui-form-label">
                        <span class="x-red">*</span>����ID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_carid" name="carid" required="" lay-verify="required"
                               value="${requestScope.oilcard.carid}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                    </label>
                    <div  class="layui-btn" onclick="sub()">
                        ȷ�ϲ�����
                    </div>
                </div>
            </form>
            <!-- �Ҳ����ݿ�ܣ����Ĵ�������� -->
        </div>
    </div>
    <!-- �Ҳ�������� -->
</div>
<!-- �в����� -->
<script>
    //�ٶ�ͳ�ƿ�ȥ��
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
            url:"/updateoilcardbyoilcardid",
            data:$("#oilcard").serializeArray(),
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
</script>
</body>
</html>