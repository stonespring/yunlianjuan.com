<include file="public:header" />
<!--返利列表-->
<div class="pad_10" >
    <div class="J_tablelist table_list" >
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="10"><span data-tdtype="order_by" data-field="id">ID</span></th>
                <th><span data-tdtype="order_by" data-field="title">用户ID</span></th><th width="60"><span data-tdtype="order_by" data-field="order_no">申请时间</span></th>
                <th ><span>姓名</span></th>
                <th ><span>支付宝</span></th>
		<th width="60"><span >省份</span></th>
		<th><span>理由</span></th>
                <th width="90">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
            <volist name="applylist" id="val" >
            <tr>
                <td align="center" style="width:20px;"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>				<td align="center" style="width:20px;">{$val.id}</td>
                <td align="center" style="width:40px;">{$val.uid}</td>				<td align="center" style="width:120px;">{$val.add_time|date='Y-m-d H:i:s',###}</td>
                <td align="center" style="width:60px;">{$val.realname}</td>				<td align="center" style="width:120px;">{$val.alipay}</td>
                <td align="center" style="width:40px;">{$val.shengfen}</td>
                <td align="center">{$val.reason}</td>
                <td align="center">
				<a href="{:u('agent/editapply', array('id'=>$val['uid']))}">审核</a>				</td>
            </tr>
            </volist>
        </tbody>
    </table>
    </div>
</div>
<include file="public:footer" />
<link rel="stylesheet" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
</body>
</html>