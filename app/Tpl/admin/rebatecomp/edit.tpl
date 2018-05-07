<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script src="/static/js/fileuploader.js"></script>
<form id="info_form" name="info_form" action="{:u('rebatecomp/edit')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">申诉详情</li>
		</ul>
		<div class="J_panes">
        <div class="content_list pad_10">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
 
			<tr>
				<th>订单号 :</th>
				<td>
                	<input type="text" readonly="readonly" name="order_no" id="J_order_no" class="input-text" size="20" value="{$reba_item.order_no}">
                </td>
			</tr>
            <tr>
				<th>商品名称 :</th>
				<td><input type="text" readonly="readonly" name="title" id="J_title" class="input-text" size="60" value="{$reba_item.title}"></td>
			</tr>
			 <tr>
				<th>下单时间 :</th>
				<td><input type="text" readonly="readonly" name="create_time" id="J_create_time" class="input-text" size="60" value="{$reba_item.create_time}"></td>
			</tr>
			 <tr>
				<th>申诉时间 :</th>
				<td><input type="text" readonly="readonly" name="add_time" id="J_add_time" class="input-text" size="60" value="{$shen.add_time}"></td>
			</tr>
            <tr>
				<th>附件图片 :</th>
				<td>
					<img src="{$shen.ss_pz}" width="300" id="J_ss_pz" onclick="datu()">
				</td>
 			</tr>
 
            <tr>
				<th>联系QQ :</th>
				<td><input type="text" readonly="readonly" name="qq" id="J_qq" class="input-text" size="60" value="{$shen.qq}"></td>
			</tr>
            <tr>
				<th>联系旺旺 :</th>
				<td><input type="text" readonly="readonly" name="wangwang" id="J_wangwang" class="input-text" size="60" value="{$shen.wangwang}"></td>
			</tr>	
			 <tr>
				<th>联系电话 :</th>
				<td><input type="text" readonly="readonly" name="phone" id="J_phone" class="input-text" size="60" value="{$shen.phone}"></td>
			</tr>
			<tr>
			<th>留言记录 :</th>
			</tr>

			<volist name="shen_message" id="val" key="k" >
			<tr>
			<th></th>
            <td><p name="ss_content" id="J_ss_content">{$val}</p></td>
			</tr>
 			</volist>	
			<tr>
                <th>添加留言 :</th>
                <td><textarea name="add_msg" id="J_add_msg" cols="80" rows="3"></textarea></td>
            </tr>
			<tr>
                <th>更改状态 :</th>
                <td><select name="complain_flg" id="J_complain_flg"><option value ="申诉中">申诉中</option><option value ="结束申诉">结束申诉</option></select></td>
            </tr>

		</table>
		</div>

        
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;"></div>
	</div>
</div>
<input type="hidden" name="menuid"  value="{$menuid}"/>
<input type="hidden" name="id" value="{$info.id}" />
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