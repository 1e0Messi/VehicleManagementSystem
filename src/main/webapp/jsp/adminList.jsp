<%@ page import="com.team4.entity.Admin" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 缑元彪
  Date: 2018/3/14
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>车辆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../static/css/font.css">
    <link rel="stylesheet" href="../static/css/xadmin.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="../static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../static/js/xadmin.js"></script>
</head>
<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo"><a href="#">车辆管理系统 V1.1</a></div>
    <div class="open-nav"><i class="iconfont">&#xe699;</i></div>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;"><%= session.getAttribute("name")%></a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a href="/logout">切换帐号</a></dd>
                <dd><a href="/logout">退出</a></dd>
            </dl>
        </li>
    </ul>
</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<div class="wrapper">
    <!-- 左侧菜单开始 -->
    <div class="left-nav">
        <div id="side-nav">
            <ul id="nav">
                <li class="list">
                    <a href="/superAdministrator">
                        <i class="iconfont">&#xe761;</i>
                        欢迎页面
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                </li>
                <li class="list" current>
                    <a href="javascript:;" name="switch" class="open">
                        <i class="iconfont">&#xe70b;</i>
                        人员管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu opened">
                        <li>
                            <a href="/allFrontAdmin">
                                <i class="iconfont">&#xe6a7;</i>
                                人员列表
                            </a>
                        </li>
                        <li>
                            <a href="/adminQuery">
                                <i class="iconfont">&#xe6a7;</i>
                                人员查询
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe6a3;</i>
                        系统统计
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/countaccident">
                                <i class="iconfont">&#xe6a7;</i>
                                违章事故统计
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <xblock><button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button><button class="layui-btn" onclick="member_add('添加用户','/html/adminAdd.html','600','700')"><i class="layui-icon">&#xe608;</i>添加</button><span class="x-right" style="line-height:40px">共有数据：${requestScope.jsonArray.get(0).length()} 条</span></xblock>
            <table class="layui-table">
                <thead>
                <tr>
                    <th>
                        <input type="checkbox" name = "selectAllAdmin" onclick="selectAllAdmin()">
                    </th>
                    <th>
                        ID
                    </th>
                    <th>
                        姓名
                    </th>
                    <th>
                        性别
                    </th>
                    <th>
                        手机
                    </th>
                    <th>
                        邮箱
                    </th>
                    <th>
                        证件号
                    </th>
                    <th>
                        地址
                    </th>
                    <th>
                        加入时间
                    </th>
                    <th>
                        密码
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                </thead>
                <tbody id="tbody">

                </tbody>
            </table>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
        <div id = "pageNum" align="right" style="bottom:5%;"></div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 中部结束 -->
<!-- 底部开始 -->

<!-- 底部结束 -->
<!-- 背景切换开始 -->
<div class="bg-changer">
    <div class="swiper-container changer-list">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img class="item" src="../static/images/a.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/b.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/c.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/d.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/e.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/f.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/g.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/h.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/i.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/j.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="../static/images/k.jpg" alt=""></div>
            <div class="swiper-slide"><span class="reset">初始化</span></div>
        </div>
    </div>
    <div class="bg-out"></div>
    <div id="changer-set"><i class="iconfont">&#xe696;</i></div>
</div>
<!-- 背景切换结束 -->
<!-- 页面动态效果 -->
<script>
    function tbody(data) {
        var html = "<tr>\n" +
            "<td>\n" +
            "<input type=\"checkbox\" value=\""+ data.id +"\" name=\"adminItem\">\n" +
            "</td>\n" +
            "<td>\n" +
            data.id +"\n" +
            "</td>\n" +
            "<td>\n" +
            data.name +"\n" +
            "</td>\n" +
            "<td >\n" +
            data.gender +"\n" +
            "</td>\n" +
            "<td >\n" +
            data.tel +"\n" +
            "</td>\n" +
            "<td >\n" +
            data.email +"\n" +
            "</td>\n" +
            "<td >\n" +
            data.id_card +"\n" +
            "</td>\n" +
            "<td>\n" +
            data.address +"\n" +
            "</td>\n" +
            "<td>\n" +
            data.date +"\n" +
            "</td>\n" +
            "<td>\n" +
            data.password +"\n" +
            "</td>\n" +
            "<td class=\"td-manage\">\n" +
            "<a title=\"编辑\" href=\"javascript:;\" onclick=\"member_edit('编辑','/adminEdit?id="+ data.id +"','4','500','420')\"\n" +
            "class=\"ml-5\" style=\"text-decoration:none\">\n" +
            "<i class=\"layui-icon\">&#xe642;</i>\n" +
            "</a>\n" +
            "<a style=\"text-decoration:none\"  onclick=\"member_password('修改密码','/passwordEdit?id="+ data.id +"&password="+ data.password +"','10001','500','400')\"\n" +
            " href=\"javascript:;\" title=\"修改密码\">\n" +
            "<i class=\"layui-icon\">&#xe631;</i>\n" +
            "</a>\n" +
            "<a title=\"删除\" href=\"javascript:;\" onclick=\"member_del(this,'"+ data.id +"')\"\n" +
            "style=\"text-decoration:none\">\n" +
            "<i class=\"layui-icon\">&#xe640;</i>\n" +
            "</a>\n" +
            "</td>\n" +
            "</tr>";
        return html;
    }


    layui.use(['laypage'],function () {
        laypage = layui.laypage;

        var admins = ${requestScope.jsonArray.get(0)};
        var length = admins.length;

        var size = 7;
        var pageNum =  length/size;
        
        var render = function (curr) {
            var str = "";
            var last = curr * size - 1;
            last = last >= length ? (length-1) : last;
            for(var i = (curr - 1) * size;i <= last;i++){
                str += tbody(admins[i]);
            }
            return str;
        };
        laypage({
            cont:$("#pageNum"),
            pages:Math.ceil(pageNum),
            skin: '#1E9FFF',
            jump:function (obj,first) {
                $("#tbody").html(render(obj.curr));
            }
        });
    });
    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            var adminItems = new Array();
            $("input[name = 'adminItem']:checkbox:checked").each(function (index,element) {
               adminItems[index] = $(element).val();
            });
            $.post("/batchDelAdmin",{adminItems:JSON.stringify(adminItems)},function (data) {
                if(data.toString() == "success"){
                    $("input[name = 'adminItem']:checkbox:checked").each(function (index,element) {
                        $(element).parents("tr").remove();
                    });
                    layer.msg('已删除!',{icon:1,time:1000});
                    setTimeout("window.location.reload()",1000);
                }else
                    layer.msg('删除失败!',{icon:1,time:1000});
            });
        });
    }

    /*用户-添加*/
    function member_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }

    // 用户-编辑
    function member_edit (title,url,id,w,h) {
        x_admin_show(title,url,w,h);
    }

    /*密码-修改*/
    function member_password(title,url,id,w,h){
        x_admin_show(title,url,w,h);
    }

    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $.post("/delAdmin",{id:id},function (data) {
                    if(data == "1"){
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!',{icon:1,time:1000});
                        setTimeout("window.location.reload()",1000);
                    }else {
                        layer.msg('删除失败!',{icon:1,time:1000});
                    }
            });

        });
    }

    function selectAllAdmin() {
        $("input[name = 'adminItem']:checkbox").prop("checked",$("input[name = 'selectAllAdmin']:checkbox").prop("checked"));
    }

</script>
</body>
</html>