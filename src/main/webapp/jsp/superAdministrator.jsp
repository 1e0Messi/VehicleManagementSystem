<%--
  Created by IntelliJ IDEA.
  User: 缑元彪
  Date: 2018/3/11
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        公告管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
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
            <blockquote class="layui-elem-quote" style="text-align:center;vertical-align:middle">
                <%= session.getAttribute("name")%>,欢迎使用车辆管理系统<span class="f-14">v1.0</span>
            </blockquote>
            <fieldset class="layui-elem-field layui-field-title site-title">
                <legend><a name="default">信息统计</a></legend>
            </fieldset>
            <table class="layui-table">
                <thead>
                <tr>
                    <th>统计</th>
                    <th>管理员</th>
                    <th>驾驶员</th>
                    <th>车辆数</th>
                    <th>总收入</th>
                    <th>总支出</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>总数</td>
                    <td>${requestScope.adminCount}</td>
                    <td>${requestScope.driverCount}</td>
                    <td>${requestScope.vehicleCount}</td>
                    <td>${requestScope.incomeCount}</td>
                    <td>${requestScope.feeCount}</td>
                </tr>
                </tbody>
            </table>
            <br/>
            <br/>
            <table class="layui-table">
                <thead>
                    <tr>
                        <th>统计</th>
                        <th>收入</th>
                        <th>支出</th>
                        <th>利润</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                    <th>本月</th>
                    <td>${requestScope.monthIncome}</td>
                    <td>${requestScope.monthFee}</td>
                    <td>${requestScope.monthProfit}</td>
                </tr>
                <tr>
                    <th>本年</th>
                    <td>${requestScope.yearIncome}</td>
                    <td>${requestScope.yearFee}</td>
                    <td>${requestScope.yearProfit}</td>
                </tr>
                <tr>
                    <th>三年</th>
                    <td>${requestScope.threeYearIncome}</td>
                    <td>${requestScope.threeYearFee}</td>
                    <td>${requestScope.threeYearProfit}</td>
                </tr>
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
</body>
</html>