<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<style type="text/css">
<!--
*{ padding:0; margin:0; font-size:12px}
a:link,a:visited{text-decoration:none;color:#0068a6}
a:hover,a:active{color:#ff6600;text-decoration: underline}
.showMsg{border: 3px solid #c80000; zoom:1; width:600px; height:260px;position:absolute;top:44%;left:45%;margin:-87px 0 0 -225px; -moz-border-radius: 20px; -webkit-border-radius: 20px; border-radius:20px;}
.showMsg h5{background-image: url(__STATIC__/css/admin/bgimg/msg.png);background-repeat: no-repeat; color:#fff; padding-left:35px; height:25px; line-height:26px;*line-height:28px; overflow:hidden; font-size:14px; text-align:left}
.showMsg .content{ padding:46px 12px 10px 45px; font-size:14px; height:64px; text-align:left}
.showMsg .bottom{ background:#ffffff; margin: 0 1px 1px 1px;line-height:26px; *line-height:30px; height:26px; text-align:center}
.showMsg .ok,.showMsg .guery{background: url(__STATIC__/css/admin/bgimg/msg_bg.png) no-repeat 0px -560px;}
.showMsg .guery{background-position: left -460px;}
-->
</style>
<title>{:L('page_msg')}</title>
</head>

<body>
<div class="showMsg" style="text-align:center">
    <present name="error" >
    <div class="content guery" style="display:inline-block;display:-moz-inline-stack;zoom:1;*display:inline;max-width:330px;">{$error}</div>
    </present>
    <div class="bottom">
    <present name="jumpUrl" >
	{:L('sys_will')}<span style="color:blue;font-weight:bold">{$waitSecond}</span>{:L('page_jump_tip')}<a href="{$jumpUrl}">{:L('here')}</a>
	<script language="javascript">
		setTimeout("location.href='{$jumpUrl}';",{$waitSecond}*1000);
    </script>
	</present>
    </div>
</div>
</body>
</html>