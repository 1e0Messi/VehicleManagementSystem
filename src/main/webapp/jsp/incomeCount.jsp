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
    <script src="../static/js/echarts.js" charset="UTF-8"></script>
    <script src="../static/js/echarts.common.min.js" charset="UTF-8"></script>
    <script src="../static/js/echarts-for-x-admin.js" charset="UTF-8"></script>
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
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        �������
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/Notice">
                                <i class="iconfont">&#xe6a7;</i>
                                �����б�
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
                                ����״̬ͳ��
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
    </div>   <!-- ���˵����� -->
    <!-- �Ҳ����忪ʼ -->
    <div class="page-content">
        <div class="content">
            <!-- �Ҳ����ݿ�ܣ����Ĵ����￪ʼ -->
            <blockquote class="layui-elem-quote" style="text-align: center">
                 ��ͼչʾ�˱���˾�����������֧�������������Ϊ�·ݺ�����Ϊ����(Ԫ)��
            </blockquote>
            <!-- Ϊ ECharts ׼��һ���߱���С����ߣ��� DOM -->
            <div id="main" style="width: 100%;height:400px;"></div>
            <blockquote class="layui-elem-quote" style="text-align: center">
                 ����˫����״ͼ�Ϸ�������֧��������Ե����鿴�����֧�����
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
            //         // ��Ϊ��ģ���첽�ص�
            //         callback(ticket, res);
            //     },100)
            //     return 'loading...';
            // }
        },
        legend: {
            data:[ '����', '֧��']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                axisLabel : { formatter: function (value){return Math.abs(value);//��ʾ����ֵ��ȡ����ֵ
                    }
                },
                type : 'value'
            }
        ],
        yAxis : [
            {
                type : 'category',
                axisTick : {show: false},

                data : ['һ��', '����', '����', '����', '����', '����', '����','����','����','ʮ��','ʮһ��','ʮ����']
            }
        ],
        series : [
            {
                name:'����',
                type:'bar',
                stack: '����',
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
                name:'֧��',
                type:'bar',
                stack: '����',
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
            <%--text: '�����������ǩ',--%>
            <%--subtext: 'From ExcelHome',--%>
            <%--sublink: 'http://e.weibo.com/1341556070/AjwF2AgQm'--%>
        <%--},--%>
        <%--tooltip : {--%>
            <%--trigger: 'axis',--%>
            <%--axisPointer : {            // ������ָʾ���������ᴥ����Ч--%>
                <%--type : 'shadow'        // Ĭ��Ϊֱ�ߣ���ѡΪ��'line' | 'shadow'--%>
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
            <%--data : ['ʮ����', 'ʮһ��', 'ʮ��', '����', '����', '����', '����','����','����','����','����','һ��']--%>
        <%--},--%>
        <%--series : [--%>
            <%--{--%>
                <%--name:'����',--%>
                <%--type:'bar',--%>
                <%--stack: '����',--%>
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
                <%--name:'֧��',--%>
                <%--type:'bar',--%>
                <%--stack: '����',--%>
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

    // ʹ�ø�ָ�����������������ʾͼ��
    myChart.setOption(option);
</script>

</body>
</html>