<include file="public:header" />
<div class="pad_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
                    <input type="hidden" name="g" value="admin" />
                    <input type="hidden" name="m" value="agent_rebate_log" />
                    <input type="hidden" name="a" value="index" />
                    <input type="hidden" name="menuid" value="{$menuid}" />
                    &nbsp;&nbsp;用户id :
                    <input type="text" name="uid" class="input-text" size="12" value="{$search.uid}" />
                    邀请时间 :
                    <input type="text" name="time_start" id="J_time_start" class="date" size="12" value="{$search.time_start}">
                    -
                    <input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">                                        &nbsp;&nbsp;来源 :                    <select name="rebate_status">                    <option value="">-{:L('all')}-</option>                    <option value="0" <if condition="$search.rebate_status eq '0'">selected="selected"</if>>等待记录</option>                    <option value="1" <if condition="$search.rebate_status eq '1'">selected="selected"</if>>等待返利</option>                    <option value="2" <if condition="$search.rebate_status eq '2'">selected="selected"</if>>已返利</option>                    <option value="3" <if condition="$search.rebate_status eq '3'">selected="selected"</if>>申诉或异常</option>                    </select>                                        &nbsp;&nbsp;
                    <input type="submit" name="search" class="btn" value="搜索" />
                    <div class="bk8"></div>                
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
    <div class="J_tablelist table_list" data-acturi="{:U('rebate_day_log/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="10"><span data-tdtype="order_by" data-field="id">ID</span></th>                <th width="60"><span data-tdtype="order_by" data-field="uid">会员id</span></th>                <th width="60"><span data-tdtype="order_by" data-field="username">会员名</span></th>                <th width="40"><span data-tdtype="order_by" data-field="parent_uid">上级代理</span></th>	                <th width="60"><span data-tdtype="order_by" data-field="order_no">订单号</span></th>                <th width="60"><span data-tdtype="order_by" data-field="title">商品标题</span></th>                <th width="40"><span data-tdtype="order_by" data-field="agent_uid">来源</span></th>					
                <th width="40"><span data-tdtype="order_by" data-field="rebate_money">返利金额(元)</span></th>                <th width="120"><span data-tdtype="order_by" data-field="create_time">下单时间</span></th>
                <th width="120"><span data-tdtype="order_by" data-field="rebate_time">返利时间</span></th>                <th width="40"><span data-tdtype="order_by" data-field="rebate_status">状态</span></th>
            </tr>
        </thead>
        <tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center">{$val.id}</td>                <td align="center">{$val.uid}</td>                <td align="center">{$val.username}</td>
                <td align="center">{$val.parent_uid}</td>
                <td align="center">{$val.order_no}</td>				<td align="center">{$val.title}</td>				<td align="center">{$val.agent_uid}</td>				<td align="center">{$val.rebate_money}</td>				<td align="center">{$val.create_time}</td>				<td align="center">{$val.rebate_time}</td>                <td align="center"><if condition="$val.rebate_status eq 0"><font color="#969696"><b>等待记录</b></font><elseif condition="$val.rebate_status eq 1"/><font color="#ff9a38"><b>等待返利</b></font><elseif condition="$val.rebate_status eq 2"/><font color="#04bc00"><b>已返利</b></font><else/><font color="#ff3c1c"><b>申诉或异常</b></font></if></td>

            </tr>
            </volist>
        </tbody>
    </table>
    </div>        <div class="btn_wrap_fixed">        <div id="pages">{$page}</div>    </div>
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