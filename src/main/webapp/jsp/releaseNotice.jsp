<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 缑元彪
  Date: 2018/3/24
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                    <a href="/superAdministrator">
                        <i class="iconfont">&#xe761;</i>
                        欢迎页面
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                </li>
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        人员管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
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
                <li class="list" current>
                    <a href="javascript:;" name="switch" class="open">
                        <i class="iconfont">&#xe70b;</i>
                        公告管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu opened">
                        <li>
                            <a href="/Notice">
                                <i class="iconfont">&#xe6a7;</i>
                                公告列表
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
                        <li>
                            <a href="./outBound">
                                <i class="iconfont">&#xe6a7;</i>
                                出车时间统计
                            </a>
                        </li>
                        <li>
                            <a href="/DriverAge">
                                <i class="iconfont">&#xe6a7;</i>
                                驾驶员年龄统计
                            </a>
                        </li>
                        <li>
                            <a href="/feeCount">
                                <i class="iconfont">&#xe6a7;</i>
                                车辆费用统计
                            </a>
                        </li>
                        <li>
                            <a href="/IncomeCount">
                                <i class="iconfont">&#xe6a7;</i>
                                收入支出统计
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
            <form class="layui-form xbs">
                <div class="layui-form-pane" style="text-align: center;">
                    <div class="layui-form-item" style="display: inline-block;">
                        <label class="layui-form-label xbs768">公告</label>
                        <div class="layui-input-inline">
                            <input type="text" id="title"  placeholder="标题" class="layui-input">
                        </div>
                        <div class="layui-input-inline xbs768">
                            <input class="layui-input" placeholder="开始日" id="LAY_demorange_s">
                        </div>
                        <div class="layui-input-inline xbs768">
                            <input class="layui-input" placeholder="截止日" id="LAY_demorange_e">
                        </div>
                        <div class="layui-input-inline" style="width:80px;" align="center">
                            <div class="layui-btn" onclick="sub()">发布</div>
                        </div>
                    </div>
                    <div class="layui-input-block">
                        <textarea placeholder="内容" id="context" class="layui-textarea"></textarea>
                    </div>
                </div>
            </form>
            <br/>
            <xblock><button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button><span class="x-right" style="line-height:40px">共有数据：${requestScope.notice.size()} 条</span></xblock>
            <table class="layui-table">
                <thead>
                <tr>
                    <th>
                        <input type="checkbox" name = "selectAllNotice" onclick="selectAllNotice()">
                    </th>
                    <th>
                        标题
                    </th>
                    <th>
                        开始时间
                    </th>
                    <th>
                        结束时间
                    </th>
                    <th>
                        内容
                    </th>
                    <th>
                        发布人ID
                    </th>
                    <th>
                        状态
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.notice}" var="notice">
                <tr>
                    <td>
                        <input type="checkbox" value="${notice.id}" name="noticeItem">
                    </td>
                    <td>
                            ${notice.title}
                    </td>
                    <td>
                            ${notice.startTime}
                    </td>
                    <td >
                            ${notice.endTime}
                    </td>
                    <td >
                            ${notice.context}
                    </td>
                    <td>
                            ${notice.adminID}
                    </td>
                    <td class="td-status">
                        <c:set var="nowDate">
                            <fmt:formatDate value="<%=new Date()%>" pattern="yyyy-MM-dd " type="date"/>
                        </c:set>
                        <c:set var="endTime">
                            <fmt:parseDate value="${notice.endTime}" var="yearMonth" pattern="yyyy-MM-dd"/>
                            <fmt:formatDate value="${yearMonth}" pattern="yyyy-MM-dd " type="date"/>
                        </c:set>
                        <c:choose>
                            <c:when test="${endTime <= nowDate}"><span class="layui-btn layui-btn-disabled layui-btn-mini">已过期</span></c:when>
                            <c:otherwise><span class="layui-btn layui-btn-normal layui-btn-mini">发布中</span></c:otherwise>
                        </c:choose>
                    </td>
                    <td class="td-manage">
                        <a title="删除" href="javascript:;" onclick="member_del(this,'${notice.id}')"
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
    <div class="copyright">Copyright ©2018 车辆管理系统. 本后台系统由TEAM4提供技术支持</div>
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
<script>

    function selectAllNotice() {
        $("input[name = 'noticeItem']:checkbox").prop("checked",$("input[name = 'selectAllNotice']:checkbox").prop("checked"));
    }

    function sub() {
        var title = $("#title").val();
        var startTime = $("#LAY_demorange_s").val();
        var endTime = $("#LAY_demorange_e").val();
        var context = $("#context").val();

        if(title == "" || startTime == "" || endTime == "" || context == ""){
            layer.msg("输入项不能为空！",{icon:1,time:1000});
        }else {
            $.post("/releaseNotice",{
                title:title,
                startTime:startTime,
                endTime:endTime,
                context:context
            },function () {
                layer.msg('发布成功!',{icon:1,time:1000});
                $("#title").val("");
                $("#LAY_demorange_s").val("");
                $("#LAY_demorange_e").val("");
               $("#context").val("");
                setTimeout("window.location.reload()",1000);
            });
        }
    }

    layui.use(['laydate'], function(){
        laydate = layui.laydate;//日期插件

        var start = {
            min: '2000-00-00 00:00:00'
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                end.min = datas; //开始日选好后，重置结束日的最小日期
            }
        };

        var end = {
            min: '2000-00-00 00:00:00'
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };

        document.getElementById('LAY_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        }
        document.getElementById('LAY_demorange_e').onclick = function(){
            end.elem = this
            laydate(end);
        }

    });

    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            var noticeItems = new Array();
            $("input[name = 'noticeItem']:checkbox:checked").each(function (index,element) {
                noticeItems[index] = $(element).val();
            });
            $.post("/batchDelNotice",{noticeItems:JSON.stringify(noticeItems)},function (data) {
                if(data.toString() == "success"){
                    $("input[name = 'noticeItem']:checkbox:checked").each(function (index,element) {
                        $(element).parents("tr").remove();
                    });
                    layer.msg('已删除!',{icon:1,time:1000});
                    setTimeout("window.location.reload()",1000);
                }else
                    layer.msg('删除失败!',{icon:1,time:1000});
            });
        });
    }
    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $.post("/deleteNotice",{id:id},function () {
                $(obj).parents("tr").remove();
                layer.msg('已删除!',{icon:1,time:1000});
                setTimeout("window.location.reload()",1000);
            });
        });
    }
</script>
</body>
</html>