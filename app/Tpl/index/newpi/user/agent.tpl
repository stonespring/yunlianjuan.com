<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<style type="text/css">
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
.utai {
background: url(__STATIC__/image/anniu_lv.png) no-repeat left top;
display: block;
height: 30px;
width: 77px;
line-height: 30px;
color: #FFF;
margin: 5px 0;
cursor: pointer;
}
.td_border {
border-left: 1px solid #DCDCDC;
border-bottom: 1px solid #DCDCDC;
}
.td_borders {
border-right: 1px solid #DCDCDC;
border-bottom: 1px solid #DCDCDC;
padding: 5px;
border-left: 1px solid #DCDCDC;
}
.td_bo {
border: 1px solid #DCDCDC;
border-top: 0;
text-align: center;
}


.tiandanhao{width:314px;height:181px;position:fixed;top:200px;left:39%;z-index:1001;background:#FFF;}
.tiandanhaotop{padding:0 28px 0 10px;font-weight:bold;height:35px; line-height:28px;font-weight:bold;
}
.bott {
height: 38px;
line-height: 38px;
text-align: center;
margin-top: 16px;
}
.queding {
border: 0;
width: 65px;
height: 30px;
background: 0;
}
.chashen {
width: 550px;
position: fixed;
top: 100px;
left: 500px;
z-index: 1001;
background: #FFF;
height: 500px;
overflow-y: auto;
overflow-x: hidden;
}
</style>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>



<div class="main mb20 {:C('ht_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
				<eq name ="info.agent_id" value="0">
					<li id="agentapply"><a href="{:U('user/agentapply')}">申请代理</a></li>
					</eq>
					<li id="agent"><a href="{:U('user/agent')}">代理订单</a></li>
					<li id="getIvtFriends"><a href="{:U('user/getIvtFriends')}">我的队伍</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #agent').addClass('active');
			</script>
			
<div style="margin:10px 10px 10px 0px;">
			<table width="765" border="0" cellpadding="0" cellspacing="0" style="background:url(__STATIC__/image/shang_bgw.png) repeat-x left top">
			  <tbody>
			  
			  
			  <tr style="height:35px;line-height:35px;background:#-E0E0E0"> 	 		 	
				   <td align="center" class="tdg">订单号</td> 	
				   <td align="center" class="tdg">提交时间/下单时间</td> 	 	
			      <td align="center" class="tdg" style="width:100px;margin:10px 0">商品标题</td>
				   <td align="center" class="tdg">来源</td>
				    <td align="center" class="tdg">返现</td>
					 <td align="center" class="tdg">返现时间</td>
					   <td align="center" class="tdg">订单状态</td>
			  </tr>
		<notempty name="agent_list">   	  
			  <volist name="agent_list" id="vall">
			<tr>
					 <td align="center" class="td_border">{$vall.order_no|substr=0,7}*****{$vall.order_no|substr=12}</td>
					 <td align="center" class="td_border" style="width:140px;">{$vall.create_time}</td>
			 <td align="center" class="td_border" style="padding:5px;width:140px;"><div style="width:140px;height:30px;line-height:30px;overflow:hidden">{$vall.title}</div></a></td>
					 <td align="center" class="td_border">{$vall.username}</td>
					   <td align="center" class="td_border">{$vall.rebate_money}</td>
					  <td align="center" class="td_border" style="width:120px;">{$vall.rebate_time|substr=0,10}</td>
					    <td align="center" class="td_border">
						 <if condition="$vall.rebate_status eq 1">
						   <font color="#fa6e19">等待返利</font>
						   <elseif condition="$vall.rebate_status eq 2"/>
						   <font color="#379200">已返利</font>
						   <elseif condition="$vall.rebate_status eq 0"/>
						   <font color="#ffa619">等待记录</font>
						   <elseif condition="$vall.rebate_status eq 3"/>
						   <font color="#e00000">申诉或异常</font>
						   </if>
						</td>
			  </tr>
			  
			  </volist>
					<else />
					<tr><td colspan="7">
						<div style="width:100%; text-align:center;float:left;color:red;font-size:14px;">
						<p>还没有订单哦！</p>
						<p>邀请好友加入省钱队伍<a target="_blank" href="{:U('user/union')}"style="font-size:16px;color:blue;">  <u>赶快行动吧</u>！</a></p>
						</div>
						</td></tr>
					</notempty>
			  
			</tbody></table>				<div class="page page3">
					<div class="pageNav">{$page}</div>
				</div>
	     </div>

		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
<script src="__STATIC__/js/countdowns.js"></script>
<script>
    // 多个倒计时需要这样调用
    $('.J_CountDown').each(function () {
    	
        	
        var $this = $(this),
            data = $this.attr('data-config');
        $this.countDown(eval('(' + data + ')'),{$nowtime});
        
    });

    $('#countDown2').countDown();
</script>
</body>
</html>

