<%--
  Created by IntelliJ IDEA.
  User: cjy
  Date: 2018/3/16
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html> <html lang="en">
<head>
    <meta charset="UTF-8">
    <title>车辆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" / -->
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

                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        车辆信息管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/Enter">
                                <i class="iconfont">&#xe6a7;</i>
                                车辆信息列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        收入管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/GetAllIncomeItem">
                                <i class="iconfont">&#xe6a7;</i>
                                收入列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        事故/违章管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/AllAccident">
                                <i class="iconfont">&#xe6a7;</i>
                                事故/违章列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list">
                    <a href="javascript:;" name="switch">
                        <i class="iconfont">&#xe70b;</i>
                        相关费用管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/AllFee">
                                <i class="iconfont">&#xe6a7;</i>
                                相关费用列表
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


            <form class="layui-form xbs" action="/findFeeById" >
                <div class="layui-form-pane" style="text-align: center;">
                    <div class="layui-form-item" style="display: inline-block;">
                        <label class="layui-form-label">搜索框</label>
                        <div class="layui-input-inline">
                            <input type="text" name="feeid"  placeholder="请输入要查询的费用id" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width:80px">
                            <button class="layui-btn"   lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </div>
                </div>
            </form>

            <xblock><button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button><button class="layui-btn" onclick="member_add('添加费用信息','/AddFee','600','500')"><i class="layui-icon">&#xe608;</i>添加</button><span class="x-right" style="line-height:40px">共有数据：88 条</span></xblock>
            <table class="layui-table">
                <thead>
                <tr>
                    <th>
                        <input type="checkbox"  onclick="selectAllFee()" name = "selectAllFee">
                    </th>
                    <th>
                        费用编号
                    </th>
                    <th>
                        时间
                    </th>
                    <th>
                        车辆编号
                    </th>
                    <th>
                        类型
                    </th>
                    <th>
                        金额
                    </th>
                    <th>
                        申请人编号
                    </th>
                    <th>
                        批准人编号
                    </th>
                    <th>
                        备注
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var = "fee" items = "${requestScope.fee}">
                <tr>
                    <td>
                        <input type="checkbox" value="${fee.feeid}" name="feeItem">
                    </td>
                    <td>
                    ${fee.feeid}
                    </td>
                    <td>
                    ${fee.time}
                    </td>
                    <td >
                    ${fee.carid}
                    </td>
                    <td >
                    ${fee.type}
                    </td>
                    <td >
                    ${fee.cost}
                    </td>
                    <td >
                    ${fee.applicantid}
                    </td>
                    <td>
                    ${fee.approverid}
                    </td>
                    <td>
                    ${fee.text}
                    </td>
                    <td class="td-manage">
                        <a title="编辑" href="javascript:;" onclick="member_edit('编辑','/UpdateFeeInput?feeid=${fee.feeid}','4','','510')"
                           class="ml-5" style="text-decoration:none">
                            <i class="layui-icon">&#xe642;</i>
                        </a>
                        <a title="删除" href="javascript:;" onclick="member_del(this,'${fee.feeid}')"
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
    <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved. 本后台系统由X前端框架提供前端技术支持</div>
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
            var feeItems = new Array();
            $("input[name = 'feeItem']:checkbox:checked").each(function (index,element) {
               feeItems[index] = $(element).val();
            });
            $.post("/batchDelFee",{feeItems:JSON.stringify(feeItems)},function (data) {
                if(data.toString() == "success"){
                    $("input[name = 'feeItem']:checkbox:checked").each(function (index,element) {
                        $(element).parents("tr").remove();
                    });
                    layer.msg("已删除!");
                }else
                    layer.msg("删除失败!");
            });
        });
    }
    /*用户-添加*/
    function member_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }

    function member_search(title,url){
        x_admin_show(title,url);
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
    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $.post("/DeleteFee",{feeid:id},function (data) {
                if(data == "1"){
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                }else {
                    layer.msg('删除失败!',{icon:1,time:1000});
                }
            });

        });
    }

    function selectAllFee(){
        $("input[name = 'feeItem']:checkbox").prop("checked",$("input[name = 'selectAllFee']:checkbox").prop("checked"));
    }
</script>
<script>
    //百度统计可去掉
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>
