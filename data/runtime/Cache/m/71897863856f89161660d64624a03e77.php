<?php if (!defined('THINK_PATH')) exit();?><html><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"><meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no"><meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1" media="(device-height: 568px)"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-touch-fullscreen" content="yes"><meta name="full-screen" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black"><meta name="format-detection" content="telephone=no"><meta name="format-detection" content="address=no"><link href="__STATIC__/jwap/css/style_v3.css" rel="stylesheet" type="text/css" /><link href="__STATIC__/jwap/css/jp.bag.css" rel="stylesheet" type="text/css" /><link href="__STATIC__/wap/css/swiper.min.css" rel="stylesheet"><link rel="stylesheet" type="text/css" href="__STATIC__/wap/css/wapshow.css" /><link rel="stylesheet" type="text/css" href="__STATIC__/wap/css/wap.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/iconfont.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/iconfont3.css" /><script type="text/javascript" src="__STATIC__/jwap/js/jquery-1.7.2.min.js"></script><script src="https://cdn.jsdelivr.net/clipboard.js/1.5.12/clipboard.min.js"></script><title><?php echo ($page_seo["title"]); ?></title><meta name="keywords" content="<?php echo ($page_seo["keywords"]); ?>"><meta name="description" content="<?php echo ($page_seo["description"]); ?>"><script src="__STATIC__/jwap/js/jquery-1.8.0.js"></script><script src="__STATIC__/jwap/js/underscore.js"></script><script src="__STATIC__/jwap/js/layer.js"></script><script type="text/javascript">	SITEURL="<?php echo C('ht_header_html');?>";
	CURURL="<?php echo C('ht_header_html');?>";
	WEBNICK="<?php echo C('ht_site_name');?>";
	URL_COOKIE=0;
