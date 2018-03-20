<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/14 0014
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>按编号查找驾驶员</title>
</head>
<body>

<table>
<c:forEach   items="${requestScope.alloilcard}" var="T">
    <tr>
        <td>${T.oilcardid}</td>
        <td>${T.carid}</td>
        <td>${T.hierarchy}</td>
        <td>${T.balance}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>车辆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
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
                <li class="list" current>
                    <a href="#">
                        <i class="iconfont">&#xe761;</i>
                        欢迎页面
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                </li>
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        车辆信息管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/Enter">
                                <i class="iconfont">&#xe6a7;</i>
                                车辆信息列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        收入管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/GetAllIncomeItem">
                                <i class="iconfont">&#xe6a7;</i>
                                收入列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        事故/违章管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/AllAccident">
                                <i class="iconfont">&#xe6a7;</i>
                                事故/违章列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        相关费用管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/AllFee">
                                <i class="iconfont">&#xe6a7;</i>
                                相关费用列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" current>
                    <a href="javascript:;" name="switch" class="open">
                        <i class="iconfont">&#xe70b;</i>
                        油卡管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu opened">
                        <li>
                            <a href="/viewalloilcard">
                                <i class="iconfont">&#xe6a7;</i>
                                油卡列表
                            </a>
                        </li>
                        <li>
                            <a href="/searchoilcard">
                                <i class="iconfont">&#xe6a7;</i>
                                查找油卡
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe6a3;</i>
                        驾驶员管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/viewalldriver">
                                <i class="iconfont">&#xe6a7;</i>
                                驾驶员列表
                            </a>
                        </li>
                        <li>
                            <a href="/searchdriver">
                                <i class="iconfont">&#xe6a7;</i>
                                查找驾驶员
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe6a3;</i>
                        出车管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu" style="display:none">
                        <li>
                            <a href="./viewalloutbound">
                                <i class="iconfont">&#xe6a7;</i>
                                出车记录
                            </a>
                        </li>
                        <li>
                            <a href="./searchoutbound">
                                <i class="iconfont">&#xe6a7;</i>
                                检索记录
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
            <form class="layui-form xbs" action="/selectoilcard" method="post">
                <div class="layui-form-pane" style="text-align: center;">
                    <div class="layui-form-item" style="display: inline-block;">
                        <div class="layui-input-inline xbs768">
                            <input class="layui-input" name="carid" placeholder="车辆ID" >
                        </div>
                        <div class="layui-input-inline xbs768">
                            <input class="layui-input" name="oilcardid" placeholder="油卡ID" >
                        </div>
                        <div class="layui-input-inline" style="width:80px">
                            <input class="layui-btn" type="submit" ></input>
                        </div>
                    </div>
                </div>
            </form>
            <xblock><button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button>
                <button class="layui-btn" onclick="member_add('添加油卡','/jsp/addoilcard.jsp','600','500')"><i class="layui-icon">&#xe608;</i>添加</button><span class="x-right" style="line-height:40px" id="recording">共有记录：${requestScope.oilcard.size()}条</span></xblock>
            <table class="layui-table">
                <thead>
                <tr>
                    <th>
                        <input type="checkbox" name="selectallbutton" value="selectallbuton" onclick="selectAllbutton()">
                    </th>
                    <th>
                        油卡ID
                    </th>
                    <th>
                        余额
                    </th>
                    <th>
                        主1/副0卡
                    </th>
                    <th>
                        车辆ID
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.oilcard}" var="T">
                    <tr>
                        <td>
                            <input type="checkbox" value="${T.oilcardid}" name="simplebutton">
                        </td>
                        <td>
                                ${T.oilcardid}
                        </td>
                        <td>
                                ${T.balance}
                        </td>
                        <td >
                                ${T.hierarchy}
                        </td>
                        <td >
                                ${T.carid}
                        </td>
                        <td class="td-manage">
                            <a title="编辑" href="javascript:;" onclick="member_edit('编辑','/updateoilcard?oilcardid=${T.oilcardid}','4','','510')"
                               class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a title="删除" onclick="member_del(this,${T.oilcardid})"
                               style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved. 本后台系统由X前端框架提供前端技术支持</div>
</div>
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
</body>
<script>
    <%--var len = ${requestScope.oilcard};--%>
    <%--document.getElementById("recording").innerHTML="共有记录:"+len.size+"条";--%>
    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            var simplebuttons = new Array();
            $("input[name='simplebutton']:checkbox:checked").each(function (index,element){
                simplebuttons[index] = $(element).val();
            });
            $.post("/delalloilcard",{simplebuttons:JSON.stringify(simplebuttons)},function(data){
                if (data.toString()=="success"){
                    $("input[name='simplebutton']:checkbox:checked").each(function(index,element){
                        $(element).parents("tr").remove();
                    });
                    layer.msg("已删除");
                }else
                    layer.msg("删除失败");
            })

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
    /*用户-删除*/
    function member_del(obj,oilcardid){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $.post("/deloilcardsearch",{oilcardid:oilcardid},function (data) {
                $(obj).parents("tr").remove();
                layer.msg('已删除!',{icon:1,time:1000});
            });
        });
    }
</script>
<script>

    function selectAllbutton(){
        $("input[name = 'simplebutton']:checkbox").prop("checked",$("input[name = 'selectallbutton']:checkbox").prop("checked"));
    }


</script>

</html>