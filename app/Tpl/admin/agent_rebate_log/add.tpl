<div class="dialog_content">
            <th width="80">会员ID :</th>
        <tr>
<script>
$(function(){
    $.formValidator.initConfig({formid:"info_form",autotip:true});
    $("#uid").formValidator({ onshow:lang.please_input+'会员ID', onfocus:lang.please_input+'会员ID', oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+'会员ID'}).regexValidator({regexp:"^[1-9][0-9]*$",onerror:"请填写整数"});
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