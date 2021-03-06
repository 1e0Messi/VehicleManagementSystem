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
            <form class="layui-form" action="" method="post" id="driver">
                <div class="layui-form-item">
                    <label for="L_staff_ID" class="layui-form-label">
                        <span class="x-red">*</span>驾驶员ID
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_staff_ID" name="staff_ID"  value="${requestScope.driver.staff_ID}"
                               lay-verify="required" readonly="readonly"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>唯一的编号
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_staff_name" class="layui-form-label">
                        <span class="x-red">*</span>姓名
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_staff_name" name="staff_name" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.staff_name}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_gender" class="layui-form-label">
                        <span class="x-red">*</span>性别
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_gender" name="gender" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.gender}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_nationality" class="layui-form-label">
                        <span class="x-red">*</span>籍贯
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_nationality" name="nationality" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.nationality}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_birth" class="layui-form-label">
                        <span class="x-red">*</span>生日
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_birth" name="birth" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.birth}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_political_party" class="layui-form-label">
                        <span class="x-red">*</span>政治面貌
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_political_party" name="political_party" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.political_party}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_family_place" class="layui-form-label">
                        <span class="x-red">*</span>家庭住址
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_family_place" name="family_place" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.family_place}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_ID_card" class="layui-form-label">
                        <span class="x-red">*</span>身份证
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_ID_card" name="ID_card" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.ID_card}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_badgeID" class="layui-form-label">
                        <span class="x-red">*</span>驾驶证类型
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_badgeID" name="badgeID" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.badgeID}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_home_phone" class="layui-form-label">
                        <span class="x-red">*</span>联系电话
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_home_phone" name="home_phone" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.home_phone}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_post_code" class="layui-form-label">
                        <span class="x-red">*</span>e-mail
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_post_code" name="post_code" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.post_code}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_indate" class="layui-form-label">
                        <span class="x-red">*</span>工龄
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_indate" name="indate" required="" lay-verify="required"
                               autocomplete="off" class="layui-input" value="${requestScope.driver.indate}">
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
            url:"/updatedriverbystaff_ID",
            data:$("#driver").serializeArray(),
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
</body>
</html>