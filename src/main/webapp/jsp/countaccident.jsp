<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/20 0020
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <script type="text/javascript" src="../static/js/echarts.js" charset="UTF-8"></script>


    <style type="text/css">
        .clear{
            clear: both;
        }
    </style>

</head>
<body>
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
                            <a href="#">
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
                <li class="list" current>
                    <a href="javascript:;" name="switch" class="open">
                        <i class="iconfont">&#xe6a3;</i>
                        系统统计
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu opened">
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
            <blockquote class="layui-elem-quote" style="text-align: center">
                下列第一张表是统计本公司今年各月车辆违章和事故数
            </blockquote>
            <div id="main1" style="float: left;width: 45%;height:500px;"></div>
            <div id="main2" style="float: right;width: 45%;height:500px;"></div>
            <!-- 右侧内容框架，更改从这里结束 -->
            <div class="clear"></div>
            <blockquote class="layui-elem-quote"  style="text-align: center;">
                第二张表是统计过去5年每年发生违章和事故数量
            </blockquote>
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

<script type="text/javascript">

    var date=new Date;
    var thisyear=date.getFullYear();
    //console.log(typeof (thisyear));
    var arr = ${requestScope.accident};
    var date;
    var violation=new Array();
    var accident=new Array();
    var i;
    var violationcount=new Array();
    var accidentcount = new Array();
    for(i=thisyear;i>thisyear-10;i--) {
        violationcount[i]=0;
        accidentcount[i]=0;
        violation[i] = new Array();
        accident[i] = new Array();
        for (var j = 1; j <= 12; j++) {
            violation[i][j] = 0;
            accident[i][j] = 0;
        }
    }

    var month;
    var year;
    for (i=0;i<arr.length;i++){
        //console.log(arr[i]);
        date=arr[i].time.split("-");
        month=Number(date[1]);
        if (arr[i].type=="违章") {
            violation[Number(date[0])][month]++;
            violationcount[Number(date[0])]++;
        }
        else {
            accident[Number(date[0])][month]++;
            accidentcount[Number(date[0])]++;
        }

    }

    for (year=thisyear;year>thisyear-10;year--){

    }

    var myChart1 = echarts.init(document.getElementById('main1'));
    option1 = {
        title: {
            text: '今年违章事故数',
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        legend: {
            data: ['违章', '事故']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'value',
            boundaryGap: [0, 0.01]
        },
        yAxis: {
            type: 'category',
            data: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月']
        },
        series: [
            {
                name: '违章',
                type: 'bar',
                data: [violation[thisyear][1],violation[thisyear][2],violation[thisyear][3],violation[thisyear][4],violation[thisyear][5],violation[thisyear][6],violation[thisyear][7],violation[thisyear][8],violation[thisyear][9],violation[thisyear][10],violation[thisyear][11],violation[thisyear][12]]
            },
            {
                name: '事故',
                type: 'bar',
                data: [accident[thisyear][1],accident[thisyear][2],accident[thisyear][3],accident[thisyear][4],accident[thisyear][5],accident[thisyear][6],accident[thisyear][7],accident[8],accident[thisyear][9],accident[thisyear][10],accident[thisyear][11],accident[thisyear][12]]
            }
        ]
    };
    myChart1.setOption(option1);

    var myChart2 = echarts.init(document.getElementById('main2'));
    option2 = {
        title: {
            text: '过去5年违章事故数',
            /*subtext: '数据来自事故表'*/
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        legend: {
            data: ['违章', '事故']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'value',
            boundaryGap: [0, 0.01]
        },
        yAxis: {
            type: 'category',
            data: [thisyear.toString(),(thisyear-1).toString(),(thisyear-2).toString(),(thisyear-3).toString(),(thisyear-4).toString(),(thisyear-5).toString()]
        },
        series: [
            {
                name: '违章',
                type: 'bar',
                data: [violationcount[thisyear],violationcount[thisyear-1],violationcount[thisyear-2],violationcount[thisyear-3],violationcount[thisyear-4],violationcount[thisyear-5]]
            },
            {
                name: '事故',
                type: 'bar',
                data: [accidentcount[thisyear],accidentcount[thisyear-1],accidentcount[thisyear-2],accidentcount[thisyear-3],accidentcount[thisyear-4],accidentcount[thisyear-5]]
            }
        ]
    };
    myChart2.setOption(option2);

</script>

</html>