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
                    <input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">
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
                <th width="10"><span data-tdtype="order_by" data-field="id">ID</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="rebate_money">返利金额(元)</span></th>
                <th width="120"><span data-tdtype="order_by" data-field="rebate_time">返利时间</span></th>
            </tr>
        </thead>
        <tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center">{$val.id}</td>
                <td align="center">{$val.parent_uid}</td>
                <td align="center">{$val.order_no}</td>

            </tr>
            </volist>
        </tbody>
    </table>
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