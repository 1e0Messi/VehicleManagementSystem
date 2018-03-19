$(function () {
    //加载弹出层
    layui.use(['form','element'],
    function() {
        layer = layui.layer;
        element = layui.element();
    });

	//初如化背景
	function bgint () {
    	if(localStorage.bglist){
            var arr = JSON.parse(localStorage.bglist);// 
            // console.log(arr);
            //全局背景统一
            if(arr['bgSrc']){
                $('body').css('background-image', 'url('+arr['bgSrc']+')');

                //初始化弹出层背景
            }
            //单个背景逻辑
            // if(arr[location.href]){
            //     $('body').css('background-image', 'url('+arr[location.href]+')');
            // }
    	}
    }

    bgint();

	//背景主题功能
	var changerlist = new Swiper('.changer-list', {
		initialSlide :5,
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: 'auto',
        coverflow: {
            rotate: 50,
            stretch: -10,
            depth: 100,
            modifier: 1,
            slideShadows : false
        }
    });

    //判断是否显示左侧菜单
    $(window).resize(function(){
        width=$(this).width();
        if(width>1024){
            $('#side-nav').show();
        }
    });

	//背景主题设置展示
    is_show_change=true;
    $('#changer-set').click(function(event) {
    	if(is_show_change){
            $('.bg-out').show();
    		$('.bg-changer').animate({top: '0px'}, 500);
    		is_show_change=false;
    	}else{
    		$('.bg-changer').animate({top: '-110px'}, 500);
    		is_show_change=true;
    	}
    	
    });

    //背景主题切换
    $('.bg-changer img.item').click(function(event) {
    	if(!localStorage.bglist){
    		arr = {};
    	}else{
    		arr = JSON.parse(localStorage.bglist);
    	}
    	var src = $(this).attr('src');
    	$('body').css('background-image', 'url('+src+')');

    	url = location.href;

        // 单个背景逻辑
    	// arr[url]=src;
        
        // 全局背景统一
        arr['bgSrc'] = src;
        // console.log(arr);

    	localStorage.bglist = JSON.stringify(arr);

    });

    //背景初始化
    $('.reset').click(function  () {
        localStorage.clear();
        layer.msg('初如化成功',function(){});
    });


    //背景切换点击空白区域隐藏
    $('.bg-out').click(function  () {
        $('.bg-changer').animate({top: '-110px'}, 500);
            is_show_change=true;
        $(this).hide();
    })


    //窄屏下的左侧菜单隐藏效果
    $('.container .open-nav i').click(function(event) {
        $('#side-nav').toggle(400);
        // $('.wrapper .left-nav').toggle(400)
    });

    //左侧菜单效果
    $('.left-nav #nav li a[name="switch"]').click(function () {
        if($(this).hasClass('open')){
            $(this).removeClass('open');
            $(this).find('.nav_right').html('&#xe697;');
            $(this).next('.sub-menu').slideUp();
            // $(this).siblings().children('.sub-menu').slideUp();
        }else{
            $(this).addClass('open');
            $(this).find('.nav_right').html('&#xe6a6;');
            $(this).next('.sub-menu').slideDown();
            $(this).parent().siblings().children('.sub-menu').slideUp();
            $(this).parent().siblings().children().removeClass('open');
        }
    });

    //初始化菜单展开样式
    $('.left-nav #nav li .opened').siblings('a').find('.nav_right').html('&#xe6a6;');

});

/*弹出层*/
/*
    参数解释：
    title   标题
    url     请求的url
    id      需要操作的数据id
    w       弹出层宽度（缺省调默认值）
    h       弹出层高度（缺省调默认值）
*/
function x_admin_show(title,url,w,h){
    if (title == null || title == '') {
        title=false;
    };
    if (url == null || url == '') {
        url="404.html";
    };
    if (w == null || w == '') {
        w=800;
    };
    if (h == null || h == '') {
        h=($(window).height() - 50);
    };
    layer.open({
        type: 2,
        area: [w+'px', h +'px'],
        fix: false, //不固定
        maxmin: true,
        shadeClose: true,
        shade:0.4,
        title: title,
        content: url
    });
}

/*关闭弹出框口*/
function x_admin_close(){
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
}

/**/
function tbody(data) {
    var html = "<tr>\n" +
        "<td>\n" +
        "<input type=\"checkbox\" value=\""+ data.id +"\" name=\"adminItem\">\n" +
        "</td>\n" +
        "<td>\n" +
        data.id +"\n" +
        "</td>\n" +
        "<td>\n" +
        data.name +"\n" +
        "</td>\n" +
        "<td >\n" +
        data.gender +"\n" +
        "</td>\n" +
        "<td >\n" +
        data.tel +"\n" +
        "</td>\n" +
        "<td >\n" +
        data.email +"\n" +
        "</td>\n" +
        "<td >\n" +
        data.id_card +"\n" +
        "</td>\n" +
        "<td>\n" +
        data.address +"\n" +
        "</td>\n" +
        "<td>\n" +
        data.date +"\n" +
        "</td>\n" +
        "<td>\n" +
        data.password +"\n" +
        "</td>\n" +
        "<td class=\"td-manage\">\n" +
        "<a title=\"编辑\" href=\"javascript:;\" onclick=\"member_edit('编辑','/adminEdit?id="+ data.id +"','4','500','400')\"\n" +
        "class=\"ml-5\" style=\"text-decoration:none\">\n" +
        "<i class=\"layui-icon\">&#xe642;</i>\n" +
        "</a>\n" +
        "<a style=\"text-decoration:none\"  onclick=\"member_password('修改密码','/passwordEdit?id="+ data.id +"&password="+ data.password +"','10001','500','400')\"\n" +
        " href=\"javascript:;\" title=\"修改密码\">\n" +
        "<i class=\"layui-icon\">&#xe631;</i>\n" +
        "</a>\n" +
        "<a title=\"删除\" href=\"javascript:;\" onclick=\"member_del(this,'"+ data.id +"')\"\n" +
        "style=\"text-decoration:none\">\n" +
        "<i class=\"layui-icon\">&#xe640;</i>\n" +
        "</a>\n" +
        "</td>\n" +
        "</tr>";
    return html;
}
