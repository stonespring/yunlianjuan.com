<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script src="/static/js/fileuploader.js"></script>
<form id="info_form" name="info_form" action="{:u('agent/editapply')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">申请审核</li>
		</ul>
		<div class="J_panes">
        <div class="content_list pad_10">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
 
			<tr>
				<th>用户ID :</th>
				<td>
                	<input type="text" readonly="readonly" name="uid" id="J_uid" class="input-text" size="20" value="{$apply_user.uid}">
                </td>
			</tr>
            <tr>
				<th>真实姓名 :</th>
				<td><input type="text" readonly="readonly" name="realname" id="J_realname" class="input-text" size="60" value="{$apply_user.realname}"></td>
			</tr>
			 <tr>
				<th>申请时间 :</th>
				<td><input type="text" readonly="readonly" name="add_time" id="J_add_time" class="input-text" size="60" value="{$apply_user.add_time|date='Y-m-d H:i:s',###}"></td>
			</tr>
			 <tr>
				<th>支付宝账号 :</th>
				<td><input type="text" readonly="readonly" name="alipay" id="J_alipay" class="input-text" size="60" value="{$apply_user.alipay}"></td>
			</tr>
            <tr>
				<th>支付宝名称 :</th>
			<td><input type="text" readonly="readonly" name="name" id="J_name" class="input-text" size="60" value="{$apply_user.name}"></td>
 			</tr>
 				<th>联系QQ :</th>
			<td><input type="text" readonly="readonly" name="qq" id="J_qq" class="input-text" size="60" value="{$apply_user.qq}"></td>
 			</tr>
            <tr>
				<th>省份 :</th>
				<td><input type="text" readonly="readonly" name="shengfen" id="J_shengfen" class="input-text" size="60" value="{$apply_user.shengfen}"></td>
			</tr>
            <tr>
				<th>申请理由 :</th>
				<td><textarea name="reason" id="J_reason" cols="80" rows="4" readonly="readonly">{$apply_user.reason}</textarea></td>
			</tr>	
			 <tr>
				<th>操作 :</th>
            <td>
                <select name="operation" id="J_operation">
                   <option value="拒绝申请">拒绝申请</option>
                    <volist name="agent_list" id="agent_info" >
                        <option value="{$agent_info.name}">同意并设为{$agent_info.name}</option>
                    </volist>
                </select>
            </td>
			</tr>
		</table>
		</div>

        
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;"></div>
	</div>
</div>
</form>
<include file="public:footer" />
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.config.js"></script>
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.all.js"></script>
<script type="text/javascript">
	function datu(){
		var width=document.getElementById("J_ss_pz").style.width;
		if(width="300"){
		document.getElementById("J_ss_pz").style.width="1000px";
		}
		else{
		document.getElementById("J_ss_pz").style.width="300px";
		}
		
	}

</script>
</body>
</html>