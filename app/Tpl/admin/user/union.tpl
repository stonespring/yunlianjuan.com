<include file="public:header" />
<div class="pad_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
                    <input type="hidden" name="g" value="admin" />
                    <input type="hidden" name="m" value="user_invite_day_log" />
                    <input type="hidden" name="a" value="index" />
                    <input type="hidden" name="menuid" value="{$menuid}" />
                    &nbsp;&nbsp;用户id :
                    <input type="text" name="uid" class="input-text" size="12" value="{$search.uid}" />
                    邀请时间 :
                    <input type="text" name="time_start" id="J_time_start" class="date" size="12" value="{$search.time_start}">
                    -
                    <input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">                                        &nbsp;&nbsp;来源 :                    <select name="add_flg">                    <option value="">-{:L('all')}-</option>                    <option value="1" <if condition="$search.add_flg eq '1'">selected="selected"</if>>管理员</option>                    <option value="0" <if condition="$search.add_flg eq '0'">selected="selected"</if>>用户</option>                    </select>                                        &nbsp;&nbsp;
                    <input type="submit" name="search" class="btn" value="搜索" />
                    <div class="bk8"></div>                
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
    <div class="J_tablelist table_list" data-acturi="{:U('user_invite_day_log/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="10"><span data-tdtype="order_by" data-field="id">ID</span></th>                <th width="60"><span data-tdtype="order_by" data-field="uid">会员id</span></th>                <th width="60"><span data-tdtype="order_by" data-field="username">会员名</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="invite_num">邀请数</span></th>
                <th width="120"><span data-tdtype="order_by" data-field="create_time">邀请时间</span></th>                <th width="40"><span data-tdtype="order_by" data-field="add_flg">来源</span></th>
                <th width="90">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center">{$val.id}</td>                <td align="center">{$val.uid}</td>                <td align="center">{$val.username}</td>
                <td align="center">{$val.invite_num}</td>
                <td align="center">{$val.invite_day}</td>                <td align="center"><if condition="$val.add_flg eq 1">管理员<else/>用户</if></td>
                <td align="center">                    <a href="javascript:;" class="J_showdialog" data-uri="{:U('user_invite_day_log/edit', array('id'=>$val['id']))}" data-title="{:L('edit')} - {$val.id}"  data-id="edit" data-width="500" data-height="160">{:L('edit')}</a> |                     <a href="javascript:;" class="J_confirmurl" data-acttype="ajax" data-uri="{:U('user_invite_day_log/delete', array('id'=>$val['id']))}" data-msg="{:sprintf(L('confirm_delete_one'),$val['id'])}">{:L('delete')}</a>                </td>
            </tr>
            </volist>
        </tbody>
    </table>
    </div>    <div class="btn_wrap_fixed">        <div id="pages">{$page}</div>    </div>
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