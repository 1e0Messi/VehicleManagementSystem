<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
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
    <script type="text/javascript" src="../static/js/echarts.js" charset="UTF-8"></script>



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
                    </ul>
                </li>
            </ul>
        </div>
    </div>   <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <blockquote class="layui-elem-quote">
                ..................................................车辆开销统计图：超精确全方位地展现了今年各月的车辆开支...................................................................................
            </blockquote>
            <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
            <div id="main" style="width: 100%;height:650px;"></div>
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



<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'),'echarts-for-x-admin');

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '折线图堆叠'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data:['修车','洗车','保养','维护']
        },
        grid: {
            left: '3%',
            right: '4%',
            top: '45%',
            containLabel: true
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月']
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                name:'修车',
                type:'line',
                stack: '总量',
                data:[${requestScope.jsonArray1.get(0)},${requestScope.jsonArray1.get(1)},${requestScope.jsonArray1.get(2)},${requestScope.jsonArray1.get(3)},${requestScope.jsonArray1.get(4)},${requestScope.jsonArray1.get(5)},${requestScope.jsonArray1.get(6)},${requestScope.jsonArray1.get(7)},${requestScope.jsonArray1.get(8)},${requestScope.jsonArray1.get(9)},${requestScope.jsonArray1.get(10)},${requestScope.jsonArray1.get(11)}]
            },
            {
                name:'洗车',
                type:'line',
                stack: '总量',
                data:[${requestScope.jsonArray3.get(0)},${requestScope.jsonArray3.get(1)},${requestScope.jsonArray3.get(2)},${requestScope.jsonArray3.get(3)},${requestScope.jsonArray3.get(4)},${requestScope.jsonArray3.get(5)},${requestScope.jsonArray3.get(6)},${requestScope.jsonArray3.get(7)},${requestScope.jsonArray3.get(8)},${requestScope.jsonArray3.get(9)},${requestScope.jsonArray3.get(10)},${requestScope.jsonArray3.get(11)}]
            },
            {
                name:'保养',
                type:'line',
                stack: '总量',
                data:[${requestScope.jsonArray2.get(0)},${requestScope.jsonArray2.get(1)},${requestScope.jsonArray2.get(2)},${requestScope.jsonArray2.get(3)},${requestScope.jsonArray2.get(4)},${requestScope.jsonArray2.get(5)},${requestScope.jsonArray2.get(6)},${requestScope.jsonArray2.get(7)},${requestScope.jsonArray2.get(8)},${requestScope.jsonArray2.get(9)},${requestScope.jsonArray2.get(10)},${requestScope.jsonArray2.get(11)}]
            },
            {
                name:'维护',
                type:'line',
                stack: '总量',
                data:[${requestScope.jsonArray.get(0)},${requestScope.jsonArray.get(1)},${requestScope.jsonArray.get(2)},${requestScope.jsonArray.get(3)},${requestScope.jsonArray.get(4)},${requestScope.jsonArray.get(5)}, ${requestScope.jsonArray.get(6)},${requestScope.jsonArray.get(7)},${requestScope.jsonArray.get(8)},${requestScope.jsonArray.get(9)},${requestScope.jsonArray.get(10)},${requestScope.jsonArray.get(11)}]
            },
            {
                id: 'pie',
                type:'pie',
                radius: '30%',
                center: ['50%', '25%'],
                label: {
                    formatter: '{b}: {@[' + 0 + ']} ({d}%)'
                },
                data:[{value:${requestScope.jsonArray1.get(0)},name:"修车"},{value:${requestScope.jsonArray3.get(0)},name:"洗车"},{value:${requestScope.jsonArray2.get(0)},name:"保养"},{value:${requestScope.jsonArray.get(0)},name:"维护"}]
            }
        ]
    };
    myChart.on('updateAxisPointer', function (event) {
        var xAxisInfo = event.axesInfo[0];
        if (xAxisInfo) {
            var dimension = xAxisInfo.value;
            myChart.setOption({
                series: {
                    id: 'pie',
                    label: {
                        formatter: '{b}: {@[' + dimension + ']} ({d}%)'
                    },
                    data:[{value:option.series[0].data[dimension],name:"修车"},{value:option.series[1].data[dimension],name:"洗车"},{value:option.series[2].data[dimension],name:"保养"},{value:option.series[3].data[dimension],name:"维护"}]
                }
            });
        }
    });
    myChart.setOption(option);
</script>
</body>
</html>