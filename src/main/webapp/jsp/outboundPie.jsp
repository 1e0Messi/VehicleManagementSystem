<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>��������ϵͳ</title>
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
    <div class="logo"><a href="#">��������ϵͳ V1.1</a></div>
    <div class="open-nav"><i class="iconfont">&#xe699;</i></div>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;"><%= session.getAttribute("name")%></a>
            <dl class="layui-nav-child"> <!-- �����˵� -->
                <dd><a href="/logout">�л��ʺ�</a></dd>
                <dd><a href="/logout">�˳�</a></dd>
            </dl>
        </li>
    </ul>
</div>
<!-- �������� -->
<!-- �в���ʼ -->

<div class="wrapper">
    <!-- ���˵���ʼ -->
    <div class="left-nav">
        <div id="side-nav">
            <ul id="nav">
                <li class="list" current>
                    <a href="/superAdministrator">
                        <i class="iconfont">&#xe761;</i>
                        ��ӭҳ��
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                </li>
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        ��Ա����
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/allFrontAdmin">
                                <i class="iconfont">&#xe6a7;</i>
                                ��Ա�б�
                            </a>
                        </li>
                        <li>
                            <a href="/adminQuery">
                                <i class="iconfont">&#xe6a7;</i>
                                ��Ա��ѯ
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" current>
                    <a href="javascript:;" name="switch" class="open">
                        <i class="iconfont">&#xe6a3;</i>
                        ϵͳͳ��
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu opened">
                        <li>
                            <a href="/countaccident">
                                <i class="iconfont">&#xe6a7;</i>
                                Υ���¹�ͳ��
                            </a>
                        </li>
                        <li>
                            <a href="./outBound">
                                <i class="iconfont">&#xe6a7;</i>
                                ����ʱ��ͳ��
                            </a>
                        </li>
                        <li>
                            <a href="/DriverAge">
                                <i class="iconfont">&#xe6a7;</i>
                                ��ʻԱ����ͳ��
                            </a>
                        </li>
                        <li>
                            <a href="/feeCount">
                                <i class="iconfont">&#xe6a7;</i>
                                ��������ͳ��
                            </a>
                        </li>
                        <li>
                            <a href="/IncomeCount">
                                <i class="iconfont">&#xe6a7;</i>
                                ����֧��ͳ��
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>    <!-- ���˵����� -->
    <!-- �Ҳ����忪ʼ -->
    <div class="page-content">
        <div class="content">
            <!-- �Ҳ����ݿ�ܣ����Ĵ����￪ʼ -->
            <blockquote class="layui-elem-quote" style="text-align: center">
                ����ʱ��ֲ���״ͼ����һ�찴4Сʱ�Ŀ��ƽ���ֳ�6��ʱ���ͳ�Ƴ���������ռ��
            </blockquote>
            <!-- Ϊ ECharts ׼��һ���߱���С����ߣ��� DOM -->
            <div id="main" style="width: 100%;height:400px;"></div>
            <blockquote class="layui-elem-quote" style="text-align: center">
                ��긡��ͼ�Ͽɲ鿴���������
            </blockquote>
            <!-- �Ҳ����ݿ�ܣ����Ĵ�������� -->
        </div>
    </div>
    <!-- �Ҳ�������� -->
</div>
<!-- �в����� -->
<!-- �ײ���ʼ -->
<div class="footer">
    <div class="copyright">Copyright �0�82018 ��������ϵͳ. ����̨ϵͳ��TEAM4�ṩ����֧��</div>
</div>
<!-- �ײ����� -->
<!-- �����л���ʼ -->
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
            <div class="swiper-slide"><span class="reset">��ʼ��</span></div>
        </div>
    </div>
    <div class="bg-out"></div>
    <div id="changer-set"><i class="iconfont">&#xe696;</i></div>
</div>
<!-- �����л����� -->


<script type="text/javascript">
    // ����׼���õ�dom����ʼ��echartsʵ��
    var myChart = echarts.init(document.getElementById('main'),'echarts-for-x-admin');
    // ָ��ͼ��������������
    // ָ��ͼ��������������
    option = {
        title : {
            text: '��ʻԱ����ֲ�',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['0-4��','4-8��','8-12��','12-16��','16-20��','20-24��']
        },
        series : [
            {
                name: '������Դ',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[
                    {value:${requestScope.jsonArray.get(0)}, name:'0-4��'},
                    {value:${requestScope.jsonArray.get(1)}, name:'4-8��'},
                    {value:${requestScope.jsonArray.get(2)}, name:'8-12��'},
                    {value:${requestScope.jsonArray.get(3)}, name:'12-16��'},
                    {value:${requestScope.jsonArray.get(4)}, name:'16-20��'},
                    {value:${requestScope.jsonArray.get(5)}, name:'20-24��'}
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
            <%--text: '����ʱ��',--%>
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
                <%--name:'ʱ���',--%>
                <%--type:'pie',--%>
                <%--radius : '55%',--%>
                <%--center: ['50%', '50%'],--%>
                <%--data:[--%>
                    <%--{value:${requestScope.jsonArray.get(0)}, name:'0-4��'},--%>
                    <%--{value:${requestScope.jsonArray.get(1)}, name:'4-8��'},--%>
                    <%--{value:${requestScope.jsonArray.get(2)}, name:'8-12��'},--%>
                    <%--{value:${requestScope.jsonArray.get(3)}, name:'12-16��'},--%>
                    <%--{value:${requestScope.jsonArray.get(4)}, name:'16-20��'},--%>
                    <%--{value:${requestScope.jsonArray.get(5)}, name:'20-24��'}--%>
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
    // ʹ�ø�ָ�����������������ʾͼ��
    myChart.setOption(option);
</script>

</body>
</html>