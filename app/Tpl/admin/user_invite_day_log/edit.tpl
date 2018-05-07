<!--编辑角色-->
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:u('user_invite_day_log/edit')}" method="post">
    <table width="100%" class="table_form">
        <tr>
            <th width="120">会员ID :</th>
            <td>{$info.uid}</td>
        </tr>        <tr>            <th>邀请数 :</th>            <td><input type="text" name="invite_num" id="invite_num" class="input-text" value="{$info.invite_num}" size="10"></td>        </tr>
        <tr>            <th>邀请日期  :</th>            <td><input type="text" name="invite_day" id="invite_day" class="date input-text" value="{$info.invite_day}" size="27"></td>        </tr>
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
<script>Calendar.setup({    inputField : "invite_day",    ifFormat   : "%Y-%m-%d",    showsTime  : true,    timeFormat : "24"});$(function(){    $.formValidator.initConfig({formid:"info_form",autotip:true});    $("#invite_num").formValidator({ onshow:lang.please_input+'邀请数', onfocus:lang.please_input+'邀请数', oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+'邀请数'}).regexValidator({regexp:"^[0-9][0-9]*$",onerror:"请填写整数"});        $('#info_form').ajaxForm({success:complate,dataType:'json'});    function complate(result){        if(result.status == 1){            $.dialog.get(result.dialog).close();            $.feihutaoke.tip({content:result.msg});            window.location.reload();        } else {            $.feihutaoke.tip({content:result.msg, icon:'alert'});        }    }});
</script>