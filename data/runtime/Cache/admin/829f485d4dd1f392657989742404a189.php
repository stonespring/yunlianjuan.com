<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><link href="__STATIC__/css/admin/style.css" rel="stylesheet"/><title><?php echo L('website_manage');?></title><script>	var URL = '__URL__';
	var SELF = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?></script></head><body><div id="J_ajax_loading" class="ajax_loading"><?php echo L('ajax_loading');?></div><?php if(($sub_menu != '') OR ($big_menu != '')): ?><div class="subnav"><div class="content_menu ib_a blue line_x"><?php if(!empty($big_menu)): ?><a class="add fb J_showdialog" href="javascript:void(0);" data-uri="<?php echo ($big_menu["iframe"]); ?>" data-title="<?php echo ($big_menu["title"]); ?>" data-id="<?php echo ($big_menu["id"]); ?>" data-width="<?php echo ($big_menu["width"]); ?>" data-height="<?php echo ($big_menu["height"]); ?>"><em><?php echo ($big_menu["title"]); ?></em></a>　<?php endif; if(!empty($sub_menu)): if(is_array($sub_menu)): $key = 0; $__LIST__ = $sub_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($key % 2 );++$key; if($key != 1): ?><span>|</span><?php endif; ?><a href="<?php echo U($val['module_name'].'/'.$val['action_name'],array('menuid'=>$menuid)); echo ($val["data"]); ?>" class="<?php echo ($val["class"]); ?>"><em><?php echo ($val['name']); ?></em></a><?php endforeach; endif; else: echo "" ;endif; endif; ?></div></div><?php endif; ?><link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/><script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script><div class="pad_lr_10"><form id="info_form" action="<?php echo U('setting/edit');?>" method="post"><table width="100%" class="table_form contentWrap"><tr><th width="100">轻淘客Appkey :</th><td><label><input type="text" name="setting[qingtaoke]" class="input-text" size="20" value="<?php echo C('ht_qingtaoke');?>"><a href="http://houtianbest.cn/forum.php?mod=viewthread&tid=67&extra=page%3D1" target="_blank">查看教程</a></label></td></tr><tr><th></th><td><input type="submit" value="保存Appkey" id="dosubmit" name="dosubmit" class="smt mr10" /></td></tr></table></form><table width="100%" cellspacing="0" class="table_form"><tr><th width="150">采集分类 :</th><td><select class="J_quan_select mr10" onclick="$('#J_quan_cate_id').val($(this).val());"><option value="">--请选择--</option><option value="2">母婴</option></option><option value="3">美妆</option><option value="4">居家</option><option value="5">鞋包配饰</option><option value="6">美食</option><option value="7">文体</option><option value="8">家电数码</option><option value="9">其它</option><option value="10">女装</option><option value="11">内衣</option><option value="12">男装</option></select></td><th width="150">入库分类 :</th><td><select class="J_cate_select mr10" data-pid="0" data-uri="<?php echo U('items_cate/ajax_getchilds', array('type'=>0));?>"></select></td></tr><tr><th width="150">对应分类 :</th><td><input onclick="CJ($('#J_quan_cate_id').val(),$('#J_cate_id').val())" type="button" value="添加" name="dosubmit" class="smt mr10"></td><td><a href="<?php echo U('houtianyouhui/caiji');?>" class="smt mr10" >手动采集</a><span class="gray ml10">一次50页，一分钟内不要采集超过2次，一共600页（12次）</span></td></tr></table><input type="hidden" name="cate_id" id="J_cate_id" value="0" /><input type="hidden" name="quan_cate_id" id="J_quan_cate_id" value="0" /><input type="hidden" name="PD" id="PD" value="NO" /><div class="J_tablelist table_list"><table width="100%" cellspacing="0"><thead><tr><th width="25">ID</th><th width="25">ID:采集分类</th><th width="25">ID:入库分类</th><th width="25">操作</th></tr></thead><tbody><?php if(is_array($cinfo)): $i = 0; $__LIST__ = $cinfo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item_cate): $mod = ($i % 2 );++$i;?><tr><td align="center"><?php echo ($i); ?></th><td align="center"><?php echo ($item_cate["cate"]); ?>:<?php echo ($item_cate["name"]); ?></td><td align="center"><?php echo ($item_cate["cate1"]); ?>:<?php echo ($item_cate["name1"]); ?></td><td align="center"><input value="删除" type="button" onclick="SC('<?php echo ($item_cate["id"]); ?>')" class="input3"></td></tr><?php endforeach; endif; else: echo "" ;endif; ?></tbody></table><table width="100%" cellspacing="0" class="table_form"><th width="20%">执行提示 :</th><td id="TS" width="80%"><?php if($check != '1'): echo ($check); endif; ?></td></table></div></div><script src="/static/js/jquery/jquery.js"></script><script src="/static/js/admin.js"></script><script>function secret(secret){
	secret=$('#secret').val()
	$.getJSON("<?php echo U('houtianyouhui/secret');?>",{secret:secret}, function(result){
		$("#TS").empty();
		if (result.ts == 'OK'){
			$("#TS").append('保存成功！');
		}else{
			$("#TS").append('保存失败！');
		}
	});
}
function SC(id){
	$.getJSON("<?php echo U('houtianyouhui/delete');?>",{id:id}, function(result){
		$("#TS").empty();
		if (result.ts == 'OK'){
			$("#TS").append('删除成功！');
		}else{
			$("#TS").append('删除失败！');
		}
		window.location.reload();
	});
}
function CJ(cate,cate1){
	$.getJSON("<?php echo U('houtianyouhui/add');?>",{cate:cate,cate1:cate1}, function(result){
		$("#TS").empty();
		if (result.ts == 'OK'){
			$("#TS").append('添加成功！');
		}else{
			$("#TS").append('添加失败！');
		}
		window.location.reload();
	});
} 

$(function(){
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script></body></html>