<include file="public:header" />
<div class="pad_lr_10">
<form id="info_form" action="{:U('agent/rebate')}" method="post">
    <table width="100%" class="table_form contentWrap">
    </table>
</form>
</div>
<include file="public:footer" />
<script>
$('#info_form').find('input').live('keyup keydown blur',function(){
    var self = $(this);
    var val = self.val();
    val = val.replace(/[^0-9]/g,'');
    self.val(val);
});
</script>
</body>
</html>