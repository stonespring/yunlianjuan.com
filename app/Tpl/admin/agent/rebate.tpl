<include file="public:header" /><div class="subnav">    <h1 class="title_2 line_x">代理返利规则</h1></div>
<div class="pad_lr_10">
<form id="info_form" action="{:U('agent/rebate')}" method="post"><table width="100%" class="table_form contentWrap">        <tr>            <th width="120px">说明：</th>            <td>            <label style="color:#ff0000">代理返利基数为减去购买商品的用户的返利后剩余佣金，未到返利时间之前代理获得的佣金为冻结状态</label>            </td>			</tr>		<tr>		<th width="120px"></th>		            <td>            <label style="color:#ff0000">例如：返利系统规则设置为用户可以获得返利比率为30%返利到账时间为20天代理返利比率为50%，则如果商品佣金为100元的时候，用户在下单后20天获得价值30元的积分，代理获得35元现金奖励。</label>            </td>        </tr>    </table><div class="subnav">    <h1 class="title_2 line_x">返利比率</h1></div>
    <table width="100%" class="table_form contentWrap">      <volist name="list" id="val">        <tr>            <th width="100">{$val['name']} :</th>            <td>                用户返利后剩余佣金的<input type="text" name="agent_rebate_rule[{$val['id']}]" class="input-text" size="4" value="{$agent_rebate_rule[$val['id']]}">% (<span style="color:#ff0000">0为不赠送</span>)            </td>        </tr>      </volist>        <tr>            <th></th>            <td><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="smt mr10" /></td>        </tr>
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