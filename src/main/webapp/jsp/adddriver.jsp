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
            <form class="layui-form" action="" method="post" id="driver">
                <div class="layui-form-item">
                    <label for="L_staff_ID" class="layui-form-label">
                        <span class="x-red">*</span>��ʻԱID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_staff_ID" name="staff_ID" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>Ψһ�ı��
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_staff_name" class="layui-form-label">
                        <span class="x-red">*</span>����
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_staff_name" name="staff_name" lay-verify="required"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_gender" class="layui-form-label">
                        <span class="x-red">*</span>�Ա�
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_gender" name="gender" lay-verify="required"
                               autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_nationality" class="layui-form-label">
                        <span class="x-red">*</span>����
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_nationality" name="nationality" lay-verify="required"
                               autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_birth" class="layui-form-label">
                        <span class="x-red">*</span>����
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_birth" name="birth" lay-verify="required"
                               autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_political_party" class="layui-form-label">
                        <span class="x-red">*</span>������ò
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_political_party" name="political_party" lay-verify="required"
                               autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_family_place" class="layui-form-label">
                        <span class="x-red">*</span>��ͥסַ
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_family_place" name="family_place" lay-verify="required"
                               autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_ID_card" class="layui-form-label">
                        <span class="x-red">*</span>���֤
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_ID_card" name="ID_card" lay-verify="required"
                               autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_badgeID" class="layui-form-label">
                        <span class="x-red">*</span>��ʻ֤����
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_badgeID" name="badgeID" lay-verify="required"
                               autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_home_phone" class="layui-form-label">
                        <span class="x-red">*</span>��ϵ�绰
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_home_phone" name="home_phone" lay-verify="required"
                               autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_post_code" class="layui-form-label">
                        <span class="x-red">*</span>e-mail
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_post_code" name="post_code" lay-verify="required"
                               autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_indate" class="layui-form-label">
                        <span class="x-red">*</span>����
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_indate" name="indate" lay-verify="required"
                               autocomplete="off" class="layui-input" >
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
    function sub(){
        $.ajax({
            method:"POST",
            url:"/insertdriverbystaff_ID",
            data:$("#driver").serializeArray(),
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