<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"><meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no"><meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1" media="(device-height: 568px)"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-touch-fullscreen" content="yes"><meta name="full-screen" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black"><meta name="format-detection" content="telephone=no"><meta name="format-detection" content="address=no"><link href="__STATIC__/jwap/css/style_v3.css" rel="stylesheet" type="text/css" /><link href="__STATIC__/jwap/css/jp.bag.css" rel="stylesheet" type="text/css" /><link href="__STATIC__/wap/css/swiper.min.css" rel="stylesheet"><link rel="stylesheet" type="text/css" href="__STATIC__/wap/css/wapshow.css" /><link rel="stylesheet" type="text/css" href="__STATIC__/wap/css/wap.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/iconfont.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/iconfont3.css" /><script type="text/javascript" src="__STATIC__/jwap/js/jquery-1.7.2.min.js"></script><script src="https://cdn.jsdelivr.net/clipboard.js/1.5.12/clipboard.min.js"></script><title><?php echo ($page_seo["title"]); ?></title><meta name="keywords" content="<?php echo ($page_seo["keywords"]); ?>"><meta name="description" content="<?php echo ($page_seo["description"]); ?>"><script src="__STATIC__/jwap/js/jquery-1.8.0.js"></script><script src="__STATIC__/jwap/js/underscore.js"></script><script src="__STATIC__/jwap/js/layer.js"></script><script type="text/javascript">	SITEURL="<?php echo C('ht_header_html');?>";
	CURURL="<?php echo C('ht_header_html');?>";
	WEBNICK="<?php echo C('ht_site_name');?>";
	URL_COOKIE=0;
