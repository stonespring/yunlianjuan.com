<!--编辑角色-->
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:u('rebate_day_log/edit')}" method="post">
    <table width="100%" class="table_form">
        <tr>
            <th width="120">会员ID :</th>
            <td>{$info.uid}</td>
        </tr>
        <tr>
        <if condition="$info.id gt 1">
        <tr>
            <th>{:L('enabled')} :</th>
            <td>
                <input type="radio" name="status" class="radio_style" value="1" <if condition="$info.status eq 1"> checked="checked"</if>> &nbsp;{:L('yes')}&nbsp;&nbsp;&nbsp;
                <input type="radio" name="status" class="radio_style" value="0" <if condition="$info.status eq 0"> checked="checked"</if>> &nbsp;{:L('no')}
            </td>
        </tr>
        </if>
    </table>
    <input type="hidden" name="id" id="id" value="{$info.id}" />
    </form>
</div>
<script>
</script>