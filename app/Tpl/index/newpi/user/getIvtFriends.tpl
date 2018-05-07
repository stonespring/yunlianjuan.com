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
			$('.menu-tag ul #getIvtFriends').addClass('active');
			</script>
		
<div style="margin:10px 10px 10px 0px;">
			<table width="765" border="0" cellpadding="0" cellspacing="0" style="background:url(__STATIC__/image/shang_bgw.png) repeat-x left top">
			  <tbody>
			  
			  
			  <tr style="height:35px;line-height:35px;background:#-E0E0E0"> 	 		 	
				   <td align="center" class="tdg">头像</td> 	
				   <td align="center" class="tdg">用户ID</td> 	 	
			      <td align="center" class="tdg">用户名</td>
				   <td align="center" class="tdg">邀请时间</td>
				    <td align="center" class="tdg">QQ</td>
					 <td align="center" class="tdg">邮箱</td>
			  </tr>
			 <notempty name="friends_list"> 	  
			  <volist name="friends_list" id="vall">
			<tr>
					 <td align="center" class="td_border"><img src="{:avatar($vall['id'], 100)}" width="45" height="45" border="0"/></td>
					 <td align="center" class="td_border" style="width:80px;">{$vall.id}</td>
			 <td align="center" class="td_border" style="padding:5px;width:140px;"><div style="width:140px;height:30px;line-height:30px;overflow:hidden">{$vall.ousername}</div></a></td>
					  <td align="center" class="td_border" style="width:120px;">{$vall.add_time|date='Y-m-d',###}</td>
					 <td align="center" class="td_border">{$vall.qq}</td>
					   <td align="center" class="td_border">{$vall.email}</td>
			  </tr>
			  
			  </volist>
					<else />
					<tr><td colspan="6">
						<div style="width:100%; text-align:center;float:left;color:red;font-size:14px;">
						<p>队伍里还没有小伙伴哦！</p>
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