</script><link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/slicy.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/style.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/glide.css" /></head><body><div class="main"><div class="app-other"><ul><li class="normal <?php if($nav_curr == index): ?>active<?php endif; ?> "><a href="<?php echo C('ht_header_html');?>"><em class="home"></em>网站首页</a></li><li class="normal  <?php if($nav_curr == jiu): ?>active<?php endif; ?>"><a href="<?php echo U('shijiu/index');?>"><em></em>9.9包邮</a></li><?php if(!empty($tag_list)): if(is_array($tag_list)): $i = 0; $__LIST__ = $tag_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$bcate): $mod = ($i % 2 );++$i;?><li class="normal <?php if($tag == $bcate['id']): ?>active<?php endif; ?>"><a href="<?php echo U('shijiu/index',array('tag'=>$bcate['id']));?>" title="<?php echo ($bcate["name"]); ?>"><em></em><?php echo ($bcate["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; endif; ?></ul></div><script type="text/javascript">	if(navigator.userAgent.indexOf("MicroMessenger") > -1 && navigator.userAgent.indexOf("iPhone") > -1 ){
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
</script><div class="app"><header id="head" class="head"><div class="fixtop"><span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back" title="返回上一页"></a></span><span id="t-index"><?php echo ($cinfo["name"]); ?></span><span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span></div></header><div class="h_bmbk"><?php if(C('ht_wap_template') == '1'): ?><div class="goods_list" id="box_list"><ul id="goods_box"></ul><div class="more" id='mores'><a href="javascript:void(0);" onclick="get_list(0)">加载中..</a></div></div><?php endif; if(C('ht_wap_template') == '2'): ?><div class="goods_list" id="box_list"><ul id="goods_box"></ul><div class="more" id='mores'><a href="javascript:void(0);" onclick="get_list(0)">加载中..</a></div></div><?php endif; ?></div><?php if(C('ht_wap_template') == '3'): ?><div id="goods"><section class="goods" id="goods"><ul class="goods-list clear"><script>$(function (){
    var aa = $(".goods-list li").innerWidth();
    $(".goods-list li img").css('height',aa);
})
</script><?php if(is_array($items_list)): $i = 0; $__LIST__ = $items_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i; if($item["class"] == 'start'): ?><li><a class="goods-a" href="<?php echo U('item/index',array('id'=>$item['id']));?>" target="_self"><img src="<?php echo attach(get_thumb($item['pic_url'], '_m'),'item');?>"><?php echo (wapnewicon($item["add_time"])); ?></a><a isconvert="1" data-itemid="<?php echo ($item["num_iid"]); ?>" target="_self"><h3><?php echo ($item["title"]); ?></h3><div class="lprice1"><span class="buypeo"><em ><b style="color:#00d12b">开始时间:<?php echo (date("n-j H:i",$item["coupon_start_time"])); ?></b></em></span></div><div class="list-price start"><span class="price-new"><i>￥</i><?php echo ($item["coupon_price"]); ?></span><i class="del">￥<?php echo ($item["price"]); ?></i></div></a></li><?php endif; if($item["class"] == 'buy'): ?><li><?php if($item["isq"] == 1): ?><div class="lingquan"><a href="<?php echo U('item/index',array('id'=>$item['id']));?>" target="_blank" rel="nofollow"><span>优惠券<br><em><?php echo ($item["quan"]); ?>元</em></span><b></b></a></div><?php endif; ?><a class="goods-a" href="<?php echo U('item/index',array('id'=>$item['id']));?>" target="_self"><img src="<?php echo C('ht_site_flogo');?>" class="<?php if(($mod) == "0"): ?>J_lazy<?php endif; if(($mod) == "1"): ?>J_lazy<?php endif; if(($mod) == "2"): ?>J_lazy<?php endif; if(($mod) == "3"): ?>J_lazys<?php endif; ?> lazy good-pic" d-src="<?php echo attach(get_thumb($item['pic_url'], '_m'),'item');?>"><?php echo (wapnewicon($item["coupon_start_time"])); ?></a><a href="<?php echo U('item/index',array('id'=>$item['id']));?>" target="_self" rel="nofollow"><h3><?php echo ($item["title"]); ?></h3><?php if($rebate_open['data'] == 1): ?><div class="lprice1"><span class="buypeo1"><em class="hh4"><?php echo C('ht_first_word');?></em><em class="hh4"><?php echo C('ht_second_word');?></em></span></div><?php endif; ?><div class="lprice1"><span class="buypeo"><em ><?php if($item["volume"] > 10000): echo (vmwan($item["volume"])); else: echo ($item["volume"]); endif; ?></em><em class="hh3"> 人已买</em></span></div><div class="list-price buy"><?php if($item["isq"] == 1): ?><span class="title-tips01">券后</span><?php endif; ?><span class="price-new"><i>￥</i><?php echo ($item["coupon_price"]); ?></span><?php if($item["shop_type"] == 'C' ): ?><span class="good-btn">淘宝</span><?php endif; if($item["shop_type"] == 'B' ): ?><span class="good-btn">天猫</span><?php endif; if($item["shop_type"] == 'M' ): ?><span class="good-btn">美丽说</span><?php endif; ?></div></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?></ul></section><div class="paging"><div class="paging-nav next"><?php echo ($page); ?></div></div></div><?php endif; ?><div class="nav_box"><nav class="nav" id="nav"><ul class="" id="bot-nav"><?php $tag_nav_class = new navTag;$data = $tag_nav_class->lists(array('type'=>'lists','style'=>'botmenu','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li><a class="active" href="<?php echo ($val["link"]); ?>" target="_self"><img src="<?php echo attach($val['icon'],'m');?>" alt="<?php echo ($val["name"]); ?>" class="icon icon-bm"><span style="color:#ff7200;"><?php echo ($val["name"]); ?></span><em class="line"></em></a></li><?php endforeach; endif; else: echo "" ;endif; ?></ul></nav></div><div  id="back_top"  class="slide-box" style="display:none"><a href="<?php echo U('user/like');?>" class="bag-enter" title="我的收藏"><img src="/static/jwap/images/bag-icon.png" alt="我的收藏"></a><a href="#" class="back-top" title="返回顶部"><img src="/static/jwap/images/back-top.png" alt="返回顶部"></a></div><div id="foot"><div class="foot-nav"></div></div><script type="text/javascript">var HTIANER = {
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

</script><?php echo C('ht_taojindian_html');?><script type="text/javascript" src="__STATIC__/jwap/js/popup.js"></script><script type="text/javascript" src="__STATIC__/jwap/js/jquery-1.7.2.min.js"></script><script type="text/javascript" src="__STATIC__/jwap/js/jquery.mobile-1.0.1.min.js"></script><script type="text/javascript" src="__STATIC__/jwap/js/jquery.glide.js"></script><script type="text/javascript" src="__STATIC__/jwap/js/jquery.SuperSlide.2.1.1.js"></script><script type="text/javascript" src="__STATIC__/jwap/js/jquery.countDown.js"></script><script type="text/javascript" src="__STATIC__/jwap/js/script.js"></script><script type="text/javascript" src="__STATIC__/jwap/js/jweixin-1.0.0.js"></script><script type="text/javascript">				  var shijiulimit = 1;
				  var shijiutag ='<?php echo ($tag); ?>';
				</script><script type="text/javascript">		function get_list(ty){
		var loclimit = window.sessionStorage.getItem("shijiulimit");
		var locshijiutag = window.sessionStorage.getItem("shijiutag");
		if(loclimit == "" ||loclimit == null){
		}else{
		if(locshijiutag == shijiutag){
		shijiulimit = loclimit;		
		}else{
		shijiulimit = 1;
		}
		}
		//	alert(shijiulimit);
		    if(ty==1){
			   $("#goods #goods-list").html('');
			}else{
			   $("#mores").html('<a href="javascript:void(0);">加载中...</a>');	   
			}
		//alert(sort);
			$.ajax({
        type:"get",
        url:"<?php echo C('ht_header_html');?>?m=shijiu&a=getitemlist",
        data:{"tag":shijiutag,"p":shijiulimit},
        dataType:"json",	
		success:function(data){
			//    	alert(data.status);
			    	if (data.status == 1) {
								var item = eval(data.item_list);
					
								var content = '';
								for(var i=0; i<item.length; i++){				
	if(<?php echo C('ht_wap_template');?>=="1"){
				if(item[i]['class']=="buy"){	
						content +='<li>';
						content +='<div class="img">';
					if(item[i]['isq']==1){
	//  content += ' <div class="lingquan"><a href="'+item[i]['quanurl']+'target="_blank" rel="nofollow"><span>优惠券<br><em>'+item[i]['quan']+'元</em></span><b></b></a></div>';
	   }

		content += '<a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'.html" target="_self">';            
		content += '<img src="'+item[i]['pic_url']+'_300x300.jpg" /></a>';
		content +='<label>已售'+item[i]['volume']+'件</label>';
		content +='</div>';
		
		content +='<div class="txt">';
		if(item[i]['shop_type']=="B"){
		content +='<h2><a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'" class="atm">'+item[i]['title']+'</a></h2>';
		}else{
		content +='<h2><a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'" class="atb">'+item[i]['title']+'</a></h2>';
		}
		content +='<h4><big>&yen;'+item[i]['coupon_price']+'</big><s>&yen;'+item[i]['price']+'</s> ';
	//	content +='<span class="fan">0.5</span>';
		content +='</h4>';
		content +='</div>';
		if(item[i]['isq']==1){
		content +='<div class="btn25">';
		content +='<a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'">领券减'+item[i]['quan']+'元</a>';
		content +='</div>';
		}else{
		content +='<div class="btn26">';
		content +='<a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'">去抢购</a>';
		content +='</div>';
		}
		content +='</li>';
			}					
		}  

	if(<?php echo C('ht_wap_template');?>=="2"){
				if(item[i]['class']=="buy"){
						content +='<li>';
						content +='<div class="img">';
					if(item[i]['isq']==1){
		content += '<div class="htquan" ><a href=""><span>优惠券</span><span>'+item[i]['quan']+'元</span><b></b></a></div>';
	   }
		content += '<a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'.html" target="_self">';            
		content += '<img src="'+item[i]['pic_url']+'_300x300.jpg" /></a>';
		content +='</div>';
		
		content +='<div class="txt">';
		if(item[i]['shop_type']=="B"){
		content +='<h2><a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'" class="atm">'+item[i]['title']+'</a></h2>';
		}else{
		content +='<h2><a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'" class="atb">'+item[i]['title']+'</a></h2>';
		}
		content +='<h4><div class="ht_jia_left">现价&yen;'+item[i]['price']+'</div><div class="ht_jia_right">已售;'+item[i]['volume']+'</div> ';
	//	content +='<span class="fan">0.5</span>';
		content +='</h4>';
		content +='</div>';
		if(item[i]['isq']==1){
		content +='<div class="ht_quan_right">';
		content +='<a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'">券后:<font>&yen;'+item[i]['coupon_price']+'</font></a>';
		content +='</div>';
		}else{
		content +='<div class="ht_quan_right">';
		content +='<a href="<?php echo C('ht_header_html');?>-item-index-id-'+item[i]['id']+'">折后:<font>&yen;'+item[i]['coupon_price']+'</font></a>';
		content +='</div>';
		}
		content +='</li>';
					}								
				}
				}
                $("#box_list #goods_box").append(content);
				//var aa = $(".goods-list li").innerWidth();
                //$(".goods-list li img").css('height',aa);
				if(item.length>1){
					$("#mores").html('<a href="javascript:void(0);" onclick="get_list(0);">点击查看更多</a>');	
				}else{
					$("#mores").html('<a href="javascript:void(0);"></a>');
					//$("#list_more").fadeOut(500);
				}		
                shijiulimit++;
				window.sessionStorage.setItem("shijiulimit", shijiulimit);
				window.sessionStorage.setItem("shijiutag", shijiutag);
		//lazy_img();
				    }else if(data.status==2){
				//	alert("22222");
			    		$("#mores").html('<a href="javascript:void(0);">我是有底线的..</a>');
						//dialog("没有更多记录！");
						//$("#list_more").fadeOut(500);
		
			    	}else{
				//	alert("33333");
					    $("#mores").html('<a href="javascript:void(0);">我是有底线的..</a>');
						//dialog("没有更多记录！！");
						//$("#list_more").fadeOut(500);
					}    	
			    },
			    error : function(data) {
		//alert("44444");
			    }
			});
			    
		
		}								
		 if(window.localStorage.getItem("url") == window.location.href && window.localStorage.getItem("top") != "null")
		 {}
		 else
		 {
			 get_list(0);
			 }
		//==============自动加载=============
		//获取滚动条当前的位置 
		function getScrollTop() { 
		var scrollTop = 0; 
		if (document.documentElement && document.documentElement.scrollTop) { 
		scrollTop = document.documentElement.scrollTop; 
		} 
		else if (document.body) { 
		scrollTop = document.body.scrollTop; 
		} 
		return scrollTop; 
		} 
		
		//获取当前可是范围的高度 
		function getClientHeight() { 
		var clientHeight = 0; 
		if (document.body.clientHeight && document.documentElement.clientHeight) { 
		clientHeight = Math.min(document.body.clientHeight, document.documentElement.clientHeight); 
		} 
		else { 
		clientHeight = Math.max(document.body.clientHeight, document.documentElement.clientHeight); 
		} 
		return clientHeight; 
		} 
		
		//获取文档完整的高度 
		function getScrollHeight() { 
		return Math.max(document.body.scrollHeight, document.documentElement.scrollHeight); 
		} 
		
		
		var u = navigator.userAgent;
		var isiOSa = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
		//alert(isiOSa);
				
		$(window).scroll(function () { 
		if(<?php echo C('ht_wap_template');?>=="3"){
		}else{
			if(isiOSa){
				if (getScrollTop() + getClientHeight() == getScrollHeight()) { 
				 //alert("到达底部"); 
				 get_list(0);
				} 
				//alert(888)
			}else{
				if (getScrollHeight() - getClientHeight() - getScrollTop() < 10) { 
				 //alert("到达底部"); 
				 get_list(0);
				} 
				//alert(999)
			}
			}
			
		});
		
		
		//==============自动加载=============  
	</script></body></html>