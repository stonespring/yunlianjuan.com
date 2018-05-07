<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><link href="__STATIC__/css/admin/style.css" rel="stylesheet"/><title><?php echo L('website_manage');?></title><script>	var URL = '__URL__';
	var SELF = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?></script></head><body><style>.add{background: url(/static/css/admin/bgimg/btn_total.gif) no-repeat;color: #FFF;cursor: pointer;display: block;float:right;font-size: 14px;font-weight: bold;height: 30px;line-height: 28px;line-height: 32px 9;padding-bottom: 2px;margin-top:-1px;text-align: center;width: 104px;border: none medium;}
.add:hover{background-position: 0 -34px;text-decoration: none;}
</style><form name="searchform" method="get" ><table width="100%" cellspacing="0" class="table_form"><tbody><tr><td><div class="explain_col"><input type="hidden" name="g" value="admin" /><input type="hidden" name="m" value="quan" /><input type="hidden" name="a" value="index" /><input type="hidden" name="menuid" value="<?php echo ($menuid); ?>" />		  &nbsp;&nbsp;关键词:
		  <input name="q" type="text" class="input-text" size="20" />		  &nbsp;&nbsp;
		  
		  <input type="submit" value="确认搜索" class="add fb"></div></td></tr></tbody></table></form><div class="pad_lr_10" ><div class="J_tablelist table_list"><table width="100%" cellspacing="0"><thead><tr><th width="25"><input type="checkbox" id="checkall_t" class="J_checkall"></th><th width="20">ID</th><th width="50" align="center">缩略图</th><th width="200">商品名称</span></th><th width="70">商品IID</span></th><th width="70">旺旺</th><th width="70">卖家ID</th><th width="70">原价</th><th width="70">券后价</th><th width="70">结束时间</th><th width="70">佣金比例</th><th width="70">销量</th><th width="70">券面额</th><th width="70">类型</th><th width="90">是否存在</th><th width="80"><?php echo L('operations_manage');?></th></tr></thead><tbody><?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 4 );++$i;?><tr><td align="center"><input type="checkbox" class="J_checkitem" value="<?php echo ($val["num_iid"]); ?>"></td><td align="center"><?php echo ($i); ?></td><td align="center"><div class="img_border"><a href="http://item.taobao.com/item.htm?id=<?php echo ($val["num_iid"]); ?>" target="_blank"><img src="<?php echo ($val["pic_url"]); ?>" width="32" width="32" class="J_preview" data-bimg="<?php echo ($val["pic_url"]); ?>"></a></div></td><td align="left"><?php echo ($val["title"]); ?></td><td align="center"><?php echo ($val["num_iid"]); ?></td><td align="center"><?php echo ($val["nick"]); ?></td><td align="center"><?php echo ($val["sellerId"]); ?></td><td align="center" class="red"><?php echo ($val["price"]); ?></td><td align="center" class="red"><?php echo ($val["coupon_price"]); ?></td><td align="center" class="red"><?php echo (date("Y-m-d",$val["coupon_end_time"])); ?></td><td align="center" class="red"><?php echo ($val["commission"]); ?></td><td align="center" class="red"><?php echo ($val["volume"]); ?></td><td align="center" class="red"><?php echo ($val["quan"]); ?></td><td align="center">天猫</td><td align="center"><img src='__STATIC__/images/admin/toggle_<?php if($val["yes"] == 1): ?>enabled<?php else: ?>disabled<?php endif; ?>.gif' /></td></td><td align="center"><a class="showdialog" href="javascript:getck(<?php echo ($val["num_iid"]); ?>);" data-uri="<?php echo U('quan/caiji',array('id'=>$val['num_iid']));?>" data-title="采集" data-id="caiji" data-width="500" data-height="180">采集</a></td></tr><?php endforeach; endif; else: echo "" ;endif; ?></tbody></table></div><div class="btn_wrap_fixed"><label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall"><?php echo L('select_all');?>/<?php echo L('cancel');?></label><input type="button" class="btn btn_submit" data-tdtype="batch_action" data-acttype="ajax_form" data-id="allcaiji" data-uri="<?php echo U('quan/allcaiji',array('menuid'=>$menuid,'p'=>$p));?>" data-name="num_iid" data-title="批量采集入库" value="批量采集入库" /><div id="pages"><?php echo ($page); ?></div></div></div><script src="__STATIC__/js/jquery/jquery.js"></script><script src="__STATIC__/js/jquery/plugins/jquery.tools.min.js"></script><script src="__STATIC__/js/jquery/plugins/formvalidator.js"></script><script src="__STATIC__/js/htian.js"></script><script src="__STATIC__/js/admin.js"></script><script src="__STATIC__/js/dialog.js"></script><script>//初始化弹窗
(function (d) {
    d['okValue'] = lang.dialog_ok;
    d['cancelValue'] = lang.dialog_cancel;
    d['title'] = lang.dialog_title;
})($.dialog.defaults);
</script><?php if(isset($list_table)): ?><script src="__STATIC__/js/jquery/plugins/listTable.js"></script><script>$(function(){
	$('.J_tablelist').listTable();
});
</script><?php endif; ?><script>var get_url = "<?php echo U('quan/caiji');?>";
$('.J_preview').preview(); //查看大图
$('.J_tooltip[title]').tooltip({offset:[10, 2], effect:'slide'}).dynamic({bottom:{direction:'down', bounce:true}});
function getck(id){
		$.getJSON(get_url, {id:id}, function(result){
		    
            if(result.status == 1){
                $.dialog({id:'caiji', title:result.msg, content:result.data, padding:'', lock:true});
            }else{
                $.htian.tip({content:result.msg, icon:'alert'});
            }
        });
    }
</script><script src="__STATIC__/js/jquery/plugins/listTable.js"></script><script>$(function(){
	$('.J_tablelist').listTable();
});
</script></body></html>