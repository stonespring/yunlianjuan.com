<include file="public:header" />
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post" enctype="multipart/form-data">
	<table width="100%" class="table_form">
		<tr>
            <th width="150">{:L('site_url')} :</th>
            <td><input type="text" name="setting[site_url]" class="input-text" size="30" value="{:C('ht_site_url')}">
	    <span class="gray ml10">网站地址必须以http:// 开头 / 斜杠结尾</span>
	    </td>
        </tr>
        <tr>
        <tr>
            <th width="150">{:L('site_name')} :</th>
            <td><input type="text" name="setting[site_name]" class="input-text" size="30" value="{:C('ht_site_name')}"><span class="red ml10">尽量简短</span></td>
        </tr>
        
        <tr>
            <th width="150">授权码:</th>
            <td><input type="text" name="setting[site_secret]" class="input-text" size="40" value="{:C('ht_site_secret')}">
              <span class="gray ml10">请联系后天网络授权QQ597990793 旺旺lusunchenjun 论坛<a href="http:\/\/houtianbest.cn" target="_blank">houtianbest.cn</a></span></td>
        </tr>
            </tr>

		<tr>
            <th width="150">网站SEO标题 :</th>
            <td><input type="text" name="setting[site_title]" class="input-text" size="80" value="{:C('ht_site_title')}">
              关键字请进去<a href="/index.php?g=admin&amp;m=seo&amp;a=page&amp;menuid=282">SEO设置</a>里设置</td>
        </tr>
		<tr>
            <th width="150">网站SEO描述 :</th>
            <td>
			<textarea rows="4" cols="80" name="setting[site_description]">{:C('ht_site_description')}</textarea>			
			</td>
        </tr>
        <tr>
            <th>{:L('site_icp')} :</th>
            <td><input type="text" name="setting[site_icp]" class="input-text" size="30" value="{:C('ht_site_icp')}"></td>
        </tr>
		<tr>
            <th>客服QQ :</th>
            <td><input type="text" name="setting[qq]" class="input-text" size="30" value="{:C('ht_qq')}"><span class="gray ml10">没有可以留空</span></td>
        </tr>
		<tr>
            <th>客服电话 :</th>
            <td><input type="text" name="setting[phone]" class="input-text" size="30" value="{:C('ht_phone')}"><span class="gray ml10">没有可以留空</span></td>
        </tr>
		<tr>
            <th>客服微信 :</th>
            <td><input type="text" name="setting[WeChat]" class="input-text" size="30" value="{:C('ht_WeChat')}"><span class="gray ml10">没有可以留空</span></td>
        </tr>
        <tr>
            <th>{:L('statistics_code')} :</th>
            <td><textarea rows="4" cols="80" name="setting[statistics_code]">{:C('ht_statistics_code')}</textarea><span class="gray ml10">放网站统计代码,以及QQ新浪百度等header验证代码,验证后请删除验证代码</span></td>
        </tr>
		 <tr>
            <th width="150">{:L('ipban_switch')} :</th>
            <td>
                <label><input type="radio" <if condition="C('ht_ipban_switch') eq '1'">checked="checked"</if> value="1" name="setting[ipban_switch]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" <if condition="C('ht_ipban_switch') eq '0'">checked="checked"</if> value="0" name="setting[ipban_switch]"> {:L('close')}</label>
                <span class="gray ml10">如果本站没有添加禁止IP地址库，建议关闭改功能提升性能</span>
            </td>
        </tr>

		 <tr>
            <th width="150">旺旺昵称:</th>
            <td>
                <input type="text" name="setting[kefu_html]" class="input-text" size="80" value="{:C('ht_kefu_html')}">
                
            </td>
                    <tr>
            <th width="150">数据推送token :</th>
            <td><input type="text" name="setting[site_token]" class="input-text" size="80" value="{:C('ht_site_token')}">
			<span class="gray ml10">百度站长工具链接主动推送授权token，请登录百度站长工具获取</span>
			<a href="http://houtianbest.cn/thread-2-1-1.html">申请教程</a></td>
        </tr>
            <th width="150">采集器秘钥 :</th>
            <td>
                <input type="text" name="setting[robots_key]" class="input-text" size="50" value="{:C('ht_robots_key')}" /><br>
	            <span class="gray ml10">采集器密匙只要是后天网络论坛vip免费联系QQ<a href="tencent://message/?uin=597990793&amp;Site=http://houtianbest.cn&amp;Menu=yes" target="_blank">597990793</a>索要</span></td>
        </tr>
                	<th>是否开启全自动优惠券采集 :</th>
        	<td>
            	<label><input type="radio" class="J_change_quancaiji" <if condition="C('ht_site_quancaiji') eq '1'">checked="checked"</if> value="1" name="setting[site_quancaiji]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_quancaiji" <if condition="C('ht_site_quancaiji') eq '0'">checked="checked"</if> value="0" name="setting[site_quancaiji]"> {:L('close')}</label>
				<span class="gray ml10">更换状态后需清理缓存 <a href="http://houtianbest.cn/thread-3-1-1.html" target="_blank">需要先设置高佣金PID在开启点击查看教程</a></span>
            </td>
    	</tr>
		        	 <tr>
            <th width="150">搜索是否显示无券商品:</th>
            <td>
				<label><input type="radio" class="J_change_quancaiji" <if condition="C('ht_no_coupon') eq '1'">checked="checked"</if> value="1" name="setting[no_coupon]"> 不显示</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_quancaiji" <if condition="C('ht_no_coupon') eq '0'">checked="checked"</if> value="0" name="setting[no_coupon]"> 显示(用户购买无券商品会提示优惠券已失效)</label>
        </tr>
		        	 <tr>
            <th width="150">淘口令API:</th>
            <td>
				<label><input type="radio" class="J_change_quancaiji" <if condition="C('ht_site_autotkl') eq '1'">checked="checked"</if> value="1" name="setting[site_autotkl]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_quancaiji" <if condition="C('ht_site_autotkl') eq '0'">checked="checked"</if> value="0" name="setting[site_autotkl]"> {:L('close')}</label>
        </tr>
            <th>淘宝数字ID:</th>
            <td><input type="text" name="setting[tbuser_id]" class="input-text" size="100" value="{:C('ht_tbuser_id')}">
			<span class="red ml10">淘口令显示的分享者淘宝号<a href="http://houtianbest.cn/thread-32-1-1.html" target="_blank">查看教程</a></span></td>
        </tr>
		
        	 <tr>
            <th width="150">优惠券高佣金PID:</th>
            <td>
                <input type="text" name="setting[yhq_pid]" class="input-text" size="80" value="{:C('ht_yhq_pid')}">     
				<span class="gray ml10"><br>
				</a></span>
            高佣金频道/鹊桥PID教程<a href="http://houtianbest.cn/thread-3-1-1.html" target="_blank">查看教程</a></td>
        </tr>
            <th>QQ登录回调地址 :</th>
            <td><input type="text" name="setting[site_uri]" class="input-text" size="100" value="{:C('ht_site_uri')}">
			<span class="red ml10">必须与申请QQ登录时填写的回调地址保持一致 教程<a href="http://houtianbest.cn/thread-7-1-1.html" target="_blank">查看教程</a></span></td>
        </tr>

		<tr>
            <th width="150">手机wap版地址 :</th>
            <td>
                <textarea rows="1" cols="80" name="setting[header_html]">{:C('ht_header_html')}</textarea>
                <span class="gray ml10"><br>填写后用手机访问pc网站将自动跳转到手机wap网站</span>
            <a href="http://houtianbest.cn/thread-8-1-1.html" target="_blank">查看教程</a></td>
        </tr>

        	<th>是否开启自动跳转 :</th>
        	<td>
            	<label><input type="radio" class="J_change_zidong" <if condition="C('ht_site_zidong') eq '1'">checked="checked"</if> value="1" name="setting[site_zidong]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_zidong" <if condition="C('ht_site_zidong') eq '0'">checked="checked"</if> value="0" name="setting[site_zidong]"> {:L('close')}</label>
				<span class="gray ml10">更换状态后需清理缓存</span>
            </td>
    	</tr>

		<tr>
            <th width="150">淘点金代码 :</th>
            <td>
                <textarea rows="6" cols="80" name="setting[taojindian_html]">{:C('ht_taojindian_html')}</textarea>
                <span class="gray ml10"><br>请填写从阿里妈妈申请的与域名对应的完整的淘点金代码，否则将无法跳转。淘点金申请教程<a href="http://houtianbest.cn/thread-9-1-1.html" target="_blank">查看教程</a></span>
            </td>
        </tr>

    	<tr>
        	<th>{:L('site_status')} :</th>
        	<td>
            	<label><input type="radio" class="J_change_status" <if condition="C('ht_site_status') eq '1'">checked="checked"</if> value="1" name="setting[site_status]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_status" <if condition="C('ht_site_status') eq '0'">checked="checked"</if> value="0" name="setting[site_status]"> {:L('close')}</label>
            </td>
    	</tr>
        <tr id="J_closed_reason" <if condition="C('ht_site_status') eq 1">class="hidden"</if>>
        	<th>{:L('closed_reason')} :</th>
        	<td><textarea rows="4" cols="50" name="setting[closed_reason]" id="closed_reason">{:C('ht_closed_reason')}</textarea></td>
    	</tr>
        <tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" value="{:L('submit')}"/></td>
    	</tr>
	</table>
	</form>
</div>
<include file="public:footer" />
<script>
$(function(){
    $('.J_change_status').live('click', function(){
        if($(this).val() == '0'){
            $('#J_closed_reason').fadeIn();
        }else{
            $('#J_closed_reason').fadeOut();
        }
    });
});
</script>
</body>
</html>