</script><link href="__STATIC__/jwap/css/pg-brand.css" rel="stylesheet" type="text/css" /></head><body><div class="main"><div class="app-other"><ul><li class="normal <?php if($nav_curr == index): ?>active<?php endif; ?> "><a href="<?php echo C('ht_header_html');?>"><em class="home"></em>网站首页</a></li><li class="normal  <?php if($nav_curr == brand): ?>active<?php endif; ?>"><a href="<?php echo U('brand/index');?>"><em></em>品牌首页</a></li><?php if(is_array($acats)): $i = 0; $__LIST__ = $acats;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$bcate): $mod = ($i % 2 );++$i;?><li class="normal <?php if($bcate['id'] == $cid): ?>active<?php endif; ?>"><a href="<?php echo U('brand/cate',array('cid'=>$bcate['id']));?>"><em></em><?php echo ($bcate["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?></ul><p><a href="<?php echo U('user/index');?>"><em  class="icon-user"></em><br>个人中心</a><a href="<?php echo U('about/index');?>"><em class="icon-about"></em><br>关于我们</a></p></div><script type="text/javascript">	if(navigator.userAgent.indexOf("MicroMessenger") > -1 && navigator.userAgent.indexOf("iPhone") > -1 ){
		if(location.href.indexOf("deal") > -1){
			$("#xq_a").find('img').attr("src","/static/jwap/images/goumai_i.png");
			$("#open_t").html("无法正常购买？请在浏览器中打开！");
		}
	}else{
		if(location.href.indexOf("deal") > -1){
			$("#xq_a").find('img').attr("src","/static/jwap/images/goumai_a.png");
			$("#open_t").html("无法正常购买，请在浏览器中打开！");
		}

	}

	$("#open_d").on('click',  function(event) {
		$("#open_d").hide(400);
		$("#xq_a").show(400);
	});

	$("#xq_a").on('click',  function(event) {
		$("#xq_a").hide(400);
		$("#open_d").show(400);
	});
</script><div class="app"><header id="head" class="head"><div class="fixtop"><span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back" title="返回上一页"></a></span><span id="t-index">品牌折扣</span><span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span></div></header><section id="goods" class="goods"><div class="brand-list" id="goods_block"><?php if(is_array($items_list)): $i = 0; $__LIST__ = $items_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i; if($val["pass"] == 1): ?><div class="item"><div class="title"><img src="<?php echo ($val["logo"]); ?>"><span><?php echo ($val["title"]); ?></span></div><a class="discount" href="<?php echo U('brand/view',array('id'=>$val['id']));?>"><em>去看看</em><br>共<?php echo ($val["counts"]); ?>款<i class="cur"></i></a><ul class="goods-list clear"><?php $tag_item_class = new itemTag;$data = $tag_item_class->brand(array('type'=>'brand','cid'=>$val['activityId'],'num'=>'2','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('brand/view',array('id'=>$val['id']));?>" class="goods-a"><img class="lazy" src="<?php echo attach(get_thumb($item['pic_url'], '_b'),'item');?>"><div class="mask-box"></div><div class="list-price buy "><span class="price-new"><i>￥</i><?php echo ($item["coupon_price"]); ?></span><i class="del">￥<?php echo ($item["price"]); ?></i></div></a></li><?php endforeach; endif; else: echo "" ;endif; ?></ul></div><?php endif; endforeach; endif; else: echo "" ;endif; ?></div></section><div class="paging"><div class="paging-nav next"><?php echo ($page); ?></div></div><div class="nav_box"><nav class="nav" id="nav"><ul class="" id="bot-nav"><?php $tag_nav_class = new navTag;$data = $tag_nav_class->lists(array('type'=>'lists','style'=>'botmenu','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li><a class="active" href="<?php echo ($val["link"]); ?>" target="_self"><img src="<?php echo attach($val['icon'],'m');?>" alt="<?php echo ($val["name"]); ?>" class="icon icon-bm"><span style="color:#ff7200;"><?php echo ($val["name"]); ?></span><em class="line"></em></a></li><?php endforeach; endif; else: echo "" ;endif; ?></ul></nav></div><div  id="back_top"  class="slide-box" style="display:none"><a href="<?php echo U('user/like');?>" class="bag-enter" title="我的收藏"><img src="/static/jwap/images/bag-icon.png" alt="我的收藏"></a><a href="#" class="back-top" title="返回顶部"><img src="/static/jwap/images/back-top.png" alt="返回顶部"></a></div><div id="foot"><div class="foot-nav"></div></div><script type="text/javascript">var HTIANER = {
    root: "__ROOT__",
	site: "<?php echo C('ht_header_html');?>",
    uid: "<?php echo $visitor['id'];?>", 
    url: {}
};
var lang = {};
<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?></script><?php $tag_load_class = new loadTag;$data = $tag_load_class->js(array('type'=>'js','href'=>'__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/htian.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/red/js/comment.js,__STATIC__/red/js/comm.js','cache'=>'0','return'=>'data',));?><div class="toTop" onclick=" $('body,html').animate({scrollTop:0},1000);" style="position: fixed;
    right: 2rem;
    bottom: 6rem;
    font-family: iconfont;
    display: none;
    font-size: 3.7rem;
    width: 4rem;
    height: 4rem;
    background-color: #fff;
    border: 1px solid #CCCCCC;
    border-radius: 5rem;
    text-align: center;
    z-index: 80;
    line-height: 3.8rem;
    color: #8c8c8c;">&#xe601;</div><script type="text/javascript">			window.setInterval("$('.ucautopager_guidebar').remove();$('.goods-item a').height($('.goods-item a').width());",100);
			$(".lazyload").lazyload({
				"placeholder": "/static/images/logo.jpg"
			});
		</script><script type="text/javascript" charset="utf-8">    $(document).ready(function () {
        var menu = $('#new-left-menu');
        var menuHeight = $('#menu-mask').height();
        var windowHeight = $(window).height();
        $(menu).find('.mask').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');
        $(menu).find('.menu-content').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');

        $(window).resize(function () {
            $(menu).find('.mask').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');
            $(menu).find('.menu-content').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');
        });

        $('.main-icon').click(function () {
            $(menu).css('z-index', 100);
            $(menu).addClass('opened-menu');
            $(menu).animate({left: 0},300);
        });
        $('#menu-mask').on('click',function () {
            $(menu).animate({left: -1 * $(window).width()},300,function(){
                $(menu).removeClass('opened-menu');
            });
        });
        $(window).scroll(function () {
            if ($(window).scrollTop() > 500) {
                $(".toTop").fadeIn(1500);
            }
            else {
                $(".toTop").fadeOut(1500);
            }
        });
    });
</script><div class="iconfont kf-g icon-kefu" onclick="kefu()" ></div><div class="cd-popup3-kf"><div class="cd-popup-container3-kf"><div class="titl-kf"><ul class="kf"><?php if(C('ht_qq') != '' ): ?><li><em class="iconfont ico-tb icon-qq"></em><span class="sp">Q Q</span><b class="sp"><?php echo C('ht_qq');?></b><a class="butn" href="mqq://im/chat?chat_type=wpa&uin=<?php echo C('ht_qq');?>&version=1&src_type=web"rel="nofollow">在线交谈</a></li><?php endif; if(C('ht_phone') != '' ): ?><li><em class="iconfont ico-tb icon-dianhua"></em><span class="sp">电话</span><b class="sp"><?php echo C('ht_phone');?></b><a class="butn" href="tel:<?php echo C('ht_phone');?>">拨打电话</a></li><?php endif; if(C('ht_WeChat') != '' ): ?><li><em class="iconfont ico-tb icon-weixin"></em><span class="sp">微信</span><b class="sp" id="copy_key_android"><?php echo C('ht_WeChat');?></b><a class="butn" id="copy-we" data-clipboard-action="copy" data-clipboard-target="#copy_key_android" >复制账号</a></li><?php endif; ?></ul></div></div></div><script language="javascript">function kefu()
{
            event.preventDefault();
            $('.cd-popup3-kf').addClass('is-visible3-kf');
            //$(".dialog-addquxiao").hide()
	
}

</script><script type="text/javascript">    jQuery(document).ready(function($){
        $('.cd-popup3-kf').on('click', function(event){
            if( $(event.target).is('.cd-popup-close-kf') || $(event.target).is('.cd-popup3-kf') ) {
                event.preventDefault();
                $(this).removeClass('is-visible3-kf');
            }
        });
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup3-kf').removeClass('is-visible3-kf');
            }
        });
    });
