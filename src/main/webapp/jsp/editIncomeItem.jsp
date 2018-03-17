<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin1.1</title>
    <link rel="stylesheet" href="../static/css/font.css">
    <link rel="stylesheet" href="../static/css/xadmin.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="../static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../static/js/xadmin.js"></script>
</head>
<body>

    <!-- 中部开始 -->
    <div class="wrapper">
        <!-- 右侧主体开始 -->
        <div class="page-content">
          <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
              <form action="/submitEditIncomeForm" method="post">
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      id
                  </label>
                  <div class="layui-input-inline">
                      <input type="text" id="id" name="id"
                             autocomplete="off" value="113664000@qq.com" class="layui-input" placeholder=>
                  </div>

              </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        时间
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="time" name="time" required lay-verify="required"
                        autocomplete="off" value="zhibinm" class="layui-input">
                    </div>

                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        车牌号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="carID" name="carID" autocomplete="off" value="广州"
                        class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label  class="layui-form-label">
                        收入金额
                    </label>
                    <div class="layui-input-block">
                        <textarea  id="amount" name="amount" autocomplete="off"
                        class="layui-textarea" style="height: 80px;"></textarea>
                    </div>
                </div>


                <div class="layui-form-item layui-form-text">
                    <label  class="layui-form-label">
                        申请人ID
                    </label>
                    <div class="layui-input-block">
                        <textarea  id="applicantID" name="applicantID" autocomplete="off"
                                  class="layui-textarea" style="height: 80px;"></textarea>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">
                    </label>
                    <button class="layui-btn" key="set-mine" lay-filter="save" lay-submit>
                        保存
                    </button>
                </div>

            </form>
            <!-- 右侧内容框架，更改从这里结束 -->
          </div>
        </div>
        <!-- 右侧主体结束 -->
    </div>
    <!-- 中部结束 -->
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

    <script>
        var getTable=function getTableContext() {

            return document.getElementById('incomeList').contentWindow.document.getElementById('id').innerHTML;

        }

    </script>
</body>
</html>