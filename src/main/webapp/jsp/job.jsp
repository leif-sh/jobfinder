<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="standard">

	<head>
		<meta charset="utf-8">
		<title>JobFinder-职位</title>
		<meta name="keywords" content="JobFinder" />
		<meta name="description" content="JobFinder，互联网时代的领跑者！" />
		<link href="../css/main.css" type="text/css" rel="stylesheet">
	</head>

	<body>
		<div id="wrap">

			<div id="header">
				<div class="inner">
					<h1 class="logo"><a href="/" ka="header-home-logo" title="JobFinder"><span>JobFinder</span></a></h1>
					<div class="nav">
						<ul>
							<li class="">
								<a ka="header-home" href="index.jsp">首页</a>
							</li>
							<li class="cur">
								<a ka="header-job" href="job.jsp">职位</a>
							</li>
							<!--<li class=""><a ka="header-app" href="/app.html" >APP</a></li>-->
							<li class="">
								<a ka="header-article" href="/article/">校招</a>
							</li>
						</ul>
					</div>

					<div class="user-nav">
						<!--未登录-->
						<!--<div class="btns">
                <a href="/user/signup.html" ka="header-register"  class="btn btn-outline" >注册</a>
                <a href="/user/login.html" ka="header-login"  class="btn btn-outline" >登录</a>
            </div>-->
						<ul>
							<li class="">
								<a ka="header-chat" href="/gchat/chat.html">聊天<span class="nav-chat-num"></span></a>
							</li>
							<li class="">
								<a ka="header-delivery-box" href="/geek/deliver.html">投递箱</a>
							</li>
							<li class="">
								<a ka="header-my-resume" href="/geek/myresume.html">我的简历</a>
							</li>
							<li class="nav-figure">
								<a href="/geek/myresume.html" ka="header-username"><span class="label-text">李铁</span> <img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20161026/a6d6f3c253ad0c2e0839623048d43415668e4f6582898ba1716941858023f2e0_s.jpg" alt="" /></a>
								<div class="dropdown">
									<a href="/logout/" ka="header-logout">退出</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div id="main" class="inner">
				<div class="search-box">
					<div class="search-form">
						<form action="/job_detail/" method="get">
							<div class="search-form-con">
								<p class="ipt-wrap"><input ka="search-job-query" name="query" type="text" class="ipt-search" autocomplete="off" placeholder="搜索职位、公司" value=""></p>
								<div class="city-sel" ka="search-select-city">
									<i class="line"></i>
									<span class="label-text cur"><b data-val="101010100">北京</b><i class="icon-arrow-down"></i></span>
								</div>
							</div>
							<input type="hidden" name="scity" class="city-code" value="101010100" />
							<input type="hidden" name="source" value="2">
							<button type="submit" ka="search-job" class="btn btn-search">搜索</button>
							<div class="suggest-result" style="display: none;">
								<ul>
								</ul>
							</div>
							<div class="city-box">
								<ul class="dorpdown-province">
									<li class="cur" ka="hot-cities">热门</li>
									<li ka="sel-province-1">北京</li>
									<li ka="sel-province-2">上海</li>
									<li ka="sel-province-3">天津</li>
									<li ka="sel-province-4">重庆</li>
									<li ka="sel-province-5">黑龙江</li>
									<li ka="sel-province-6">吉林</li>
									<li ka="sel-province-7">辽宁</li>
									<li ka="sel-province-8">内蒙古</li>
									<li ka="sel-province-9">河北</li>
									<li ka="sel-province-10">山西</li>
									<li ka="sel-province-11">陕西</li>
									<li ka="sel-province-12">山东</li>
									<li ka="sel-province-13">新疆</li>
									<li ka="sel-province-14">青海</li>
									<li ka="sel-province-15">甘肃</li>
									<li ka="sel-province-16">宁夏</li>
									<li ka="sel-province-17">河南</li>
									<li ka="sel-province-18">江苏</li>
									<li ka="sel-province-19">湖北</li>
									<li ka="sel-province-20">浙江</li>
									<li ka="sel-province-21">安徽</li>
									<li ka="sel-province-22">福建</li>
									<li ka="sel-province-23">江西</li>
									<li ka="sel-province-24">湖南</li>
									<li ka="sel-province-25">贵州</li>
									<li ka="sel-province-26">四川</li>
									<li ka="sel-province-27">广东</li>
									<li ka="sel-province-28">云南</li>
									<li ka="sel-province-29">广西</li>
									<li ka="sel-province-30">海南</li>
									<li ka="sel-province-31">台湾</li>
									<li ka="sel-province-32">西藏</li>
									<li ka="sel-province-33">香港</li>
									<li ka="sel-province-34">澳门</li>

								</ul>
								<div class="dorpdown-city">
									<ul class="show">
										<li ka="hot-city-101010100" data-val="101010100">北京</li>
										<li ka="hot-city-101020100" data-val="101020100">上海</li>
										<li ka="hot-city-101280100" data-val="101280100">广州</li>
										<li ka="hot-city-101280600" data-val="101280600">深圳</li>
										<li ka="hot-city-101210100" data-val="101210100">杭州</li>
										<li ka="hot-city-101030100" data-val="101030100">天津</li>
										<li ka="hot-city-101110100" data-val="101110100">西安</li>
										<li ka="hot-city-101190400" data-val="101190400">苏州</li>
										<li ka="hot-city-101200100" data-val="101200100">武汉</li>
										<li ka="hot-city-101230200" data-val="101230200">厦门</li>
										<li ka="hot-city-101250100" data-val="101250100">长沙</li>
										<li ka="hot-city-101270100" data-val="101270100">成都</li>

									</ul>
									<ul>
										<li ka="sel-city-101010100" data-val="101010100">北京</li>
									</ul>
									<ul>
										<li ka="sel-city-101020100" data-val="101020100">上海</li>
									</ul>
									<ul>
										<li ka="sel-city-101030100" data-val="101030100">天津</li>

									</ul>
									<ul>
										<li ka="sel-city-101040100" data-val="101040100">重庆</li>
									</ul>
									<ul>
										<li ka="sel-city-101050100" data-val="101050100">哈尔滨</li>
										<li ka="sel-city-101050200" data-val="101050200">齐齐哈尔</li>
										<li ka="sel-city-101050300" data-val="101050300">牡丹江</li>
										<li ka="sel-city-101050400" data-val="101050400">佳木斯</li>
										<li ka="sel-city-101050500" data-val="101050500">绥化</li>
										<li ka="sel-city-101050600" data-val="101050600">黑河</li>
										<li ka="sel-city-101050700" data-val="101050700">伊春</li>
										<li ka="sel-city-101050800" data-val="101050800">大庆</li>
										<li ka="sel-city-101050900" data-val="101050900">七台河</li>
										<li ka="sel-city-101051000" data-val="101051000">鸡西</li>
										<li ka="sel-city-101051100" data-val="101051100">鹤岗</li>
										<li ka="sel-city-101051200" data-val="101051200">双鸭山</li>

									</ul>
									<ul>
										<li ka="sel-city-101060100" data-val="101060100">长春</li>
										<li ka="sel-city-101060200" data-val="101060200">吉林</li>
										<li ka="sel-city-101060300" data-val="101060300">四平</li>
										<li ka="sel-city-101060400" data-val="101060400">通化</li>
										<li ka="sel-city-101060500" data-val="101060500">白城</li>
										<li ka="sel-city-101060600" data-val="101060600">辽源</li>
										<li ka="sel-city-101060700" data-val="101060700">松原</li>
										<li ka="sel-city-101060800" data-val="101060800">白山</li>
										<li ka="sel-city-101060900" data-val="101060900">延边</li>

									</ul>

									<ul>

										<li ka="sel-city-101070100" data-val="101070100">沈阳</li>

										<li ka="sel-city-101070200" data-val="101070200">大连</li>

										<li ka="sel-city-101070300" data-val="101070300">鞍山</li>

										<li ka="sel-city-101070400" data-val="101070400">抚顺</li>

										<li ka="sel-city-101070500" data-val="101070500">本溪</li>

										<li ka="sel-city-101070600" data-val="101070600">丹东</li>

										<li ka="sel-city-101070700" data-val="101070700">锦州</li>

										<li ka="sel-city-101070800" data-val="101070800">营口</li>

										<li ka="sel-city-101070900" data-val="101070900">阜新</li>

										<li ka="sel-city-101071000" data-val="101071000">辽阳</li>

										<li ka="sel-city-101071100" data-val="101071100">铁岭</li>

										<li ka="sel-city-101071200" data-val="101071200">朝阳</li>

										<li ka="sel-city-101071300" data-val="101071300">盘锦</li>

										<li ka="sel-city-101071400" data-val="101071400">葫芦岛</li>

									</ul>

									<ul>

										<li ka="sel-city-101080100" data-val="101080100">呼和浩特</li>

										<li ka="sel-city-101080200" data-val="101080200">包头</li>

										<li ka="sel-city-101080300" data-val="101080300">乌海</li>

										<li ka="sel-city-101080400" data-val="101080400">通辽</li>

										<li ka="sel-city-101080500" data-val="101080500">赤峰</li>

										<li ka="sel-city-101080600" data-val="101080600">鄂尔多斯</li>

										<li ka="sel-city-101080700" data-val="101080700">呼伦贝尔</li>

										<li ka="sel-city-101080800" data-val="101080800">巴彦淖尔</li>

										<li ka="sel-city-101080900" data-val="101080900">乌兰察布</li>

										<li ka="sel-city-101081000" data-val="101081000">锡林郭勒</li>

									</ul>

									<ul>

										<li ka="sel-city-101090100" data-val="101090100">石家庄</li>

										<li ka="sel-city-101090200" data-val="101090200">保定</li>

										<li ka="sel-city-101090300" data-val="101090300">张家口</li>

										<li ka="sel-city-101090400" data-val="101090400">承德</li>

										<li ka="sel-city-101090500" data-val="101090500">唐山</li>

										<li ka="sel-city-101090600" data-val="101090600">廊坊</li>

										<li ka="sel-city-101090700" data-val="101090700">沧州</li>

										<li ka="sel-city-101090800" data-val="101090800">衡水</li>

										<li ka="sel-city-101090900" data-val="101090900">邢台</li>

										<li ka="sel-city-101091000" data-val="101091000">邯郸</li>

										<li ka="sel-city-101091100" data-val="101091100">秦皇岛</li>

									</ul>

									<ul>

										<li ka="sel-city-101100100" data-val="101100100">太原</li>

										<li ka="sel-city-101100200" data-val="101100200">大同</li>

										<li ka="sel-city-101100300" data-val="101100300">阳泉</li>

										<li ka="sel-city-101100400" data-val="101100400">晋中</li>

										<li ka="sel-city-101100500" data-val="101100500">长治</li>

										<li ka="sel-city-101100600" data-val="101100600">晋城</li>

										<li ka="sel-city-101100700" data-val="101100700">临汾</li>

										<li ka="sel-city-101100800" data-val="101100800">运城</li>

										<li ka="sel-city-101100900" data-val="101100900">朔州</li>

										<li ka="sel-city-101101000" data-val="101101000">忻州</li>

										<li ka="sel-city-101101100" data-val="101101100">吕梁</li>

									</ul>

									<ul>

										<li ka="sel-city-101110100" data-val="101110100">西安</li>

										<li ka="sel-city-101110200" data-val="101110200">咸阳</li>

										<li ka="sel-city-101110300" data-val="101110300">延安</li>

										<li ka="sel-city-101110400" data-val="101110400">榆林</li>

										<li ka="sel-city-101110500" data-val="101110500">渭南</li>

										<li ka="sel-city-101110600" data-val="101110600">商洛</li>

										<li ka="sel-city-101110700" data-val="101110700">安康</li>

										<li ka="sel-city-101110800" data-val="101110800">汉中</li>

										<li ka="sel-city-101110900" data-val="101110900">宝鸡</li>

										<li ka="sel-city-101111000" data-val="101111000">铜川</li>

									</ul>

									<ul>

										<li ka="sel-city-101120100" data-val="101120100">济南</li>

										<li ka="sel-city-101120200" data-val="101120200">青岛</li>

										<li ka="sel-city-101120300" data-val="101120300">淄博</li>

										<li ka="sel-city-101120400" data-val="101120400">德州</li>

										<li ka="sel-city-101120500" data-val="101120500">烟台</li>

										<li ka="sel-city-101120600" data-val="101120600">潍坊</li>

										<li ka="sel-city-101120700" data-val="101120700">济宁</li>

										<li ka="sel-city-101120800" data-val="101120800">泰安</li>

										<li ka="sel-city-101120900" data-val="101120900">临沂</li>

										<li ka="sel-city-101121000" data-val="101121000">菏泽</li>

										<li ka="sel-city-101121100" data-val="101121100">滨州</li>

										<li ka="sel-city-101121200" data-val="101121200">东营</li>

										<li ka="sel-city-101121300" data-val="101121300">威海</li>

										<li ka="sel-city-101121400" data-val="101121400">枣庄</li>

										<li ka="sel-city-101121500" data-val="101121500">日照</li>

										<li ka="sel-city-101121600" data-val="101121600">莱芜</li>

										<li ka="sel-city-101121700" data-val="101121700">聊城</li>

									</ul>

									<ul>

										<li ka="sel-city-101130100" data-val="101130100">乌鲁木齐</li>

										<li ka="sel-city-101130200" data-val="101130200">克拉玛依</li>

										<li ka="sel-city-101130300" data-val="101130300">昌吉</li>

										<li ka="sel-city-101130400" data-val="101130400">巴音郭楞</li>

										<li ka="sel-city-101130500" data-val="101130500">博尔塔拉</li>

										<li ka="sel-city-101130600" data-val="101130600">伊犁</li>

										<li ka="sel-city-101130700" data-val="101130700">克孜勒苏柯尔克孜</li>

									</ul>

									<ul>

										<li ka="sel-city-101150100" data-val="101150100">西宁</li>

										<li ka="sel-city-101150200" data-val="101150200">海东</li>

										<li ka="sel-city-101150300" data-val="101150300">海北</li>

										<li ka="sel-city-101150400" data-val="101150400">黄南</li>

										<li ka="sel-city-101150500" data-val="101150500">海南</li>

										<li ka="sel-city-101150600" data-val="101150600">果洛</li>

										<li ka="sel-city-101150700" data-val="101150700">玉树</li>

										<li ka="sel-city-101150800" data-val="101150800">海西</li>

									</ul>

									<ul>

										<li ka="sel-city-101160100" data-val="101160100">兰州</li>

										<li ka="sel-city-101160200" data-val="101160200">定西</li>

										<li ka="sel-city-101160300" data-val="101160300">平凉</li>

										<li ka="sel-city-101160400" data-val="101160400">庆阳</li>

										<li ka="sel-city-101160500" data-val="101160500">武威</li>

										<li ka="sel-city-101160600" data-val="101160600">金昌</li>

										<li ka="sel-city-101160700" data-val="101160700">张掖</li>

										<li ka="sel-city-101160800" data-val="101160800">酒泉</li>

										<li ka="sel-city-101160900" data-val="101160900">天水</li>

										<li ka="sel-city-101161000" data-val="101161000">白银</li>

										<li ka="sel-city-101161100" data-val="101161100">陇南</li>

										<li ka="sel-city-101161200" data-val="101161200">嘉峪关</li>

										<li ka="sel-city-101161300" data-val="101161300">临夏</li>

										<li ka="sel-city-101161400" data-val="101161400">甘南</li>

									</ul>

									<ul>

										<li ka="sel-city-101170100" data-val="101170100">银川</li>

										<li ka="sel-city-101170200" data-val="101170200">石嘴山</li>

										<li ka="sel-city-101170300" data-val="101170300">吴忠</li>

										<li ka="sel-city-101170400" data-val="101170400">固原</li>

										<li ka="sel-city-101170500" data-val="101170500">中卫</li>

									</ul>

									<ul>

										<li ka="sel-city-101180100" data-val="101180100">郑州</li>

										<li ka="sel-city-101180200" data-val="101180200">安阳</li>

										<li ka="sel-city-101180300" data-val="101180300">新乡</li>

										<li ka="sel-city-101180400" data-val="101180400">许昌</li>

										<li ka="sel-city-101180500" data-val="101180500">平顶山</li>

										<li ka="sel-city-101180600" data-val="101180600">信阳</li>

										<li ka="sel-city-101180700" data-val="101180700">南阳</li>

										<li ka="sel-city-101180800" data-val="101180800">开封</li>

										<li ka="sel-city-101180900" data-val="101180900">洛阳</li>

										<li ka="sel-city-101181000" data-val="101181000">商丘</li>

										<li ka="sel-city-101181100" data-val="101181100">焦作</li>

										<li ka="sel-city-101181200" data-val="101181200">鹤壁</li>

										<li ka="sel-city-101181300" data-val="101181300">濮阳</li>

										<li ka="sel-city-101181400" data-val="101181400">周口</li>

										<li ka="sel-city-101181500" data-val="101181500">漯河</li>

										<li ka="sel-city-101181600" data-val="101181600">驻马店</li>

										<li ka="sel-city-101181700" data-val="101181700">三门峡</li>

									</ul>

									<ul>

										<li ka="sel-city-101190100" data-val="101190100">南京</li>

										<li ka="sel-city-101190200" data-val="101190200">无锡</li>

										<li ka="sel-city-101190300" data-val="101190300">镇江</li>

										<li ka="sel-city-101190400" data-val="101190400">苏州</li>

										<li ka="sel-city-101190500" data-val="101190500">南通</li>

										<li ka="sel-city-101190600" data-val="101190600">扬州</li>

										<li ka="sel-city-101190700" data-val="101190700">盐城</li>

										<li ka="sel-city-101190800" data-val="101190800">徐州</li>

										<li ka="sel-city-101190900" data-val="101190900">淮安</li>

										<li ka="sel-city-101191000" data-val="101191000">连云港</li>

										<li ka="sel-city-101191100" data-val="101191100">常州</li>

										<li ka="sel-city-101191200" data-val="101191200">泰州</li>

										<li ka="sel-city-101191300" data-val="101191300">宿迁</li>

										<li ka="sel-city-101191400" data-val="101191400">昆山</li>

										<li ka="sel-city-101191500" data-val="101191500">新沂</li>

									</ul>

									<ul>

										<li ka="sel-city-101200100" data-val="101200100">武汉</li>

										<li ka="sel-city-101200200" data-val="101200200">襄阳</li>

										<li ka="sel-city-101200300" data-val="101200300">鄂州</li>

										<li ka="sel-city-101200400" data-val="101200400">孝感</li>

										<li ka="sel-city-101200500" data-val="101200500">黄冈</li>

										<li ka="sel-city-101200600" data-val="101200600">黄石</li>

										<li ka="sel-city-101200700" data-val="101200700">咸宁</li>

										<li ka="sel-city-101200800" data-val="101200800">荆州</li>

										<li ka="sel-city-101200900" data-val="101200900">宜昌</li>

										<li ka="sel-city-101201000" data-val="101201000">十堰</li>

										<li ka="sel-city-101201100" data-val="101201100">随州</li>

										<li ka="sel-city-101201200" data-val="101201200">荆门</li>

										<li ka="sel-city-101201300" data-val="101201300">恩施</li>

										<li ka="sel-city-101201400" data-val="101201400">仙桃</li>

										<li ka="sel-city-101201500" data-val="101201500">潜江</li>

									</ul>

									<ul>

										<li ka="sel-city-101210100" data-val="101210100">杭州</li>

										<li ka="sel-city-101210200" data-val="101210200">湖州</li>

										<li ka="sel-city-101210300" data-val="101210300">嘉兴</li>

										<li ka="sel-city-101210400" data-val="101210400">宁波</li>

										<li ka="sel-city-101210500" data-val="101210500">绍兴</li>

										<li ka="sel-city-101210600" data-val="101210600">台州</li>

										<li ka="sel-city-101210700" data-val="101210700">温州</li>

										<li ka="sel-city-101210800" data-val="101210800">丽水</li>

										<li ka="sel-city-101210900" data-val="101210900">金华</li>

										<li ka="sel-city-101211000" data-val="101211000">衢州</li>

										<li ka="sel-city-101211100" data-val="101211100">舟山</li>

									</ul>

									<ul>

										<li ka="sel-city-101220100" data-val="101220100">合肥</li>

										<li ka="sel-city-101220200" data-val="101220200">蚌埠</li>

										<li ka="sel-city-101220300" data-val="101220300">芜湖</li>

										<li ka="sel-city-101220400" data-val="101220400">淮南</li>

										<li ka="sel-city-101220500" data-val="101220500">马鞍山</li>

										<li ka="sel-city-101220600" data-val="101220600">安庆</li>

										<li ka="sel-city-101220700" data-val="101220700">宿州</li>

										<li ka="sel-city-101220800" data-val="101220800">阜阳</li>

										<li ka="sel-city-101220900" data-val="101220900">亳州</li>

										<li ka="sel-city-101221000" data-val="101221000">滁州</li>

										<li ka="sel-city-101221100" data-val="101221100">淮北</li>

										<li ka="sel-city-101221200" data-val="101221200">铜陵</li>

										<li ka="sel-city-101221300" data-val="101221300">宣城</li>

										<li ka="sel-city-101221400" data-val="101221400">六安</li>

										<li ka="sel-city-101221500" data-val="101221500">池州</li>

										<li ka="sel-city-101221600" data-val="101221600">黄山</li>

									</ul>

									<ul>

										<li ka="sel-city-101230100" data-val="101230100">福州</li>

										<li ka="sel-city-101230200" data-val="101230200">厦门</li>

										<li ka="sel-city-101230300" data-val="101230300">宁德</li>

										<li ka="sel-city-101230400" data-val="101230400">莆田</li>

										<li ka="sel-city-101230500" data-val="101230500">泉州</li>

										<li ka="sel-city-101230600" data-val="101230600">漳州</li>

										<li ka="sel-city-101230700" data-val="101230700">龙岩</li>

										<li ka="sel-city-101230800" data-val="101230800">三明</li>

										<li ka="sel-city-101230900" data-val="101230900">南平</li>

									</ul>

									<ul>

										<li ka="sel-city-101240100" data-val="101240100">南昌</li>

										<li ka="sel-city-101240200" data-val="101240200">九江</li>

										<li ka="sel-city-101240300" data-val="101240300">上饶</li>

										<li ka="sel-city-101240400" data-val="101240400">抚州</li>

										<li ka="sel-city-101240500" data-val="101240500">宜春</li>

										<li ka="sel-city-101240600" data-val="101240600">吉安</li>

										<li ka="sel-city-101240700" data-val="101240700">赣州</li>

										<li ka="sel-city-101240800" data-val="101240800">景德镇</li>

										<li ka="sel-city-101240900" data-val="101240900">萍乡</li>

										<li ka="sel-city-101241000" data-val="101241000">新余</li>

										<li ka="sel-city-101241100" data-val="101241100">鹰潭</li>

									</ul>

									<ul>

										<li ka="sel-city-101250100" data-val="101250100">长沙</li>

										<li ka="sel-city-101250200" data-val="101250200">湘潭</li>

										<li ka="sel-city-101250300" data-val="101250300">株洲</li>

										<li ka="sel-city-101250400" data-val="101250400">衡阳</li>

										<li ka="sel-city-101250500" data-val="101250500">郴州</li>

										<li ka="sel-city-101250600" data-val="101250600">常德</li>

										<li ka="sel-city-101250700" data-val="101250700">益阳</li>

										<li ka="sel-city-101250800" data-val="101250800">娄底</li>

										<li ka="sel-city-101250900" data-val="101250900">邵阳</li>

										<li ka="sel-city-101251000" data-val="101251000">岳阳</li>

										<li ka="sel-city-101251100" data-val="101251100">张家界</li>

										<li ka="sel-city-101251200" data-val="101251200">怀化</li>

										<li ka="sel-city-101251300" data-val="101251300">永州</li>

										<li ka="sel-city-101251400" data-val="101251400">湘西</li>

									</ul>

									<ul>

										<li ka="sel-city-101260100" data-val="101260100">贵阳</li>

										<li ka="sel-city-101260200" data-val="101260200">遵义</li>

										<li ka="sel-city-101260300" data-val="101260300">安顺</li>

										<li ka="sel-city-101260400" data-val="101260400">铜仁</li>

										<li ka="sel-city-101260500" data-val="101260500">毕节</li>

										<li ka="sel-city-101260600" data-val="101260600">六盘水</li>

										<li ka="sel-city-101260700" data-val="101260700">黔东南</li>

										<li ka="sel-city-101260800" data-val="101260800">黔南</li>

										<li ka="sel-city-101260900" data-val="101260900">黔西南</li>

									</ul>

									<ul>

										<li ka="sel-city-101270100" data-val="101270100">成都</li>

										<li ka="sel-city-101270200" data-val="101270200">攀枝花</li>

										<li ka="sel-city-101270300" data-val="101270300">自贡</li>

										<li ka="sel-city-101270400" data-val="101270400">绵阳</li>

										<li ka="sel-city-101270500" data-val="101270500">南充</li>

										<li ka="sel-city-101270600" data-val="101270600">达州</li>

										<li ka="sel-city-101270700" data-val="101270700">遂宁</li>

										<li ka="sel-city-101270800" data-val="101270800">广安</li>

										<li ka="sel-city-101270900" data-val="101270900">巴中</li>

										<li ka="sel-city-101271000" data-val="101271000">泸州</li>

										<li ka="sel-city-101271100" data-val="101271100">宜宾</li>

										<li ka="sel-city-101271200" data-val="101271200">内江</li>

										<li ka="sel-city-101271300" data-val="101271300">资阳</li>

										<li ka="sel-city-101271400" data-val="101271400">乐山</li>

										<li ka="sel-city-101271500" data-val="101271500">眉山</li>

										<li ka="sel-city-101271600" data-val="101271600">雅安</li>

										<li ka="sel-city-101271700" data-val="101271700">德阳</li>

										<li ka="sel-city-101271800" data-val="101271800">广元</li>

										<li ka="sel-city-101271900" data-val="101271900">阿坝</li>

										<li ka="sel-city-101272000" data-val="101272000">凉山</li>

										<li ka="sel-city-101272100" data-val="101272100">甘孜</li>

									</ul>

									<ul>

										<li ka="sel-city-101280100" data-val="101280100">广州</li>

										<li ka="sel-city-101280200" data-val="101280200">韶关</li>

										<li ka="sel-city-101280300" data-val="101280300">惠州</li>

										<li ka="sel-city-101280400" data-val="101280400">梅州</li>

										<li ka="sel-city-101280500" data-val="101280500">汕头</li>

										<li ka="sel-city-101280600" data-val="101280600">深圳</li>

										<li ka="sel-city-101280700" data-val="101280700">珠海</li>

										<li ka="sel-city-101280800" data-val="101280800">佛山</li>

										<li ka="sel-city-101280900" data-val="101280900">肇庆</li>

										<li ka="sel-city-101281000" data-val="101281000">湛江</li>

										<li ka="sel-city-101281100" data-val="101281100">江门</li>

										<li ka="sel-city-101281200" data-val="101281200">河源</li>

										<li ka="sel-city-101281300" data-val="101281300">清远</li>

										<li ka="sel-city-101281400" data-val="101281400">云浮</li>

										<li ka="sel-city-101281500" data-val="101281500">潮州</li>

										<li ka="sel-city-101281600" data-val="101281600">东莞</li>

										<li ka="sel-city-101281700" data-val="101281700">中山</li>

										<li ka="sel-city-101281800" data-val="101281800">阳江</li>

										<li ka="sel-city-101281900" data-val="101281900">揭阳</li>

										<li ka="sel-city-101282000" data-val="101282000">茂名</li>

										<li ka="sel-city-101282100" data-val="101282100">汕尾</li>

									</ul>
									<ul>

										<li ka="sel-city-101290100" data-val="101290100">昆明</li>

										<li ka="sel-city-101290200" data-val="101290200">曲靖</li>

										<li ka="sel-city-101290300" data-val="101290300">保山</li>

										<li ka="sel-city-101290400" data-val="101290400">玉溪</li>

										<li ka="sel-city-101290500" data-val="101290500">普洱</li>

										<li ka="sel-city-101290700" data-val="101290700">昭通</li>

										<li ka="sel-city-101290800" data-val="101290800">临沧</li>

										<li ka="sel-city-101290900" data-val="101290900">丽江</li>

										<li ka="sel-city-101291000" data-val="101291000">西双版纳</li>

										<li ka="sel-city-101291100" data-val="101291100">文山</li>

										<li ka="sel-city-101291200" data-val="101291200">红河</li>

										<li ka="sel-city-101291300" data-val="101291300">德宏</li>

										<li ka="sel-city-101291400" data-val="101291400">怒江</li>

										<li ka="sel-city-101291500" data-val="101291500">迪庆</li>

										<li ka="sel-city-101291600" data-val="101291600">大理</li>

										<li ka="sel-city-101291700" data-val="101291700">楚雄</li>

									</ul>
									<ul>

										<li ka="sel-city-101300100" data-val="101300100">南宁</li>

										<li ka="sel-city-101300200" data-val="101300200">崇左</li>

										<li ka="sel-city-101300300" data-val="101300300">柳州</li>

										<li ka="sel-city-101300400" data-val="101300400">来宾</li>

										<li ka="sel-city-101300500" data-val="101300500">桂林</li>

										<li ka="sel-city-101300600" data-val="101300600">梧州</li>

										<li ka="sel-city-101300700" data-val="101300700">贺州</li>

										<li ka="sel-city-101300800" data-val="101300800">贵港</li>

										<li ka="sel-city-101300900" data-val="101300900">玉林</li>

										<li ka="sel-city-101301000" data-val="101301000">百色</li>

										<li ka="sel-city-101301100" data-val="101301100">钦州</li>

										<li ka="sel-city-101301200" data-val="101301200">河池</li>

										<li ka="sel-city-101301300" data-val="101301300">北海</li>
										<li ka="sel-city-101301400" data-val="101301400">防城港</li>
									</ul>
									<ul>
										<li ka="sel-city-101310100" data-val="101310100">海口</li>
										<li ka="sel-city-101310200" data-val="101310200">三亚</li>
										<li ka="sel-city-101310300" data-val="101310300">三沙</li>
									</ul>
									<ul>
										<li ka="sel-city-101340100" data-val="101340100">台北</li>
										<li ka="sel-city-101340200" data-val="101340200">新北</li>
										<li ka="sel-city-101340300" data-val="101340300">台中</li>
										<li ka="sel-city-101340400" data-val="101340400">台南</li>
										<li ka="sel-city-101340500" data-val="101340500">高雄</li>
										<li ka="sel-city-101340600" data-val="101340600">基隆</li>
										<li ka="sel-city-101340700" data-val="101340700">嘉义</li>
										<li ka="sel-city-101340800" data-val="101340800">屏东</li>
									</ul>
									<ul>
										<li ka="sel-city-101140100" data-val="101140100">拉萨</li>
									</ul>

									<ul>
										<li ka="sel-city-101320300" data-val="101320300">香港</li>
									</ul>

									<ul>
										<li ka="sel-city-101330100" data-val="101330100">澳门</li>
									</ul>

								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="condition-box">
					<dl class="condition-city">
						<dt>城市：</dt>
						<dd>
							<a href="/c101010100/" ka="cur-city" class="selected disabled">北京</a><em class="icon-arrow-right"></em>
							<a href="javascript:;" ka="sel-business" class="link-district selected">不限</a>
							<span class="hot-text">热门城市：</span>
							<a href="/c101020100/" ka="sel-city-101020100">上海</a>
							<a href="/c101280100/" ka="sel-city-101280100">广州</a>
							<a href="/c101280600/" ka="sel-city-101280600">深圳</a>
							<a href="/c101210100/" ka="sel-city-101210100">杭州</a>
							<a href="/c101030100/" ka="sel-city-101030100">天津</a>
							<a href="/c101110100/" ka="sel-city-101110100">西安</a>
							<a href="/c101190400/" ka="sel-city-101190400">苏州</a>
							<a href="/c101200100/" ka="sel-city-101200100">武汉</a>
							<a href="/c101230200/" ka="sel-city-101230200">厦门</a>
							<a href="/c101250100/" ka="sel-city-101250100">长沙</a>
							<a href="/c101270100/" ka="sel-city-101270100">成都</a>
						</dd>
					</dl>
					<dl class='condition-district show-condition-district'>
						<dt>区域：</dt>
						<dd>
							<a class="selected" href="/c101010100/" ka="sel-business-0">不限</a>
							<a href="/c101010100/b_%E6%9C%9D%E9%98%B3%E5%8C%BA/" ka="sel-business-1">朝阳区</a>
							<a href="/c101010100/b_%E6%B5%B7%E6%B7%80%E5%8C%BA/" ka="sel-business-2">海淀区</a>
							<a href="/c101010100/b_%E4%B8%9C%E5%9F%8E%E5%8C%BA/" ka="sel-business-3">东城区</a>
							<a href="/c101010100/b_%E4%B8%B0%E5%8F%B0%E5%8C%BA/" ka="sel-business-4">丰台区</a>
							<a href="/c101010100/b_%E8%A5%BF%E5%9F%8E%E5%8C%BA/" ka="sel-business-5">西城区</a>
							<a href="/c101010100/b_%E6%98%8C%E5%B9%B3%E5%8C%BA/" ka="sel-business-6">昌平区</a>
							<a href="/c101010100/b_%E5%A4%A7%E5%85%B4%E5%8C%BA/" ka="sel-business-7">大兴区</a>
							<a href="/c101010100/b_%E9%80%9A%E5%B7%9E%E5%8C%BA/" ka="sel-business-8">通州区</a>
							<a href="/c101010100/b_%E9%A1%BA%E4%B9%89%E5%8C%BA/" ka="sel-business-9">顺义区</a>
							<a href="/c101010100/b_%E7%9F%B3%E6%99%AF%E5%B1%B1%E5%8C%BA/" ka="sel-business-10">石景山区</a>
							<a href="/c101010100/b_%E6%88%BF%E5%B1%B1%E5%8C%BA/" ka="sel-business-11">房山区</a>
							<a href="/c101010100/b_%E9%97%A8%E5%A4%B4%E6%B2%9F%E5%8C%BA/" ka="sel-business-12">门头沟区</a>
							<a href="/c101010100/b_%E6%80%80%E6%9F%94%E5%8C%BA/" ka="sel-business-13">怀柔区</a>
							<a href="/c101010100/b_%E5%AF%86%E4%BA%91%E5%8C%BA/" ka="sel-business-14">密云区</a>
							<a href="/c101010100/b_%E5%B9%B3%E8%B0%B7%E5%8C%BA/" ka="sel-business-15">平谷区</a>
							<a href="/c101010100/b_%E5%BB%B6%E5%BA%86%E5%8C%BA/" ka="sel-business-16">延庆区</a>
						</dd>
					</dl>

					<dl class="condition-experience">
						<dt>经验：</dt>
						<dd>

							<a class="selected" href="/c101010100/" ka="sel-exp-0">不限</a>
							<a href="/c101010100/e_102/" ka="sel-exp-102">应届生</a>
							<a href="/c101010100/e_103/" ka="sel-exp-103">1年以内</a>
							<a href="/c101010100/e_104/" ka="sel-exp-104">1-3年</a>
							<a href="/c101010100/e_105/" ka="sel-exp-105">3-5年</a>
							<a href="/c101010100/e_106/" ka="sel-exp-106">5-10年</a>
							<a href="/c101010100/e_107/" ka="sel-exp-107">10年以上</a>

						</dd>
					</dl>
					<dl class="condition-education">
						<dt>学历：</dt>
						<dd>

							<a href='/c101010100/' class="selected" ka="sel-degree-0">不限</a>
							<a href='/c101010100/d_207/' ka="sel-degree-207">中专及以下</a>
							<a href='/c101010100/d_206/' ka="sel-degree-206">高中</a>
							<a href='/c101010100/d_202/' ka="sel-degree-202">大专</a>
							<a href='/c101010100/d_203/' ka="sel-degree-203">本科</a>
							<a href='/c101010100/d_204/' ka="sel-degree-204">硕士</a>
							<a href='/c101010100/d_205/' ka="sel-degree-205">博士</a>

						</dd>
					</dl>
					<dl class="condition-scale">
						<dt>规模：</dt>
						<dd>

							<a href='/c101010100/' class="selected" ka="sel-scale-0">不限</a>
							<a href='/c101010100/s_301/' ka="sel-scale-301">0-20人</a>
							<a href='/c101010100/s_302/' ka="sel-scale-302">20-99人</a>
							<a href='/c101010100/s_303/' ka="sel-scale-303">100-499人</a>
							<a href='/c101010100/s_304/' ka="sel-scale-304">500-999人</a>
							<a href='/c101010100/s_305/' ka="sel-scale-305">1000-9999人</a>
							<a href='/c101010100/s_306/' ka="sel-scale-306">10000人以上</a>

						</dd>
					</dl>
					<dl class="condition-insdustry">
						<dt>行业：</dt>
						<dd>
							<span class="btn-all" ka="show-all-industry">全部行业<i class="icon-arrow-down"></i></span>

							<a href="/c101010100/" class="selected" ka="sel-industry-0">不限</a>
							<a href="/i502-c101010100/" ka="sel-industry-502">健康医疗</a>
							<a href="/i503-c101010100/" ka="sel-industry-503">生活服务</a>
							<a href="/i504-c101010100/" ka="sel-industry-504">旅游</a>
							<a href="/i505-c101010100/" ka="sel-industry-505">金融</a>
							<a href="/i506-c101010100/" ka="sel-industry-506">信息安全</a>
							<a href="/i507-c101010100/" ka="sel-industry-507">广告营销</a>
							<a href="/i508-c101010100/" ka="sel-industry-508">数据服务</a>
							<a href="/i509-c101010100/" ka="sel-industry-509">智能硬件</a>
							<a href="/i510-c101010100/" ka="sel-industry-510">文化娱乐</a>
							<a href="/i511-c101010100/" ka="sel-industry-511">网络招聘</a>
							<a href="/i512-c101010100/" ka="sel-industry-512">分类信息</a>
							<a href="/i513-c101010100/" ka="sel-industry-513">电子商务</a>
							<a href="/i514-c101010100/" ka="sel-industry-514">移动互联网</a>
							<a href="/i515-c101010100/" ka="sel-industry-515">企业服务</a>
							<a href="/i516-c101010100/" ka="sel-industry-516">社交网络</a>
							<a href="/i517-c101010100/" ka="sel-industry-517">教育培训</a>
							<a href="/i518-c101010100/" ka="sel-industry-518">O2O</a>
							<a href="/i519-c101010100/" ka="sel-industry-519">游戏</a>
							<a href="/i520-c101010100/" ka="sel-industry-520">互联网</a>
							<a href="/i521-c101010100/" ka="sel-industry-521">媒体</a>
							<a href="/i522-c101010100/" ka="sel-industry-522">IT软件</a>
							<a href="/i523-c101010100/" ka="sel-industry-523">通信</a>
							<a href="/i524-c101010100/" ka="sel-industry-524">公关会展</a>
							<a href="/i525-c101010100/" ka="sel-industry-525">房地产/建筑</a>
							<a href="/i526-c101010100/" ka="sel-industry-526">汽车</a>
							<a href="/i527-c101010100/" ka="sel-industry-527">供应链/物流</a>
							<a href="/i528-c101010100/" ka="sel-industry-528">咨询/翻译/法律</a>
							<a href="/i529-c101010100/" ka="sel-industry-529">采购/贸易</a>
							<a href="/i501-c101010100/" ka="sel-industry-501">非互联网行业</a>

						</dd>
					</dl>
					<dl class="condition-salary">
						<dt>薪资：</dt>
						<dd>

							<a href="/c101010100/" class="selected" ka="sel-salary-0">不限</a>
							<a href="/c101010100/y_1/" ka="sel-salary-1">3k以下</a>
							<a href="/c101010100/y_2/" ka="sel-salary-2">3-5k</a>
							<a href="/c101010100/y_3/" ka="sel-salary-3">5-10k</a>
							<a href="/c101010100/y_4/" ka="sel-salary-4">10-15k</a>
							<a href="/c101010100/y_5/" ka="sel-salary-5">15-20k</a>
							<a href="/c101010100/y_6/" ka="sel-salary-6">20-30k</a>
							<a href="/c101010100/y_7/" ka="sel-salary-7">30-50k</a>
							<a href="/c101010100/y_8/" ka="sel-salary-8">50k以上</a>

						</dd>
					</dl>
				</div>
				<div class="job-box">
					<div class="sider">
						<div class="promotion-img nomargin">
							<a href="/app.html" target="_blank" ka="ad_banner_1"><img src="/v2/web/geek/images/pro-1.png" alt="" /></a>
						</div>
						<div class="promotion-img">
							<a href="/user/login.html?initType=3" target="_blank" ka="ad_banner_2"><img src="/v2/web/geek/images/pro-2.png" alt="" /></a>
						</div>
					</div>
					<div class="job-list" data-filter="" data-keyword="" data-l3code="" data-rescount="281832" data-page="1" data-source="">

						<div class="job-tab">
						</div>

						<!--有职位 start-->
						<ul>

							<li>
								<a href="/job_detail/1411146326.html" ka="search_list_1" data-itemId="1" data-lid="0-5rOcY6K" data-jobid="11146326" data-index="1" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">Java后台高级开发工程师 <span class="red">20K-40K</span></h3>
											<p>北京<em class="vline"></em>1-3年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">美团网</h3>
												<p>O2O<em class="vline"></em>D轮及以上<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>乜东彬<em class="vline"></em>高级技术专家<img src="https://img2.bosszhipin.com/boss/avatar/avatar_6.png" /></p>
										</div>
										<span>Java</span><span>后端开发</span><span>中间件</span>
									</div>
									<div class="job-time"><span class="time">发布于18:19</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411145043.html" ka="search_list_2" data-itemId="2" data-lid="0-5rOcY6K" data-jobid="11145043" data-index="2" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">后端开发工程师 <span class="red">20K-40K</span></h3>
											<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">百度</h3>
												<p>互联网<em class="vline"></em>已上市<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>郭太东<em class="vline"></em>高级项目经理<img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20161009/27cd62de7166e01f3424869b80aa839d9711e1ca9d6761b5bbdf8332017aaf20_s.jpg" /></p>
										</div>
										<span>PHP</span><span>Python</span><span>后端开发</span>
									</div>
									<div class="job-time"><span class="time">发布于16:26</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411147685.html" ka="search_list_3" data-itemId="3" data-lid="0-5rOcY6K" data-jobid="11147685" data-index="3" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">Bpm工作流技术专家 <span class="red">22K-38K</span></h3>
											<p>北京<em class="vline"></em>5-10年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">滴滴出行</h3>
												<p>移动互联网<em class="vline"></em>D轮及以上<em class="vline"></em>1000-9999人</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>中原<em class="vline"></em>开发经理<img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20161202/57a7d1be6a5d6f4f281de616db6006f88c7dd922ad47494fc02c388e12c00eac_s.jpg" /></p>
										</div>
										<span>BPM</span><span>Activiti</span><span>工作流</span>
									</div>
									<div class="job-time"><span class="time">发布于22:23</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411146434.html" ka="search_list_4" data-itemId="4" data-lid="0-5rOcY6K" data-jobid="11146434" data-index="4" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">系统工程师 <span class="red">20K-35K</span></h3>
											<p>北京<em class="vline"></em>5-10年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">网宿科技</h3>
												<p>互联网<em class="vline"></em>已上市<em class="vline"></em>1000-9999人</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>陈镇<em class="vline"></em>前端<img src="https://img2.bosszhipin.com/boss/avatar/avatar_8.png" /></p>
										</div>
										<span>C/C++</span><span>Linux</span><span>tcp</span>
									</div>
									<div class="job-time"><span class="time">发布于19:46</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411141617.html" ka="search_list_5" data-itemId="5" data-lid="0-5rOcY6K" data-jobid="11141617" data-index="5" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">Java <span class="red">25K-45K</span></h3>
											<p>北京<em class="vline"></em>5-10年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">华为</h3>
												<p>IT软件<em class="vline"></em>不需要融资<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>虞学伦<em class="vline"></em>高级软件工程师<img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20170220/76722fa514184814d49f68d3c367a5a7b40f558b2f95e6e1d90113a2b62cec83_s.jpg" /></p>
										</div>
										<span>Hadoop</span><span>数据挖掘</span><span>Java</span>
									</div>
									<div class="job-time"><span class="time">发布于14:43</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411142284.html" ka="search_list_6" data-itemId="6" data-lid="0-5rOcY6K" data-jobid="11142284" data-index="6" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">Android <span class="red">15K-25K</span></h3>
											<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">中软国际</h3>
												<p>IT软件<em class="vline"></em>已上市<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>罗媛<em class="vline"></em>HR<img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20160830/12a2f87b3bb306d677b8b8517eb994d38c7dd922ad47494fc02c388e12c00eac_s.jpg" /></p>
										</div>
										<span>Android</span><span>移动开发</span><span>app客户端</span>
									</div>
									<div class="job-time"><span class="time">发布于13:06</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411139137.html" ka="search_list_7" data-itemId="7" data-lid="0-5rOcY6K" data-jobid="11139137" data-index="7" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">产品经理 <span class="red">20K-25K</span></h3>
											<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">京东</h3>
												<p>电子商务<em class="vline"></em>已上市<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>王贯扬<em class="vline"></em>产品经理<img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20161023/6cc2f940c2e0c5b396b922f2dd54f0aac7b0605d9b7c7e560e58e9c70a6818ae_s.jpg" /></p>
										</div>
										<span>产品经理</span>
									</div>
									<div class="job-time"><span class="time">发布于09:41</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411140691.html" ka="search_list_8" data-itemId="8" data-lid="0-5rOcY6K" data-jobid="11140691" data-index="8" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">深度学习平台开发工程师 <span class="red">20K-25K</span></h3>
											<p>北京<em class="vline"></em>3-5年<em class="vline"></em>硕士</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">美图公司</h3>
												<p>互联网<em class="vline"></em>D轮及以上<em class="vline"></em>1000-9999人</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>赵丽丽<em class="vline"></em>技术总监<img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20170422/e9c1acaae8beba3a597d5fa51b45ee028c7dd922ad47494fc02c388e12c00eac_s.jpg" /></p>
										</div>
										<span>Linux</span><span>后端开发</span><span>系统架构</span>
									</div>
									<div class="job-time"><span class="time">发布于10:53</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411138971.html" ka="search_list_9" data-itemId="9" data-lid="0-5rOcY6K" data-jobid="11138971" data-index="9" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">网络工程师 <span class="red">15K-22K</span></h3>
											<p>北京<em class="vline"></em>1-3年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">美团点评</h3>
												<p>O2O<em class="vline"></em>D轮及以上<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>朱晏<em class="vline"></em>高级技术经理<img src="https://img2.bosszhipin.com/boss/avatar/avatar_7.png" /></p>
										</div>
										<span>网络</span>
									</div>
									<div class="job-time"><span class="time">发布于09:02</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411135444.html" ka="search_list_10" data-itemId="10" data-lid="0-5rOcY6K" data-jobid="11135444" data-index="10" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">高级iOS开发工程师 <span class="red">15K-30K</span></h3>
											<p>北京<em class="vline"></em>1-3年<em class="vline"></em>硕士</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">网易乐得</h3>
												<p>互联网<em class="vline"></em>不需要融资<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>金秋实<em class="vline"></em>iOS工程师<img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20170421/70208052452076684d1c04b6a5a173498c7dd922ad47494fc02c388e12c00eac_s.jpg" /></p>
										</div>
										<span>iOS</span>
									</div>
									<div class="job-time"><span class="time">发布于昨天</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411122883.html" ka="search_list_11" data-itemId="11" data-lid="0-5rOcY6K" data-jobid="11122883" data-index="11" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">Java开发工程师【京东】 <span class="red">20K-30K</span></h3>
											<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">京东商城</h3>
												<p>电子商务<em class="vline"></em>已上市<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>时金贵<em class="vline"></em>研发工程师<img src="https://img2.bosszhipin.com/boss/avatar/avatar_8.png" /></p>
										</div>
										<span>Java</span>
									</div>
									<div class="job-time"><span class="time">发布于昨天</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411133524.html" ka="search_list_12" data-itemId="12" data-lid="0-5rOcY6K" data-jobid="11133524" data-index="12" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">中级安全开发工程师 <span class="red">10K-20K</span></h3>
											<p>北京<em class="vline"></em>1-3年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">链家网</h3>
												<p>移动互联网<em class="vline"></em>已上市<em class="vline"></em>1000-9999人</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>杜全喜<em class="vline"></em>技术总监<img src="https://img2.bosszhipin.com/boss/avatar/avatar_6.png" /></p>
										</div>
										<span>Node.js</span><span>python爬虫</span><span>Web前端</span>
									</div>
									<div class="job-time"><span class="time">发布于昨天</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411112700.html" ka="search_list_13" data-itemId="13" data-lid="0-5rOcY6K" data-jobid="11112700" data-index="13" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">阿里彩票技术 <span class="red">15K-30K</span></h3>
											<p>北京<em class="vline"></em>1-3年<em class="vline"></em>硕士</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">阿里巴巴集团</h3>
												<p>互联网<em class="vline"></em>已上市<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>刘荣逵<em class="vline"></em>高级技术专家<img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20161117/0d888746f2003e6d140ab3f6855906ca8c7dd922ad47494fc02c388e12c00eac_s.jpg" /></p>
										</div>
										<span>Java</span>
									</div>
									<div class="job-time"><span class="time">发布于04月20日</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411110370.html" ka="search_list_14" data-itemId="14" data-lid="0-5rOcY6K" data-jobid="11110370" data-index="14" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">JAVA研发高级工程师 <span class="red">20K-28K</span></h3>
											<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">京东JD</h3>
												<p>互联网<em class="vline"></em>已上市<em class="vline"></em>10000人以上</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>朱智刚<em class="vline"></em>研发经理<img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20170420/73d1f00e2b22c1ed7c399768447bef538c7dd922ad47494fc02c388e12c00eac_s.jpg" /></p>
										</div>
										<span>Java</span><span>JS</span>
									</div>
									<div class="job-time"><span class="time">发布于04月20日</span></div>

								</a>
							</li>

							<li>
								<a href="/job_detail/1411124985.html" ka="search_list_15" data-itemId="15" data-lid="0-5rOcY6K" data-jobid="11124985" data-index="15" target="_blank">
									<div class="job-primary">
										<div class="info-primary">
											<h3 class="name">java 研发工程师 <span class="red">20K-35K</span></h3>
											<p>北京<em class="vline"></em>5-10年<em class="vline"></em>大专</p>
										</div>
										<div class="info-comapny">
											<div class="company-text">
												<h3 class="name">京东金融</h3>
												<p>互联网<em class="vline"></em>不需要融资<em class="vline"></em>1000-9999人</p>
											</div>
										</div>
									</div>

									<div class="job-tags">
										<div class="job-author">
											<p>张克新<em class="vline"></em>京东金融<img src="https://img2.bosszhipin.com/boss/avatar/avatar_5.png" /></p>
										</div>
										<span>Java</span><span>系统架构</span><span>大数据</span>
									</div>
									<div class="job-time"><span class="time">发布于昨天</span></div>
								</a>
							</li>

						</ul>

						<div class="page">
							<a href="javascript:;" ka="page-prev" class="prev disabled"></a>
							<a href="javascript:;" class="cur" ka="page-cur">1</a>
							<a href="/c101010100/?page=2" ka="page-2">2</a>
							<a href="/c101010100/?page=3" ka="page-3">3</a>
							<span>...</span>
							<a href="/c101010100/?page=2" ka="page-next" class="next"></a>

						</div>

					</div>
				</div>
			</div>

			<div id="footer">
				<div class="inner">
					<div class="footer-social">

					</div>
					<div class="copyright">
						<div class="footer-logo"></div>

						<p>联系地址：河北省秦皇岛市燕山大学东校区</p>
					</div>
				</div>
			</div>
			<!--通用返回顶部-->
			<div id="siderbar">
				<ul>
					<li class="siderbar-top" title="返回顶部"></li>
				</ul>
			</div>

			<script src="https://www.zhipin.com/v2/web/geek/js/lib/jquery-1.12.2.min.js"></script>
			<script src="https://www.zhipin.com/v2/web/geek/js/main.js"></script>
			<input type="hidden" id="page_key_name" value="cpc_job_list" />

			<script src="https://img.bosszhipin.com/js/analytics.min.js"></script>
			<script src="https://img.bosszhipin.com/js/utils/ka.js?v=1.0"></script>
			
	</body>

</html>