</script><script type="text/javascript">	 var copy_k = document.getElementById("copy_key_android").value;
    function regain() {
        document.getElementById('copy_key_android').value = copy_k;
    }
    $(document).ready(function(){ 
	            event.preventDefault();
        var clipboard = new Clipboard('#copy-we');  
     
        clipboard.on('success', function(e) {    
            console.info('Action:', e.action);    
            console.info('Text:', e.text);    
            console.info('Trigger:', e.trigger); 
			alert("微信账号已复制，请打开微信添加朋友");
  //          e.clearSelection();    
        }); 
        clipboard.on('error', function(e) {    
 
			alert("您浏览器不支持一键复制，请手动复制");
 
        }); 		
    }); 
</script><style type="text/css">/*foot start*/
#foot {
	width: 100%;
	height: 150px;
	position: relative;
	border-top: 1px solid rgba(255, 255, 255, 1);
	background:#fff;
	max-width: 640px;
    min-width: 320px;
    margin: 0px auto;
}
.foot-copyright:before {
	display: block;
	content: "";
	background-image: -webkit-gradient(radial, center center, 0, center center, 460, from(#b4b4b4), to(#efefef));
	background-image: -webkit-radial-gradient(circle, #b4b4b4, #efefef);
	background-image: -moz-radial-gradient(circle, #b4b4b4, #efefef);
	background-image: radial-gradient(circle, #b4b4b4, #efefef);
	background-repeat: no-repeat;
	height: 1px;
	width:90%;
	margin:0 auto;
	overflow: hidden;
}
.foot-nav {
	padding:10px 0 20px;
	height: 80px;
	line-height: 40px;
	position: relative;
}
.foot-nav a {
	color: #666;
	display: inline-block;
	font-size: 15px;
	height: 25px;
	line-height: 25px;
	margin: 0 auto;
	width: 32%;
	text-align: center;
	border-right:#ccc solid 1px;
	position:relative;
}
.foot-nav a:hover {
	text-decoration: none;
	color:#f8285c;
}
.foot-nav a img{height:18px;vertical-align:-3px;margin-right:5px;}
.foot-nav a .icon-tips{position:absolute;bottom:-16px;left:30%;z-index:10;height:auto;width:53px;}
#foot h2 {
	font-size: 12px;
	font-weight: 500;
	display: block;
	position: absolute;
	color: rgba(153, 153, 153, 1);
	background: #fff;
	top: 70px;
	left: 50%;
	padding: 0 4px;
	margin-left: -76px;
}
._border{border:none !important;}
/*foot end*/
</style></div></div><script type="text/javascript" src="__STATIC__/jwap/js/mjp.min.js"></script><script src="__STATIC__/newpi/js/lightbox.js" type="text/javascript"></script><script type="text/javascript">	$("img.lazy").lazyload({threshold:200,failure_limit:30});	
</script><script type="text/javascript" src="__STATIC__/jwap/js/swipeSlide.min.js"></script><script type="text/javascript" src="__STATIC__/jwap/js/jp.common.js"></script><script type="text/javascript">            $(function(){
            function hideMenu() {
                setTimeout("window.scrollTo(0, 0)", 1);
            }

            $('.alert_black_bg .close').on('click', function(){
                $('.alert_black_bg').hide();
                $('#foot').height(120);
            });
            });
            $(".go-app .closed").on("click",function(){
                $(".go-app").hide();
                return false;
            })

</script><?php echo C('ht_taojindian_html');?></body></html>