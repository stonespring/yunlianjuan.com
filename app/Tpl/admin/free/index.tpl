<include file="public:header" />
<!--商品列表-->
<div class="pad_lr_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
			<input type="hidden" name="g" value="admin" />
			<input type="hidden" name="m" value="free" />
			<input type="hidden" name="a" value="index" />
			<input type="hidden" name="menuid" value="{$menuid}" />
			<if condition="$sm neq ''"><input type="hidden" name="sm" value="{$sm}" /></if>
			发布时间 :
			<input type="text" name="time_start" id="J_time_start" class="date" size="12" value="{$search.time_start}">
			-
			<input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">
			<div class="bk8"></div>
			价格区间 :
			<input type="text" name="price_min" class="input-text" size="5" value="{$search.price_min}" />
			-
			<input type="text" name="price_max" class="input-text" size="5" value="{$search.price_max}" />
			&nbsp;&nbsp;关键字 :
			<input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
			<input type="submit" name="search" class="btn" value="搜索" />		
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
 

    <div class="J_tablelist table_list" data-acturi="{:U('free/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="20"><span data-tdtype="order_by" data-field="id">ID</span></th>
		<th width="50" align="center">缩略图</th>
                <th align="left"><span data-tdtype="order_by" data-field="title">商品名称</span></th>
                <th width="100"><span data-tdtype="order_by" data-field="price">原价(元)</span></th>
                <th width="70">活动价(元)</th>
		<th width="70"><span data-tdtype="order_by" data-field="num">限量份数</span></th>
		<th width="90"><span data-tdtype="order_by" data-field="remain">剩余份数</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="pass">{:L('pass')}</span></th>
		<th width="150"><span data-tdtype="order_by" data-field="coupon_start_time">活动时间</span></th>
                <th width="120"><span data-tdtype="order_by" data-field="add_time">发布时间</span></th>
                <th width="150">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="right">
                    <div class="img_border"><img src="{:attach(get_thumb($val['pic_url'], '_s'), 'item')}" width="32" width="32" class="J_preview" data-bimg="{:attach(get_thumb($val['pic_url'],'_m'), 'item')}"></div>
                </td>
                <td align="left"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.title}</span></td>
                <td align="center">{$val.price}</td>
                <td align="center" class="red">{$val.coupon_price}</td> 
		<td align="center" class="red">{$val.num}</td> 
		<td align="center"><span data-tdtype="edit" data-field="remain" data-id="{$val.id}" class="tdedit">{$val.remain}</span></td>
                <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
                <td align="center"><if condition="$val.status eq 1">未审核<elseif condition="$val.status eq 2"/>通过<elseif condition="$val.status eq 3"/>未通过<elseif condition="$val.status eq 4"/>已支付待审核</if></td>
                <td align="center">{$val.start_time|date="m-d H:i",###}～{$val.end_time|date="m-d H:i",###}</td>
		<td align="center">{$val.add_time|frienddate}</td>
                <td align="center"><if condition="$val.status eq 1"><a href="{:u('free/do_check', array('id'=>$val['id'], 'menuid'=>$menuid))}" onclick="return confirm('你确定要通过该活动吗？')">通过</a> | <a href="{:u('free/fail', array('id'=>$val['id'], 'menuid'=>$menuid))}" onclick="return confirm('你确定要撤销该活动吗？')">不通过</a> | <elseif condition="$val.status eq 2"/><a href="{:u('free/fail', array('id'=>$val['id'], 'menuid'=>$menuid))}" onclick="return confirm('你确定要撤销该活动吗？')">撤销</a></if> <a href="{:u('free/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">{:L('edit')}</a> | <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('free/delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>





    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('free/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
        <div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
<link rel="stylesheet" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<script>
Calendar.setup({
	inputField : "J_time_start",
	ifFormat   : "%Y-%m-%d",
	showsTime  : false,
	timeFormat : "24"
});
Calendar.setup({
	inputField : "J_time_end",
	ifFormat   : "%Y-%m-%d",
	showsTime  : false,
	timeFormat : "24"
});
$('.J_preview').preview(); //查看大图
$('.J_cate_select').cate_select({top_option:lang.all}); //分类联动
$('.J_tooltip[title]').tooltip({offset:[10, 2], effect:'slide'}).dynamic({bottom:{direction:'down', bounce:true}});
</script>
</body>
</html>