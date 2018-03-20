<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>车辆管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
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
    <div class="logo"><a href="./index.html">X-ADMIN V1.1</a></div>
    <div class="open-nav"><i class="iconfont">&#xe699;</i></div>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">admin</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a href="">个人信息</a></dd>
                <dd><a href="">切换帐号</a></dd>
                <dd><a href="./login.html">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="/">前台首页</a></li>
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
                    <a href="./index.html">
                        <i class="iconfont">&#xe761;</i>
                        欢迎页面
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                </li>
                <li class="list">
                    <a href="javascript:;">
                        <i class="iconfont">&#xe70b;</i>
                        加油管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu opened">
                        <li class="current">
                            <a href="/AddVehicle">
                                <i class="iconfont">&#xe6a7;</i>
                                添加车辆信息
                            </a>
                        </li>
                        <li>
                            <a href="/Delete">
                                <i class="iconfont">&#xe6a7;</i>
                                删除车辆信息
                            </a>
                        </li>
                        <li>
                            <a href="/Search">
                                <i class="iconfont">&#xe6a7;</i>
                                搜索车辆信息
                            </a>
                        </li>
                        <li>
                            <a href="/UpdateInfo">
                                <i class="iconfont">&#xe6a7;</i>
                                更新车辆信息
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
            <form class="layui-form xbs" action="/SearchRefuel" method="post">
                <div class="layui-form-pane" style="text-align: center;">
                    <div class="layui-form-item" style="display: inline-block;">
                        <div class="layui-input-inline">
                            <input type="text" name="id" placeholder="请输入编号" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline">
                            <input type="text" name="carid" placeholder="请输入车牌号" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline">
                            <input type="text" name="oilcardid" placeholder="请输入油卡号" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width:80px">
                            <input class="layui-btn" type="submit"></input>
                        </div>
                    </div>
                </div>
            </form>
            <xblock><button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button><button class="layui-btn" onclick="member_add('添加车辆信息','/AddRefuel','600','500')"><i class="layui-icon">&#xe608;</i>添加</button><span class="x-right" style="line-height:40px">共有数据：${requestScope.refuels.size()}条</span></xblock>
            <table class="layui-table">
                <thead>
                <tr>
                    <th>
                        <input type="checkbox" name="selectAllCar" value="" onclick="selectAllCar()" >
                    </th>
                    <td>
                        ID
                    </td>
                    <th>
                        车牌号
                    </th>
                    <th>
                        时间
                    </th>
                    <th>
                        油卡编号
                    </th>
                    <th>
                        费用
                    </th>
                    <td>
                        操作
                    </td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="Temp" items="${requestScope.refuels}" varStatus="status">
                    <tr>
                        <td>
                            <input type="checkbox" value="${Temp.id}" name="TempItem" >
                        </td>
                        <td>
                                ${ status.index + 1}
                        </td>
                        <td>
                                ${Temp.carid}
                        </td>
                        <td>
                                ${Temp.time}
                        </td>
                        <td >
                                ${Temp.oilcardid}
                        </td>
                        <td >
                                ${Temp.money}
                        </td>
                        <td class="td-manage">
                            <a title="编辑" href="javascript:;" onclick="member_edit('编辑','/update?id=${Temp.id}','4','','510')"
                               class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a title="删除"  onclick="if(confirm('确认要删除吗？')) { location.href='/delete?id='+${Temp.id}}"
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

<%--<div class="footer" >--%>
<%--<div class="copyright">Copyright ©2018 第四小组 v2.3 All Rights Reserved. 本后台系统由第四小组前端框架提供前端技术支持</div>--%>
<%--</div>--%>
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

    layui.use(['laydate'], function(){
        laydate = layui.laydate;//日期插件

        //以上模块根据需要引入
        //



        var start = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };

        var end = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };

        // document.getElementById('LAY_demorange_s').onclick = function(){
        //     start.elem = this;
        //     laydate(start);
        // }
        // document.getElementById('LAY_demorange_e').onclick = function(){
        //     end.elem = this
        //     laydate(end);
        // }

    });

    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            //捉到所有被选中的，发异步进行删除
            var TempItems=new Array();
            $("input[name='TempItem']:checkbox:checked").each(function (index,element) {
                TempItems[index]=$(element).val();
            });
            $.post("/batchDelete",{TempItems:JSON.stringify(TempItems)},function (data) {
                if(data.toString()=="success"){
                    $("input[name='TempItem']:checkbox:checked").each(function (index,element){
                        $(element).parents("tr").remove();
                    });
                    layer.msg("已删除！");
                }else {
                    layer.msg("删除失败！");
                }
            });
        });
    }
    /*用户-添加*/
    function member_add(carid,carname,number,ctype,age,state,AIP){
        x_admin_show(carid,carname,number,ctype,age,state,AIP);
    }
    /*用户-查看*/
    function member_show(title,url,id,w,h){
        x_admin_show(title,url,w,h);
    }

    /*用户-停用*/
    function member_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            //发异步把用户状态进行更改
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="layui-icon">&#xe62f;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-disabled layui-btn-mini">已停用</span>');
            $(obj).remove();
            layer.msg('已停用!',{icon: 5,time:1000});
        });
    }

    /*用户-启用*/
    function member_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            //发异步把用户状态进行更改
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="layui-icon">&#xe601;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!',{icon: 6,time:1000});
        });
    }
    // 用户-编辑
    function member_edit (title,url,id,w,h) {
        x_admin_show(title,url,w,h);
    }
    /*密码-修改*/
    function member_password(title,url,id,w,h){
        x_admin_show(title,url,w,h);
    }
    // function member_search() {
    //     var id=$("#carID").val();
    //     var name=$("#carName").val();
    //     if(id==""){
    //         if(name=="") {
    //             layer.msg('请确定搜索条件',{icon:1,time:1000});
    //         }else {
    //                 $.ajax({
    //                     method:"POST",
    //                     url:"/findById",
    //                     data:{carname:name},
    //                     success:function(){
    //                         // layer.msg('更新成功!',{icon:1,time:1000});
    //                     },
    //                     error:function(){
    //                         // layer.msg('更新失败!',{icon:1,time:1000});
    //                     }
    //                 })
    //             }
    //         }
    //         else{
    //         $.ajax({
    //             method:"POST",
    //             url:"/findByName",
    //             data:{id:id},
    //             success:function(data){
    //                 // layer.msg('更新成功!',{icon:1,time:1000});
    //                 console.log(data);
    //             },
    //             error:function(){
    //                 // layer.msg('更新失败!',{icon:1,time:1000});
    //             }
    //         })
    //     }
    //     // var url_new="/findById?id="+$("#id").val();
    //     // x_admin_show(title, url_new, w, h);
    // }
    function selectAllCar() {
        $("input[name='TempItem']:checkbox").prop("checked",$("input[name='selectAllCar']:checkbox").prop('checked'));
    }
</script>
<%--$('#xxx').submit();--%>
</body>
</html>