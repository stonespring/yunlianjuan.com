<div class="dialog_content">    <form id="info_form" name="info_form" action="{:u('user_invite_day_log/add')}" method="post">    <table width="100%" class="table_form">        <tr>
            <th width="80">会员ID :</th>            <td><input type="text" name="uid" id="uid" class="input-text"></td>        </tr>        <tr>            <th>邀请数 :</th>            <td><input type="text" name="invite_num" id="invite_num" class="input-text"></td>        </tr>
        <tr>            <th>邀请日期 :</th>            <td><input type="text" name="invite_day" id="invite_day" class="date input-text" value="" size="27"></td>        </tr>    </table>    </form></div>
<script>Calendar.setup({    inputField : "invite_day",    ifFormat   : "%Y-%m-%d",    showsTime  : true,    timeFormat : "24"});
$(function(){
    $.formValidator.initConfig({formid:"info_form",autotip:true});
    $("#uid").formValidator({ onshow:lang.please_input+'会员ID', onfocus:lang.please_input+'会员ID', oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+'会员ID'}).regexValidator({regexp:"^[1-9][0-9]*$",onerror:"请填写整数"});    $("#invite_num").formValidator({ onshow:lang.please_input+'邀请数', onfocus:lang.please_input+'邀请数', oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+'邀请数'}).regexValidator({regexp:"^[0-9][0-9]*$",onerror:"请填写整数"});    
    $('#info_form').ajaxForm({success:complate,dataType:'json'});
    function complate(result){
        if(result.status == 1){
            $.dialog.get(result.dialog).close();
            $.feihutaoke.tip({content:result.msg});
            window.location.reload();
        } else {
            $.feihutaoke.tip({content:result.msg, icon:'alert'});
        }
    }
});
</script>