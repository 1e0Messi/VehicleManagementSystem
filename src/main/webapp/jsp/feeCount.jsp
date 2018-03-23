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
    <script type="text/javascript" src="../static/js/echarts.js" charset="UTF-8"></script>



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
                    </ul>
                </li>
            </ul>
        </div>
    </div>   <!-- ���˵����� -->
    <!-- �Ҳ����忪ʼ -->
    <div class="page-content">
        <div class="content">
            <!-- �Ҳ����ݿ�ܣ����Ĵ����￪ʼ -->
            <blockquote class="layui-elem-quote">
                ..................................................��������ͳ��ͼ������ȷȫ��λ��չ���˽�����µĳ�����֧...................................................................................
            </blockquote>
            <!-- Ϊ ECharts ׼��һ���߱���С����ߣ��� DOM -->
            <div id="main" style="width: 100%;height:650px;"></div>
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
    var option = {
        title: {
            text: '����ͼ�ѵ�'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data:['�޳�','ϴ��','����','ά��']
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
            data: ['һ��','����','����','����','����','����','����','����','����','ʮ��','ʮһ��','ʮ����']
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                name:'�޳�',
                type:'line',
                stack: '����',
                data:[${requestScope.jsonArray1.get(0)},${requestScope.jsonArray1.get(1)},${requestScope.jsonArray1.get(2)},${requestScope.jsonArray1.get(3)},${requestScope.jsonArray1.get(4)},${requestScope.jsonArray1.get(5)},${requestScope.jsonArray1.get(6)},${requestScope.jsonArray1.get(7)},${requestScope.jsonArray1.get(8)},${requestScope.jsonArray1.get(9)},${requestScope.jsonArray1.get(10)},${requestScope.jsonArray1.get(11)}]
            },
            {
                name:'ϴ��',
                type:'line',
                stack: '����',
                data:[${requestScope.jsonArray3.get(0)},${requestScope.jsonArray3.get(1)},${requestScope.jsonArray3.get(2)},${requestScope.jsonArray3.get(3)},${requestScope.jsonArray3.get(4)},${requestScope.jsonArray3.get(5)},${requestScope.jsonArray3.get(6)},${requestScope.jsonArray3.get(7)},${requestScope.jsonArray3.get(8)},${requestScope.jsonArray3.get(9)},${requestScope.jsonArray3.get(10)},${requestScope.jsonArray3.get(11)}]
            },
            {
                name:'����',
                type:'line',
                stack: '����',
                data:[${requestScope.jsonArray2.get(0)},${requestScope.jsonArray2.get(1)},${requestScope.jsonArray2.get(2)},${requestScope.jsonArray2.get(3)},${requestScope.jsonArray2.get(4)},${requestScope.jsonArray2.get(5)},${requestScope.jsonArray2.get(6)},${requestScope.jsonArray2.get(7)},${requestScope.jsonArray2.get(8)},${requestScope.jsonArray2.get(9)},${requestScope.jsonArray2.get(10)},${requestScope.jsonArray2.get(11)}]
            },
            {
                name:'ά��',
                type:'line',
                stack: '����',
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
                data:[{value:${requestScope.jsonArray1.get(0)},name:"�޳�"},{value:${requestScope.jsonArray3.get(0)},name:"ϴ��"},{value:${requestScope.jsonArray2.get(0)},name:"����"},{value:${requestScope.jsonArray.get(0)},name:"ά��"}]
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
                    data:[{value:option.series[0].data[dimension],name:"�޳�"},{value:option.series[1].data[dimension],name:"ϴ��"},{value:option.series[2].data[dimension],name:"����"},{value:option.series[3].data[dimension],name:"ά��"}]
                }
            });
        }
    });
    myChart.setOption(option);
</script>
</body>
</html>