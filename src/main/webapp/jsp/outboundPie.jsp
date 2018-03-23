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
    <script type="text/javascript" src="../static/js/echarts.common.min.js" charset="UTF-8"></script>


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
    </div>    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <blockquote class="layui-elem-quote" style="text-align: center">
                出车时间分布饼状图：将一天按4小时的跨度平均分成6个时间段统计出车次数与占比
            </blockquote>
            <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
            <div id="main" style="width: 100%;height:400px;"></div>
            <blockquote class="layui-elem-quote" style="text-align: center">
                鼠标浮在图上可查看具体的数字
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
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'),'echarts-for-x-admin');
    // 指定图表的配置项和数据
    // 指定图表的配置项和数据
    option = {
        title : {
            text: '驾驶员年龄分布',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['0-4点','4-8点','8-12点','12-16点','16-20点','20-24点']
        },
        series : [
            {
                name: '访问来源',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[
                    {value:${requestScope.jsonArray.get(0)}, name:'0-4点'},
                    {value:${requestScope.jsonArray.get(1)}, name:'4-8点'},
                    {value:${requestScope.jsonArray.get(2)}, name:'8-12点'},
                    {value:${requestScope.jsonArray.get(3)}, name:'12-16点'},
                    {value:${requestScope.jsonArray.get(4)}, name:'16-20点'},
                    {value:${requestScope.jsonArray.get(5)}, name:'20-24点'}
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

    <%--option = {--%>
        <%--backgroundColor: '#2c343c',--%>

        <%--title: {--%>
            <%--text: '出车时间',--%>
            <%--left: 'center',--%>
            <%--top: 20,--%>
            <%--textStyle: {--%>
                <%--color: '#ccc'--%>
            <%--}--%>
        <%--},--%>

        <%--tooltip : {--%>
            <%--trigger: 'item',--%>
            <%--formatter: "{a} <br/>{b} : {c} ({d}%)"--%>
        <%--},--%>
        <%--visualMap: {--%>
            <%--show: false,--%>
            <%--min: 80,--%>
            <%--max: 600,--%>
            <%--inRange: {--%>
                <%--colorLightness: [0, 1]--%>
            <%--}--%>
        <%--},--%>
        <%--series : [--%>
            <%--{--%>
                <%--name:'时间段',--%>
                <%--type:'pie',--%>
                <%--radius : '55%',--%>
                <%--center: ['50%', '50%'],--%>
                <%--data:[--%>
                    <%--{value:${requestScope.jsonArray.get(0)}, name:'0-4点'},--%>
                    <%--{value:${requestScope.jsonArray.get(1)}, name:'4-8点'},--%>
                    <%--{value:${requestScope.jsonArray.get(2)}, name:'8-12点'},--%>
                    <%--{value:${requestScope.jsonArray.get(3)}, name:'12-16点'},--%>
                    <%--{value:${requestScope.jsonArray.get(4)}, name:'16-20点'},--%>
                    <%--{value:${requestScope.jsonArray.get(5)}, name:'20-24点'}--%>
                <%--],--%>
                <%--roseType: 'angle',--%>
                <%--label: {--%>
                    <%--normal: {--%>
                        <%--textStyle: {--%>
                            <%--color: 'rgba(255, 255, 255, 0.3)'--%>
                        <%--}--%>
                    <%--}--%>
                <%--},--%>
                <%--labelLine: {--%>
                    <%--normal: {--%>
                        <%--lineStyle: {--%>
                            <%--color: 'rgba(255, 255, 255, 0.3)'--%>
                        <%--},--%>
                        <%--smooth: 0.2,--%>
                        <%--length: 10,--%>
                        <%--length2: 20--%>
                    <%--}--%>
                <%--},--%>
                <%--itemStyle: {--%>
                    <%--normal: {--%>
                        <%--color: '#c21e2c',--%>
                        <%--shadowBlur: 200,--%>
                        <%--shadowColor: 'rgba(0, 0, 0, 0.5)'--%>
                    <%--}--%>
                <%--}--%>
            <%--}--%>
        <%--]--%>
    <%--};--%>
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

</body>
</html>