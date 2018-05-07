<include file="public:header" />
<!--采集 设置-->
<div class="subnav">
    <div class="content_menu ib_a blue line_x">
		<a  class="on"><em>采集设置</em></a>
	</div>
</div>
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post">
		<table width="100%" class="table_form contentWrap">
			<tr>
				<th width="150">默认活动时间 :</th>
				<td><input type="text" name="setting[coupon_add_time]" size="10" class="input-text" value="{:C('ht_coupon_add_time')}" />&nbsp;&nbsp;小时&nbsp;&nbsp;<span class="gray">一般72小时，三天过期（采集的时候自动设置）</span></td>
			</tr>
			<tr>
				<th width="150">前台管理员 :</th>
				<td><input type="text" name="setting[index_admin]" size="10" class="input-text" value="{:C('ht_index_admin')}" />&nbsp;&nbsp;&nbsp;&nbsp;<span class="gray">前台管理员</span></td>
			</tr>
            <tr>
		
			</tr>
			<tr>
				<th width="150">设置阿里妈妈cookie :</th>
				<td><textarea rows="10" cols="100" name="setting[cookie]">{:C('ht_cookie')}</textarea>&nbsp;&nbsp;&nbsp;<span class="gray"><a href="http://houtianbest.cn/thread-11-1-1.html" target="_blank">点此查看获取教程</a></span></td>
			</tr>
			<tr>


		  </tr>	
		  <tr>             
		  <th width="150">设置siteid :</th>
		  <td><input type="text" name="setting[quesiteid]" id="J_sid" value="{:C('ht_quesiteid')}" class="input-text"/> 
		  推广位教程<a href="http://houtianbest.cn/thread-12-1-1.html" target="_blank">查看教程</a></td>
		  </tr>
		  <tr>
          <th width="150">鹊桥活动推广位adzoneid :</th>		  
		  <td><input type="text" name="setting[queadzoneid]" id="J_aid" value="{:C('ht_queadzoneid')}" class="input-text" />
          </td>		  
          </tr>
		  <tr>
          <th width="150">优惠券(单品)推广位adzoneid :</th>		  
		  <td><input type="text" name="setting[quanadzoneid]" id="J_qaid" value="{:C('ht_quanadzoneid')}" class="input-text" />
          </td>		  
          </tr>	
		   <tr>
          <th width="150">unid(数字或英文不超过12位) :</th>		  
		  <td><input type="text" name="setting[unid]" id="J_qaid" value="{:C('ht_unid')}" class="input-text" />
          </td>		  
          </tr>
		  
			<tr>
        		<th></th>
        		<td><input type="hidden" name="menuid"  value="{$menuid}"/>
				<input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/></td>
    		</tr>
 		</table>
	</form>
</div>

<include file="public:footer" />
<script>
$("#siteid").change(function(){
    var siteId = document.getElementById("siteid").value;	
	var stype = document.getElementById("stype").value;
	$('#J_sid').val(siteId);
    var get_url = "{:U('setting/index')}";
    $.ajax({
        url: get_url,
        type: 'POST',
        data: {
        siteId: siteId,
        stype:stype
        },
        dataType: 'json',
        success: function(result) {
            if (result.status == 1) {                
                document.getElementById("adzoneid").innerHTML = result.msg; 
				if(stype==59){
				$('#J_aid').val(document.getElementById("adzoneid").value);
				}else if(stype==29){
				$('#J_qaid').val(document.getElementById("adzoneid").value);
				}
            }
        }
    });
});
$("#adzoneid").change(function(){
var stype = document.getElementById("stype").value;
if(stype==59){
$('#J_aid').val(document.getElementById("adzoneid").value);
}else if(stype==29){
$('#J_qaid').val(document.getElementById("adzoneid").value);
}
});
</script>
</body>
</html>