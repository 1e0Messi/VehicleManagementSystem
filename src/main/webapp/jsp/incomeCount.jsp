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
    <script src="../static/js/echarts.js" charset="UTF-8"></script>
    <script src="../static/js/echarts.common.min.js" charset="UTF-8"></script>
    <script src="../static/js/echarts-for-x-admin.js" charset="UTF-8"></script>
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
                                出车状态统计
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
    </div>   <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <blockquote class="layui-elem-quote" style="text-align: center">
                 下图展示了本公司今年各月收入支出情况，纵坐标为月份横坐标为收入(元)。
            </blockquote>
            <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
            <div id="main" style="width: 100%;height:400px;"></div>
            <blockquote class="layui-elem-quote" style="text-align: center">
                 单击双向柱状图上方的收入支出方块可以单独查看收入或支出情况
            </blockquote>
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

    var myChart = echarts.init(document.getElementById('main'));

    option = {
        tooltip : {
            trigger: 'axis',
            axisPointer : {
                type : 'shadow'
            },
            // formatter: function (params, ticket, callback) {
            //     console.log(params)
            //     var res = params[0].name ;
            //     for (var i = 0, l = params.length; i < l; i++) {
            //         res += '<br/>' + params[i].seriesName + ' : ' + Math.abs(params[i].value) ;
            //     }
            //     setTimeout(function () {
            //         // 仅为了模拟异步回调
            //         callback(ticket, res);
            //     },100)
            //     return 'loading...';
            // }
        },
        legend: {
            data:[ '收入', '支出']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                axisLabel : { formatter: function (value){return Math.abs(value);//显示的数值都取绝对值
                    }
                },
                type : 'value'
            }
        ],
        yAxis : [
            {
                type : 'category',
                axisTick : {show: false},

                data : ['一月', '二月', '三月', '四月', '五月', '六月', '七月','八月','九月','十月','十一月','十二月']
            }
        ],
        series : [
            {
                name:'收入',
                type:'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: true,
                        position: 'right',

                    }
                },

                data:[
                    {value: ${requestScope.jsonArray.get(0)}},
                    {value: ${requestScope.jsonArray.get(1)}},
                    {value: ${requestScope.jsonArray.get(2)}},
                    {value: ${requestScope.jsonArray.get(3)}},
                    {value: ${requestScope.jsonArray.get(4)}},
                    {value: ${requestScope.jsonArray.get(5)}},
                    {value: ${requestScope.jsonArray.get(6)}},
                    {value: ${requestScope.jsonArray.get(7)}},
                    {value: ${requestScope.jsonArray.get(8)}},
                    {value: ${requestScope.jsonArray.get(9)}},
                    {value: ${requestScope.jsonArray.get(10)}},
                    {value: ${requestScope.jsonArray.get(11)}}
                ]
            },
            {
                name:'支出',
                type:'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: true,
                        position: 'left',
                    }
                },

                data:[
                    {value: -${requestScope.jsonArray.get(12)}},
                    {value: -${requestScope.jsonArray.get(13)}},
                    {value: -${requestScope.jsonArray.get(14)}},
                    {value: -${requestScope.jsonArray.get(15)}},
                    {value: -${requestScope.jsonArray.get(16)}},
                    {value: -${requestScope.jsonArray.get(17)}},
                    {value: -${requestScope.jsonArray.get(18)}},
                    {value: -${requestScope.jsonArray.get(19)}},
                    {value: -${requestScope.jsonArray.get(20)}},
                    {value: -${requestScope.jsonArray.get(21)}},
                    {value: -${requestScope.jsonArray.get(22)}},
                    {value: -${requestScope.jsonArray.get(23)}}
                ]
            }
        ]
    };
    <%--option = {--%>
        <%--title: {--%>
            <%--text: '交错正负轴标签',--%>
            <%--subtext: 'From ExcelHome',--%>
            <%--sublink: 'http://e.weibo.com/1341556070/AjwF2AgQm'--%>
        <%--},--%>
        <%--tooltip : {--%>
            <%--trigger: 'axis',--%>
            <%--axisPointer : {            // 坐标轴指示器，坐标轴触发有效--%>
                <%--type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'--%>
            <%--}--%>
        <%--},--%>
        <%--toolbox: {--%>
            <%--feature: {--%>
                <%--saveAsImage:{}--%>
            <%--}--%>
        <%--},--%>
        <%--grid: {--%>
            <%--top: 80,--%>
            <%--bottom: 30--%>
        <%--},--%>
        <%--xAxis: {--%>
            <%--type : 'value',--%>
            <%--position: 'top',--%>
            <%--splitLine: {lineStyle:{type:'dashed'}},--%>
        <%--},--%>
        <%--yAxis: {--%>
            <%--type : 'category',--%>
            <%--axisLine: {show: false},--%>
            <%--axisLabel: {show: false},--%>
            <%--axisTick: {show: false},--%>
            <%--splitLine: {show: false},--%>
            <%--data : ['十二月', '十一月', '十月', '九月', '八月', '七月', '六月','五月','四月','三月','二月','一月']--%>
        <%--},--%>
        <%--series : [--%>
            <%--{--%>
                <%--name:'收入',--%>
                <%--type:'bar',--%>
                <%--stack: '总量',--%>
                <%--label: {--%>
                    <%--normal: {--%>
                        <%--show: true,--%>
                        <%--formatter: '{b}'--%>
                    <%--}--%>
                <%--},--%>
                <%--data:[--%>
                    <%--{value: ${requestScope.jsonArray.get(0)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(1)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(2)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(3)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(4)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(5)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(6)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(7)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(8)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(9)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(10)}},--%>
                    <%--{value: ${requestScope.jsonArray.get(11)}},--%>
                <%--],--%>
                <%--name:'支出',--%>
                <%--type:'bar',--%>
                <%--stack: '总量',--%>
                <%--label: {--%>
                    <%--normal: {--%>
                        <%--show: true,--%>
                        <%--formatter: '{b}'--%>
                    <%--}--%>
                <%--},--%>
                <%--data:[--%>
                    <%--{value: -${requestScope.jsonArray.get(12)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(13)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(14)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(15)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(16)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(17)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(18)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(19)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(20)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(21)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(22)}},--%>
                    <%--{value: -${requestScope.jsonArray.get(23)}},--%>
                <%--]--%>
            <%--}--%>
        <%--]--%>
    <%--};--%>

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

</body>
</html>