<include file="public:header" />
<!--返利列表-->
<div class="pad_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
                    <input type="hidden" name="g" value="admin" />
                    <input type="hidden" name="m" value="rebatecomp" />
                    <input type="hidden" name="a" value="index" />
                    <input type="hidden" name="menuid" value="{$menuid}" />
                    &nbsp;&nbsp;订单号 :
                    <input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
                    &nbsp;&nbsp;用户id :
                    <input type="text" name="uid" class="input-text" size="12" value="{$search.uid}" />
                    下单时间 :
                    <input type="text" name="time_start" id="J_time_start" class="date" size="12" value="{$search.time_start}">
                    -
                    <input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">                                        &nbsp;&nbsp;订单状态 :                    <select name="order_status">                    <option value="">-{:L('all')}-</option>                    <volist name="order_status_list" id="val" >                        <option value="{$val.order_status}" <if condition="$search.order_status eq $val[order_status]">selected="selected"</if>>{$val.order_status}</option>                    </volist>                    </select>                    
                    &nbsp;&nbsp;返利状态 :
                    <select name="rebate_status">
                    <option value="">-{:L('all')}-</option>
                    <option value="1" <if condition="$search.rebate_status eq '1'">selected="selected"</if>>已返利</option>
                    <option value="0" <if condition="$search.rebate_status eq '0'">selected="selected"</if>>未返利</option>
                    </select>                                        &nbsp;&nbsp;
                    <input type="submit" name="search" class="btn" value="搜索" />
                    <div class="bk8"></div>                
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
    <div class="J_tablelist table_list" data-acturi="{:U('rebatecomp/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="10"><span data-tdtype="order_by" data-field="id">ID</span></th>
                <th><span data-tdtype="order_by" data-field="title">商品名称</span></th><th width="60"><span data-tdtype="order_by" data-field="order_no">订单编号</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="num">数量</span></th>
                <th width="50"><span data-tdtype="order_by" data-field="price">商品单价</span></th>
		<th width="60"><span data-tdtype="order_by" data-field="order_status">订单状态</span></th>
		<th width="60"><span data-tdtype="order_by" data-field="pay_money">付款金额</span></th><th width="60"><span data-tdtype="order_by" data-field="end_money">结算金额</span></th><th width="60"><span data-tdtype="order_by" data-field="estimate_income">预估收入</span></th><th width="60"><span data-tdtype="order_by" data-field="commission">佣金金额</span></th>
                <th width="120"><span data-tdtype="order_by" data-field="add_time">下单时间</span></th><th width="60"><span data-tdtype="order_by" data-field="rebate_money">返利金额</span></th>                <th width="120"><span data-tdtype="order_by" data-field="rebate_time">返利时间</span></th>
                <th width="60"><span data-tdtype="order_by" data-field="status">{:L('status')}</span></th>                <th width="120"><span data-tdtype="order_by" data-field="complain_time">申诉时间</span></th>                <th width="60"><span data-tdtype="order_by" data-field="uid">会员id</span></th>                <th width="60"><span data-tdtype="order_by" data-field="username">会员名</span></th>
                <th width="90">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="left" style="width:210px;">{$val.title}</td><td align="center">{$val.order_no}</td>
                <td align="center">{$val.num}</td>
                <td align="center">{$val.price}</td>				
		<td align="center" style="width:60px;"><if condition="$val['order_status'] eq '订单失效'"> <font color="red">{$val.order_status}</font><else/><font color="green">{$val.order_status}</font></if></td> 
		<td align="center">{$val.pay_money}</td> 
		<td align="center">{$val.end_money}</td> 
		<td align="center">{$val.estimate_income}</td>         <td align="center">{$val.commission}</td> 
                <td align="center"><if condition="$val['create_time'] neq ''">{$val.create_time}</if></td>               <td align="center">{$val.rebate_money}</td>                 <td align="center"><if condition="$val['rebate_time'] neq ''">{$val.rebate_time}</if></td>   
                <td align="center"><if condition="$val['rebate_status'] eq '2'">订单异常<elseif condition="$val['rebate_status'] eq '1'" /><font color="#0a9000"><b>已返利</b></font><else/><font color="#e77800">未返利</font></if></td>                <td align="center"><if condition="$val['create_time'] neq ''">{$val.complain_time}</if></td>								<td align="center">{$val.uid}</td>                <td align="center">{$val.username}</td>
                <td align="center">
				<a href="{:u('rebatecomp/edit', array('id'=>$val['order_no']))}">审核</a>				</td>
            </tr>
            </volist>
        </tbody>
    </table>
    </div>
    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('rebatecomp/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
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
</script>
</body>
</html>