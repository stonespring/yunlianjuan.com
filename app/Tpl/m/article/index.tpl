<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
</head>
<body>
<div class="main">    
<include file='public:articleheader'/>
<include file='public:top'/>
        <div class="app">
            <header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back" title="返回上一页"></a></span>
                    <span id="t-index">时尚资讯</span>
                     <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>                
                </div>
            </header>		
        <div id="goods">
<section class="goods" id="goods">
    <ul class="goods-list clear">
<include file='public:articlelist'/>	
	</ul>
</section>
<div class="paging">
<div class="paging-nav next">
{$page}
</div>    
</div>
</div>
<include file='public:footer'/>
</div>
</div>
<include file='public:footjs'/>
</body>
</html>