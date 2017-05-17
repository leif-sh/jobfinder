<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<%--<c:if test="${empty jobList}">
		<script>
            window.location = "/job/getJobList.do?pageName=job";
		</script>
	</c:if>--%>
		<div id="wrap">
			<div id="header">
				<div class="inner">
					<h1 class="logo"><a href="/" ka="header-home-logo" title="JobFinder"><span>JobFinder</span></a></h1>
					<div class="nav">
						<ul>
							<li class=""><a ka="header-home" href="/jsp/index.jsp">首页</a></li>
							<li class="cur"><a ka="header-job" href="/search/searchJob.do">职位</a></li>
							<!--<li class=""><a ka="header-app" href="/app.html" >APP</a></li>-->
							<li class=""><a ka="header-article" href="">校招</a></li>
						</ul>
					</div>

					<div class="user-nav">
						<c:if test="${sessionScope.userinfo != null}">
							<!--登录-->
							<ul>
								<li class=""><a ka="header-chat" href="chat.jsp" >聊天<span class="nav-chat-num"></span></a></li>
								<li class=""><a ka="header-delivery-box" href="" >投递箱</a></li>
								<li class="cur"><a ka="header-my-resume" href="resume.jsp" >我的简历</a></li>
								<li class="nav-figure"><a href="resume.jsp" ka="header-username" ><span class="label-text">${userinfo.account}</span> <img src="../img/ico-1.jpg" alt="" /></a><div class="dropdown"><a href="/User/logout.do" ka="header-logout">退出</a></div></li>
							</ul>
						</c:if>
						<c:if test="${sessionScope.userinfo == null}">
							<!--未登录-->
							<div class="btns">
								<a href="/jsp/login.jsp" ka="header-register" class="btn btn-outline">注册</a>
								<a href="/jsp/login.jsp" ka="header-login" class="btn btn-outline">登录</a>
							</div>
						</c:if>
					</div>
				</div>
			</div>
			<div id="main" class="inner">
				<div class="search-box">
					<div class="search-form">
						<form action="/search/searchJob.do" method="get">
							<div class="search-form-con">
								<p class="ipt-wrap"><input ka="search-job-query" name="query" type="text" class="ipt-search" autocomplete="off" placeholder="搜索职位、公司" value=""></p>
								<div class="city-sel" ka="search-select-city">
									<i class="line"></i>
									<span class="label-text cur"><b data-val="101010100">北京</b><i class="icon-arrow-down"></i></span>
								</div>
							</div>
							<input type="hidden" name="scity" class="city-code" value="北京" />
							<input type="hidden" name="source" value="2">
							<button type="submit" ka="search-job" class="btn btn-search">搜索</button>
							<div class="suggest-result" style="display: none;">
								<ul>
								</ul>
							</div>
							<div class="city-box">
								<ul class="dorpdown-province">
									<li class="cur">热门</li>
									<li ka="province-101010000">北京</li>
									<li ka="province-101020000">上海</li>
									<li ka="province-101030000">天津</li>
									<li ka="province-101040000">重庆</li>
									<li ka="province-101050000">黑龙江</li>
									<li ka="province-101060000">吉林</li>
									<li ka="province-101070000">辽宁</li>
									<li ka="province-101080000">内蒙古</li>
									<li ka="province-101090000">河北</li>
									<li ka="province-101100000">山西</li>
									<li ka="province-101110000">陕西</li>
									<li ka="province-101120000">山东</li>
									<li ka="province-101130000">新疆</li>
									<li ka="province-101150000">青海</li>
									<li ka="province-101160000">甘肃</li>
									<li ka="province-101170000">宁夏</li>
									<li ka="province-101180000">河南</li>
									<li ka="province-101190000">江苏</li>
									<li ka="province-101200000">湖北</li>
									<li ka="province-101210000">浙江</li>
									<li ka="province-101220000">安徽</li>
									<li ka="province-101230000">福建</li>
									<li ka="province-101240000">江西</li>
									<li ka="province-101250000">湖南</li>
									<li ka="province-101260000">贵州</li>
									<li ka="province-101270000">四川</li>
									<li ka="province-101280000">广东</li>
									<li ka="province-101290000">云南</li>
									<li ka="province-101300000">广西</li>
									<li ka="province-101310000">海南</li>
									<li ka="province-101340000">台湾</li>
									<li ka="province-101140000">西藏</li>
									<li ka="province-101320000">香港</li>
									<li ka="province-101330000">澳门</li>

								</ul>
								<div class="dorpdown-city">
									<ul class="show">
										<li ka="hot-city-101010100" data-val="北京">北京</li>
										<li ka="hot-city-101020100" data-val="上海">上海</li>
										<li ka="hot-city-101280100" data-val="广州">广州</li>
										<li ka="hot-city-101280600" data-val="深圳">深圳</li>
										<li ka="hot-city-101210100" data-val="杭州">杭州</li>
										<li ka="hot-city-101030100" data-val="天津">天津</li>
										<li ka="hot-city-101110100" data-val="西安">西安</li>
										<li ka="hot-city-101190400" data-val="苏州">苏州</li>
										<li ka="hot-city-101200100" data-val="武汉">武汉</li>
										<li ka="hot-city-101230200" data-val="厦门">厦门</li>
										<li ka="hot-city-101250100" data-val="长沙">长沙</li>
										<li ka="hot-city-101270100" data-val="成都">成都</li>

									</ul>

									<ul>
										<li ka="city-101010100" data-val="北京">北京</li>
									</ul>
									<ul>
										<li ka="city-101020100" data-val="上海">上海</li>
									</ul>
									<ul>
										<li ka="city-101030100" data-val="天津">天津</li>
									</ul>
									<ul>
										<li ka="city-101040100" data-val="重庆">重庆</li>
									</ul>
									<ul>
										<li ka="city-101050100" data-val="哈尔滨">哈尔滨</li>
										<li ka="city-101050200" data-val="齐齐哈尔">齐齐哈尔</li>
										<li ka="city-101050300" data-val="牡丹江">牡丹江</li>
										<li ka="city-101050400" data-val="佳木斯">佳木斯</li>
										<li ka="city-101050500" data-val="绥化">绥化</li>
										<li ka="city-101050600" data-val="黑河">黑河</li>
										<li ka="city-101050700" data-val="伊春">伊春</li>
										<li ka="city-101050800" data-val="大庆">大庆</li>
										<li ka="city-101050900" data-val="七台河">七台河</li>
										<li ka="city-101051000" data-val="鸡西">鸡西</li>
										<li ka="city-101051100" data-val="鹤岗">鹤岗</li>
										<li ka="city-101051200" data-val="双鸭山">双鸭山</li>
									</ul>

									<ul>

										<li ka="city-101060100" data-val="长春">长春</li>

										<li ka="city-101060200" data-val="吉林">吉林</li>

										<li ka="city-101060300" data-val="四平">四平</li>

										<li ka="city-101060400" data-val="通化">通化</li>

										<li ka="city-101060500" data-val="白城">白城</li>

										<li ka="city-101060600" data-val="辽源">辽源</li>

										<li ka="city-101060700" data-val="松原">松原</li>

										<li ka="city-101060800" data-val="白山">白山</li>

										<li ka="city-101060900" data-val="延边">延边</li>

									</ul>

									<ul>

										<li ka="city-101070100" data-val="沈阳">沈阳</li>

										<li ka="city-101070200" data-val="大连">大连</li>

										<li ka="city-101070300" data-val="鞍山">鞍山</li>

										<li ka="city-101070400" data-val="抚顺">抚顺</li>

										<li ka="city-101070500" data-val="本溪">本溪</li>

										<li ka="city-101070600" data-val="丹东">丹东</li>

										<li ka="city-101070700" data-val="锦州">锦州</li>

										<li ka="city-101070800" data-val="营口">营口</li>

										<li ka="city-101070900" data-val="阜新">阜新</li>

										<li ka="city-101071000" data-val="辽阳">辽阳</li>

										<li ka="city-101071100" data-val="铁岭">铁岭</li>

										<li ka="city-101071200" data-val="朝阳">朝阳</li>

										<li ka="city-101071300" data-val="盘锦">盘锦</li>

										<li ka="city-101071400" data-val="葫芦岛">葫芦岛</li>

									</ul>

									<ul>

										<li ka="city-101080100" data-val="呼和浩特">呼和浩特</li>

										<li ka="city-101080200" data-val="包头">包头</li>

										<li ka="city-101080300" data-val="乌海">乌海</li>

										<li ka="city-101080400" data-val="通辽">通辽</li>

										<li ka="city-101080500" data-val="赤峰">赤峰</li>

										<li ka="city-101080600" data-val="鄂尔多斯">鄂尔多斯</li>

										<li ka="city-101080700" data-val="呼伦贝尔">呼伦贝尔</li>

										<li ka="city-101080800" data-val="巴彦淖尔">巴彦淖尔</li>

										<li ka="city-101080900" data-val="乌兰察布">乌兰察布</li>

										<li ka="city-101081000" data-val="锡林郭勒">锡林郭勒</li>

									</ul>

									<ul>

										<li ka="city-101090100" data-val="石家庄">石家庄</li>

										<li ka="city-101090200" data-val="保定">保定</li>

										<li ka="city-101090300" data-val="张家口">张家口</li>

										<li ka="city-101090400" data-val="承德">承德</li>

										<li ka="city-101090500" data-val="唐山">唐山</li>

										<li ka="city-101090600" data-val="廊坊">廊坊</li>

										<li ka="city-101090700" data-val="沧州">沧州</li>

										<li ka="city-101090800" data-val="衡水">衡水</li>

										<li ka="city-101090900" data-val="邢台">邢台</li>

										<li ka="city-101091000" data-val="邯郸">邯郸</li>

										<li ka="city-101091100" data-val="秦皇岛">秦皇岛</li>

									</ul>

									<ul>

										<li ka="city-101100100" data-val="太原">太原</li>

										<li ka="city-101100200" data-val="大同">大同</li>

										<li ka="city-101100300" data-val="阳泉">阳泉</li>

										<li ka="city-101100400" data-val="晋中">晋中</li>

										<li ka="city-101100500" data-val="长治">长治</li>

										<li ka="city-101100600" data-val="晋城">晋城</li>

										<li ka="city-101100700" data-val="临汾">临汾</li>

										<li ka="city-101100800" data-val="运城">运城</li>

										<li ka="city-101100900" data-val="朔州">朔州</li>

										<li ka="city-101101000" data-val="忻州">忻州</li>

										<li ka="city-101101100" data-val="吕梁">吕梁</li>

									</ul>

									<ul>

										<li ka="city-101110100" data-val="西安">西安</li>

										<li ka="city-101110200" data-val="咸阳">咸阳</li>

										<li ka="city-101110300" data-val="延安">延安</li>

										<li ka="city-101110400" data-val="榆林">榆林</li>

										<li ka="city-101110500" data-val="渭南">渭南</li>

										<li ka="city-101110600" data-val="商洛">商洛</li>

										<li ka="city-101110700" data-val="安康">安康</li>

										<li ka="city-101110800" data-val="汉中">汉中</li>

										<li ka="city-101110900" data-val="宝鸡">宝鸡</li>

										<li ka="city-101111000" data-val="铜川">铜川</li>

									</ul>

									<ul>

										<li ka="city-101120100" data-val="济南">济南</li>

										<li ka="city-101120200" data-val="青岛">青岛</li>

										<li ka="city-101120300" data-val="淄博">淄博</li>

										<li ka="city-101120400" data-val="德州">德州</li>

										<li ka="city-101120500" data-val="烟台">烟台</li>

										<li ka="city-101120600" data-val="潍坊">潍坊</li>

										<li ka="city-101120700" data-val="济宁">济宁</li>

										<li ka="city-101120800" data-val="泰安">泰安</li>

										<li ka="city-101120900" data-val="临沂">临沂</li>

										<li ka="city-101121000" data-val="菏泽">菏泽</li>

										<li ka="city-101121100" data-val="滨州">滨州</li>

										<li ka="city-101121200" data-val="东营">东营</li>

										<li ka="city-101121300" data-val="威海">威海</li>

										<li ka="city-101121400" data-val="枣庄">枣庄</li>

										<li ka="city-101121500" data-val="日照">日照</li>

										<li ka="city-101121600" data-val="莱芜">莱芜</li>

										<li ka="city-101121700" data-val="聊城">聊城</li>

									</ul>

									<ul>

										<li ka="city-101130100" data-val="乌鲁木齐">乌鲁木齐</li>

										<li ka="city-101130200" data-val="克拉玛依">克拉玛依</li>

										<li ka="city-101130300" data-val="昌吉">昌吉</li>

										<li ka="city-101130400" data-val="巴音郭楞">巴音郭楞</li>

										<li ka="city-101130500" data-val="博尔塔拉">博尔塔拉</li>

										<li ka="city-101130600" data-val="伊犁">伊犁</li>

										<li ka="city-101130700" data-val="克孜勒苏柯尔克孜">克孜勒苏柯尔克孜</li>

									</ul>

									<ul>

										<li ka="city-101150100" data-val="西宁">西宁</li>

										<li ka="city-101150200" data-val="海东">海东</li>

										<li ka="city-101150300" data-val="海北">海北</li>

										<li ka="city-101150400" data-val="黄南">黄南</li>

										<li ka="city-101150500" data-val="海南">海南</li>

										<li ka="city-101150600" data-val="果洛">果洛</li>

										<li ka="city-101150700" data-val="玉树">玉树</li>

										<li ka="city-101150800" data-val="海西">海西</li>

									</ul>

									<ul>

										<li ka="city-101160100" data-val="兰州">兰州</li>

										<li ka="city-101160200" data-val="定西">定西</li>

										<li ka="city-101160300" data-val="平凉">平凉</li>

										<li ka="city-101160400" data-val="庆阳">庆阳</li>

										<li ka="city-101160500" data-val="武威">武威</li>

										<li ka="city-101160600" data-val="金昌">金昌</li>

										<li ka="city-101160700" data-val="张掖">张掖</li>

										<li ka="city-101160800" data-val="酒泉">酒泉</li>

										<li ka="city-101160900" data-val="天水">天水</li>

										<li ka="city-101161000" data-val="白银">白银</li>

										<li ka="city-101161100" data-val="陇南">陇南</li>

										<li ka="city-101161200" data-val="嘉峪关">嘉峪关</li>

										<li ka="city-101161300" data-val="临夏">临夏</li>

										<li ka="city-101161400" data-val="甘南">甘南</li>

									</ul>

									<ul>

										<li ka="city-101170100" data-val="银川">银川</li>

										<li ka="city-101170200" data-val="石嘴山">石嘴山</li>

										<li ka="city-101170300" data-val="吴忠">吴忠</li>

										<li ka="city-101170400" data-val="固原">固原</li>

										<li ka="city-101170500" data-val="中卫">中卫</li>

									</ul>

									<ul>

										<li ka="city-101180100" data-val="郑州">郑州</li>

										<li ka="city-101180200" data-val="安阳">安阳</li>

										<li ka="city-101180300" data-val="新乡">新乡</li>

										<li ka="city-101180400" data-val="许昌">许昌</li>

										<li ka="city-101180500" data-val="平顶山">平顶山</li>

										<li ka="city-101180600" data-val="信阳">信阳</li>

										<li ka="city-101180700" data-val="南阳">南阳</li>

										<li ka="city-101180800" data-val="开封">开封</li>

										<li ka="city-101180900" data-val="洛阳">洛阳</li>

										<li ka="city-101181000" data-val="商丘">商丘</li>

										<li ka="city-101181100" data-val="焦作">焦作</li>

										<li ka="city-101181200" data-val="鹤壁">鹤壁</li>

										<li ka="city-101181300" data-val="濮阳">濮阳</li>

										<li ka="city-101181400" data-val="周口">周口</li>

										<li ka="city-101181500" data-val="漯河">漯河</li>

										<li ka="city-101181600" data-val="驻马店">驻马店</li>

										<li ka="city-101181700" data-val="三门峡">三门峡</li>

									</ul>

									<ul>

										<li ka="city-101190100" data-val="南京">南京</li>

										<li ka="city-101190200" data-val="无锡">无锡</li>

										<li ka="city-101190300" data-val="镇江">镇江</li>

										<li ka="city-101190400" data-val="苏州">苏州</li>

										<li ka="city-101190500" data-val="南通">南通</li>

										<li ka="city-101190600" data-val="扬州">扬州</li>

										<li ka="city-101190700" data-val="盐城">盐城</li>

										<li ka="city-101190800" data-val="徐州">徐州</li>

										<li ka="city-101190900" data-val="淮安">淮安</li>

										<li ka="city-101191000" data-val="连云港">连云港</li>

										<li ka="city-101191100" data-val="常州">常州</li>

										<li ka="city-101191200" data-val="泰州">泰州</li>

										<li ka="city-101191300" data-val="宿迁">宿迁</li>

										<li ka="city-101191400" data-val="昆山">昆山</li>

										<li ka="city-101191500" data-val="新沂">新沂</li>

									</ul>

									<ul>

										<li ka="city-101200100" data-val="武汉">武汉</li>

										<li ka="city-101200200" data-val="襄阳">襄阳</li>

										<li ka="city-101200300" data-val="鄂州">鄂州</li>

										<li ka="city-101200400" data-val="孝感">孝感</li>

										<li ka="city-101200500" data-val="黄冈">黄冈</li>

										<li ka="city-101200600" data-val="黄石">黄石</li>

										<li ka="city-101200700" data-val="咸宁">咸宁</li>

										<li ka="city-101200800" data-val="荆州">荆州</li>

										<li ka="city-101200900" data-val="宜昌">宜昌</li>

										<li ka="city-101201000" data-val="十堰">十堰</li>

										<li ka="city-101201100" data-val="随州">随州</li>

										<li ka="city-101201200" data-val="荆门">荆门</li>

										<li ka="city-101201300" data-val="恩施">恩施</li>

										<li ka="city-101201400" data-val="仙桃">仙桃</li>

										<li ka="city-101201500" data-val="潜江">潜江</li>

									</ul>

									<ul>

										<li ka="city-101210100" data-val="杭州">杭州</li>

										<li ka="city-101210200" data-val="湖州">湖州</li>

										<li ka="city-101210300" data-val="嘉兴">嘉兴</li>

										<li ka="city-101210400" data-val="宁波">宁波</li>

										<li ka="city-101210500" data-val="绍兴">绍兴</li>

										<li ka="city-101210600" data-val="台州">台州</li>

										<li ka="city-101210700" data-val="温州">温州</li>

										<li ka="city-101210800" data-val="丽水">丽水</li>

										<li ka="city-101210900" data-val="金华">金华</li>

										<li ka="city-101211000" data-val="衢州">衢州</li>

										<li ka="city-101211100" data-val="舟山">舟山</li>

									</ul>

									<ul>

										<li ka="city-101220100" data-val="合肥">合肥</li>

										<li ka="city-101220200" data-val="蚌埠">蚌埠</li>

										<li ka="city-101220300" data-val="芜湖">芜湖</li>

										<li ka="city-101220400" data-val="淮南">淮南</li>

										<li ka="city-101220500" data-val="马鞍山">马鞍山</li>

										<li ka="city-101220600" data-val="安庆">安庆</li>

										<li ka="city-101220700" data-val="宿州">宿州</li>

										<li ka="city-101220800" data-val="阜阳">阜阳</li>

										<li ka="city-101220900" data-val="亳州">亳州</li>

										<li ka="city-101221000" data-val="滁州">滁州</li>

										<li ka="city-101221100" data-val="淮北">淮北</li>

										<li ka="city-101221200" data-val="铜陵">铜陵</li>

										<li ka="city-101221300" data-val="宣城">宣城</li>

										<li ka="city-101221400" data-val="六安">六安</li>

										<li ka="city-101221500" data-val="池州">池州</li>

										<li ka="city-101221600" data-val="黄山">黄山</li>

									</ul>

									<ul>

										<li ka="city-101230100" data-val="福州">福州</li>

										<li ka="city-101230200" data-val="厦门">厦门</li>

										<li ka="city-101230300" data-val="宁德">宁德</li>

										<li ka="city-101230400" data-val="莆田">莆田</li>

										<li ka="city-101230500" data-val="泉州">泉州</li>

										<li ka="city-101230600" data-val="漳州">漳州</li>

										<li ka="city-101230700" data-val="龙岩">龙岩</li>

										<li ka="city-101230800" data-val="三明">三明</li>

										<li ka="city-101230900" data-val="南平">南平</li>

									</ul>

									<ul>

										<li ka="city-101240100" data-val="南昌">南昌</li>

										<li ka="city-101240200" data-val="九江">九江</li>

										<li ka="city-101240300" data-val="上饶">上饶</li>

										<li ka="city-101240400" data-val="抚州">抚州</li>

										<li ka="city-101240500" data-val="宜春">宜春</li>

										<li ka="city-101240600" data-val="吉安">吉安</li>

										<li ka="city-101240700" data-val="赣州">赣州</li>

										<li ka="city-101240800" data-val="景德镇">景德镇</li>

										<li ka="city-101240900" data-val="萍乡">萍乡</li>

										<li ka="city-101241000" data-val="新余">新余</li>

										<li ka="city-101241100" data-val="鹰潭">鹰潭</li>

									</ul>

									<ul>

										<li ka="city-101250100" data-val="长沙">长沙</li>

										<li ka="city-101250200" data-val="湘潭">湘潭</li>

										<li ka="city-101250300" data-val="株洲">株洲</li>

										<li ka="city-101250400" data-val="衡阳">衡阳</li>

										<li ka="city-101250500" data-val="郴州">郴州</li>

										<li ka="city-101250600" data-val="常德">常德</li>

										<li ka="city-101250700" data-val="益阳">益阳</li>

										<li ka="city-101250800" data-val="娄底">娄底</li>

										<li ka="city-101250900" data-val="邵阳">邵阳</li>

										<li ka="city-101251000" data-val="岳阳">岳阳</li>

										<li ka="city-101251100" data-val="张家界">张家界</li>

										<li ka="city-101251200" data-val="怀化">怀化</li>

										<li ka="city-101251300" data-val="永州">永州</li>

										<li ka="city-101251400" data-val="湘西">湘西</li>

									</ul>

									<ul>

										<li ka="city-101260100" data-val="贵阳">贵阳</li>

										<li ka="city-101260200" data-val="遵义">遵义</li>

										<li ka="city-101260300" data-val="安顺">安顺</li>

										<li ka="city-101260400" data-val="铜仁">铜仁</li>

										<li ka="city-101260500" data-val="毕节">毕节</li>

										<li ka="city-101260600" data-val="六盘水">六盘水</li>

										<li ka="city-101260700" data-val="黔东南">黔东南</li>

										<li ka="city-101260800" data-val="黔南">黔南</li>

										<li ka="city-101260900" data-val="黔西南">黔西南</li>

									</ul>

									<ul>

										<li ka="city-101270100" data-val="成都">成都</li>

										<li ka="city-101270200" data-val="攀枝花">攀枝花</li>

										<li ka="city-101270300" data-val="自贡">自贡</li>

										<li ka="city-101270400" data-val="绵阳">绵阳</li>

										<li ka="city-101270500" data-val="南充">南充</li>

										<li ka="city-101270600" data-val="达州">达州</li>

										<li ka="city-101270700" data-val="遂宁">遂宁</li>

										<li ka="city-101270800" data-val="广安">广安</li>

										<li ka="city-101270900" data-val="巴中">巴中</li>

										<li ka="city-101271000" data-val="泸州">泸州</li>

										<li ka="city-101271100" data-val="宜宾">宜宾</li>

										<li ka="city-101271200" data-val="内江">内江</li>

										<li ka="city-101271300" data-val="资阳">资阳</li>

										<li ka="city-101271400" data-val="乐山">乐山</li>

										<li ka="city-101271500" data-val="眉山">眉山</li>

										<li ka="city-101271600" data-val="雅安">雅安</li>

										<li ka="city-101271700" data-val="德阳">德阳</li>

										<li ka="city-101271800" data-val="广元">广元</li>

										<li ka="city-101271900" data-val="阿坝">阿坝</li>

										<li ka="city-101272000" data-val="凉山">凉山</li>

										<li ka="city-101272100" data-val="甘孜">甘孜</li>

									</ul>

									<ul>

										<li ka="city-101280100" data-val="广州">广州</li>

										<li ka="city-101280200" data-val="韶关">韶关</li>

										<li ka="city-101280300" data-val="惠州">惠州</li>

										<li ka="city-101280400" data-val="梅州">梅州</li>

										<li ka="city-101280500" data-val="汕头">汕头</li>

										<li ka="city-101280600" data-val="深圳">深圳</li>

										<li ka="city-101280700" data-val="珠海">珠海</li>

										<li ka="city-101280800" data-val="佛山">佛山</li>

										<li ka="city-101280900" data-val="肇庆">肇庆</li>

										<li ka="city-101281000" data-val="湛江">湛江</li>

										<li ka="city-101281100" data-val="江门">江门</li>

										<li ka="city-101281200" data-val="河源">河源</li>

										<li ka="city-101281300" data-val="清远">清远</li>

										<li ka="city-101281400" data-val="云浮">云浮</li>

										<li ka="city-101281500" data-val="潮州">潮州</li>

										<li ka="city-101281600" data-val="东莞">东莞</li>

										<li ka="city-101281700" data-val="中山">中山</li>

										<li ka="city-101281800" data-val="阳江">阳江</li>

										<li ka="city-101281900" data-val="揭阳">揭阳</li>

										<li ka="city-101282000" data-val="茂名">茂名</li>

										<li ka="city-101282100" data-val="汕尾">汕尾</li>

									</ul>

									<ul>

										<li ka="city-101290100" data-val="昆明">昆明</li>

										<li ka="city-101290200" data-val="曲靖">曲靖</li>

										<li ka="city-101290300" data-val="保山">保山</li>

										<li ka="city-101290400" data-val="玉溪">玉溪</li>

										<li ka="city-101290500" data-val="普洱">普洱</li>

										<li ka="city-101290700" data-val="昭通">昭通</li>

										<li ka="city-101290800" data-val="临沧">临沧</li>

										<li ka="city-101290900" data-val="丽江">丽江</li>

										<li ka="city-101291000" data-val="西双版纳">西双版纳</li>

										<li ka="city-101291100" data-val="文山">文山</li>

										<li ka="city-101291200" data-val="红河">红河</li>

										<li ka="city-101291300" data-val="德宏">德宏</li>

										<li ka="city-101291400" data-val="怒江">怒江</li>

										<li ka="city-101291500" data-val="迪庆">迪庆</li>

										<li ka="city-101291600" data-val="大理">大理</li>

										<li ka="city-101291700" data-val="楚雄">楚雄</li>

									</ul>

									<ul>

										<li ka="city-101300100" data-val="南宁">南宁</li>

										<li ka="city-101300200" data-val="崇左">崇左</li>

										<li ka="city-101300300" data-val="柳州">柳州</li>

										<li ka="city-101300400" data-val="来宾">来宾</li>

										<li ka="city-101300500" data-val="桂林">桂林</li>

										<li ka="city-101300600" data-val="梧州">梧州</li>

										<li ka="city-101300700" data-val="贺州">贺州</li>

										<li ka="city-101300800" data-val="贵港">贵港</li>

										<li ka="city-101300900" data-val="玉林">玉林</li>

										<li ka="city-101301000" data-val="百色">百色</li>

										<li ka="city-101301100" data-val="钦州">钦州</li>

										<li ka="city-101301200" data-val="河池">河池</li>

										<li ka="city-101301300" data-val="北海">北海</li>

										<li ka="city-101301400" data-val="防城港">防城港</li>

									</ul>

									<ul>

										<li ka="city-101310100" data-val="海口">海口</li>

										<li ka="city-101310200" data-val="三亚">三亚</li>

										<li ka="city-101310300" data-val="三沙">三沙</li>

									</ul>

									<ul>

										<li ka="city-101340100" data-val="台北">台北</li>

										<li ka="city-101340200" data-val="新北">新北</li>

										<li ka="city-101340300" data-val="台中">台中</li>

										<li ka="city-101340400" data-val="台南">台南</li>

										<li ka="city-101340500" data-val="高雄">高雄</li>

										<li ka="city-101340600" data-val="基隆">基隆</li>

										<li ka="city-101340700" data-val="嘉义">嘉义</li>

										<li ka="city-101340800" data-val="屏东">屏东</li>

									</ul>

									<ul>

										<li ka="city-101140100" data-val="拉萨">拉萨</li>

									</ul>

									<ul>

										<li ka="city-101320300" data-val="香港">香港</li>

									</ul>

									<ul>

										<li ka="city-101330100" data-val="澳门">澳门</li>

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
							<a href="/search/searchJob.do?scity=北京" ka="cur-city" class="selected disabled">北京</a><em class="icon-arrow-right"></em>
							<a href="javascript:;" ka="sel-business" class="link-district selected">不限</a>
							<span class="hot-text">热门城市：</span>
							<a href="/search/searchJob.do?scity=上海" ka="sel-city-101020100">上海</a>
							<a href="/search/searchJob.do?scity=广州" ka="sel-city-101280100">广州</a>
							<a href="/search/searchJob.do?scity=深圳" ka="sel-city-101280600">深圳</a>
							<a href="/search/searchJob.do?scity=杭州" ka="sel-city-101210100">杭州</a>
							<a href="/search/searchJob.do?scity=天津" ka="sel-city-101030100">天津</a>
							<a href="/search/searchJob.do?scity=西安" ka="sel-city-101110100">西安</a>
							<a href="/search/searchJob.do?scity=苏州" ka="sel-city-101190400">苏州</a>
							<a href="/search/searchJob.do?scity=武汉" ka="sel-city-101200100">武汉</a>
							<a href="/search/searchJob.do?scity=厦门" ka="sel-city-101230200">厦门</a>
							<a href="/search/searchJob.do?scity=长沙" ka="sel-city-101250100">长沙</a>
							<a href="/search/searchJob.do?scity=成都" ka="sel-city-101270100">成都</a>
						</dd>
					</dl>
					<dl class="condition-experience">
						<dt>经验：</dt>
						<dd>
							<a class="selected" href="/search/searchJob.do?jobExperience=不限" ka="sel-exp-0">不限</a>
							<a href="/search/searchJob.do?jobExperience=应届生" ka="sel-exp-102">应届生</a>
							<a href="/search/searchJob.do?jobExperience=1年以内" ka="sel-exp-103">1年以内</a>
							<a href="/search/searchJob.do?jobExperience=1-3年" ka="sel-exp-104">1-3年</a>
							<a href="/search/searchJob.do?jobExperience=3-5年" ka="sel-exp-105">3-5年</a>
							<a href="/search/searchJob.do?jobExperience=5-10年" ka="sel-exp-106">5-10年</a>
							<a href="/search/searchJob.do?jobExperience=10年以上" ka="sel-exp-107">10年以上</a>
						</dd>
					</dl>
					<dl class="condition-education">
						<dt>学历：</dt>
						<dd>
							<a href='/search/searchJob.do?educationLevel=不限' class="selected" ka="sel-degree-0">不限</a>
							<a href='/search/searchJob.do?educationLevel=中专' ka="sel-degree-207">中专及以下</a>
							<a href='/search/searchJob.do?educationLevel=高中' ka="sel-degree-206">高中</a>
							<a href='/search/searchJob.do?educationLevel=大专' ka="sel-degree-202">大专</a>
							<a href='/search/searchJob.do?educationLevel=本科' ka="sel-degree-203">本科</a>
							<a href='/search/searchJob.do?educationLevel=硕士' ka="sel-degree-204">硕士</a>
							<a href='/search/searchJob.do?educationLevel=博士' ka="sel-degree-205">博士</a>

						</dd>
					</dl>
					<dl class="condition-scale">
						<dt>规模：</dt>
						<dd>
							<a href='/search/searchJob.do?companyScale=不限' class="selected" ka="sel-scale-0">不限</a>
							<a href='/search/searchJob.do?companyScale=0-20' ka="sel-scale-301">0-20人</a>
							<a href='/search/searchJob.do?companyScale=20-99' ka="sel-scale-302">20-99人</a>
							<a href='/search/searchJob.do?companyScale=100-499' ka="sel-scale-303">100-499人</a>
							<a href='/search/searchJob.do?companyScale=500-999' ka="sel-scale-304">500-999人</a>
							<a href='/search/searchJob.do?companyScale=1000-9999' ka="sel-scale-305">1000-9999人</a>
							<a href='/search/searchJob.do?companyScale=10000' ka="sel-scale-306">10000人以上</a>
						</dd>
					</dl>
					<dl class="condition-insdustry">
						<dt>行业：</dt>
						<dd>
							<span class="btn-all" ka="show-all-industry">全部行业<i class="icon-arrow-down"></i></span>

							<a href="/search/searchJob.do?companyType=不限" class="selected" ka="sel-industry-0">不限</a>
							<a href="/search/searchJob.do?companyType=健康医疗" ka="sel-industry-502">健康医疗</a>
							<a href="/search/searchJob.do?companyType=生活服务" ka="sel-industry-503">生活服务</a>
							<a href="/search/searchJob.do?companyType=旅游" ka="sel-industry-504">旅游</a>
							<a href="/search/searchJob.do?companyType=金融" ka="sel-industry-505">金融</a>
							<a href="/search/searchJob.do?companyType=信息安全" ka="sel-industry-506">信息安全</a>
							<a href="/search/searchJob.do?companyType=广告营销" ka="sel-industry-507">广告营销</a>
							<a href="/search/searchJob.do?companyType=数据服务" ka="sel-industry-508">数据服务</a>
							<a href="/search/searchJob.do?companyType=智能硬件" ka="sel-industry-509">智能硬件</a>
							<a href="/search/searchJob.do?companyType=文化娱乐" ka="sel-industry-510">文化娱乐</a>
							<a href="/search/searchJob.do?companyType=网络招聘" ka="sel-industry-511">网络招聘</a>
							<a href="/search/searchJob.do?companyType=分类信息" ka="sel-industry-512">分类信息</a>
							<a href="/search/searchJob.do?companyType=电子商务" ka="sel-industry-513">电子商务</a>
							<a href="/search/searchJob.do?companyType=移动互联网" ka="sel-industry-514">移动互联网</a>
							<a href="/search/searchJob.do?companyType=企业服务" ka="sel-industry-515">企业服务</a>
							<a href="/search/searchJob.do?companyType=社交网络" ka="sel-industry-516">社交网络</a>
							<a href="/search/searchJob.do?companyType=教育培训" ka="sel-industry-517">教育培训</a>
							<a href="/search/searchJob.do?companyType=O2O" ka="sel-industry-518">O2O</a>
							<a href="/search/searchJob.do?companyType=游戏" ka="sel-industry-519">游戏</a>
							<a href="/search/searchJob.do?companyType=互联网" ka="sel-industry-520">互联网</a>
							<a href="/search/searchJob.do?companyType=媒体" ka="sel-industry-521">媒体</a>
							<a href="/search/searchJob.do?companyType=IT软件" ka="sel-industry-522">IT软件</a>
							<a href="/search/searchJob.do?companyType=通信" ka="sel-industry-523">通信</a>
							<a href="/search/searchJob.do?companyType=公关会展" ka="sel-industry-524">公关会展</a>
							<a href="/search/searchJob.do?companyType=房地产/建筑" ka="sel-industry-525">房地产/建筑</a>
							<a href="/search/searchJob.do?companyType=汽车" ka="sel-industry-526">汽车</a>
							<a href="/search/searchJob.do?companyType=供应链/物流" ka="sel-industry-527">供应链/物流</a>
							<a href="/search/searchJob.do?companyType=咨询/翻译/法律" ka="sel-industry-528">咨询/翻译/法律</a>
							<a href="/search/searchJob.do?companyType=采购/贸易" ka="sel-industry-529">采购/贸易</a>
							<a href="/search/searchJob.do?companyType=非互联网行业" ka="sel-industry-501">非互联网行业</a>

						</dd>
					</dl>
					<dl class="condition-salary">
						<dt>薪资：</dt>
						<dd>
							<a href="/search/searchJob.do?salary=不限" class="selected" ka="sel-salary-0">不限</a>
							<a href="/search/searchJob.do?salary=3k以下" ka="sel-salary-1">3k以下</a>
							<a href="/search/searchJob.do?salary=3-5k" ka="sel-salary-2">3-5k</a>
							<a href="/search/searchJob.do?salary=5-10k" ka="sel-salary-3">5-10k</a>
							<a href="/search/searchJob.do?salary=10-15k" ka="sel-salary-4">10-15k</a>
							<a href="/search/searchJob.do?salary=15-20k" ka="sel-salary-5">15-20k</a>
							<a href="/search/searchJob.do?salary=20-30k" ka="sel-salary-6">20-30k</a>
							<a href="/search/searchJob.do?salary=30-50k" ka="sel-salary-7">30-50k</a>
							<a href="/search/searchJob.do?salary=50k以上" ka="sel-salary-8">50k以上</a>
						</dd>
					</dl>
				</div>
				<div class="job-box" style="width: 100%;">
					<div class="job-list" style="width: 100%;" data-filter="" data-keyword="" data-l3code="" data-rescount="281832" data-page="1" data-source="">
						<div class="job-tab">
						</div>
						<!--有职位 start-->
						<ul>
							<c:if test="${!empty jobList}">
								<c:forEach items="${jobList}" var="job">
									<li>
										<a href="/job/${job.jobMessageId}" ka="search_list_1" data-itemId="1" data-lid="0-5rOcY6K" data-jobid="11146326" data-index="1" target="_blank">
											<div class="job-primary">
												<div class="info-primary">
													<h3 class="name">${job.jobName}<span class="red">${job.salary}</span></h3>
													<p>
														<c:if test="${!empty job.jobCity}">
															${job.jobCity}<em class="vline"></em>
														</c:if>
														<c:if test="${!empty job.jobExperience}">
															${job.jobExperience}<em class="vline"></em>
														</c:if>
														<c:if test="${!empty job.educationLevel}">
															${job.educationLevel}
														</c:if>
													</p>
												</div>
												<div class="info-comapny">
													<div class="company-text">
														<h3 class="name">${job.sourceCompanyName}</h3>
														<p>
															<c:if test="${!empty job.company.companyType}">
																${job.company.companyType}
																<em class="vline"></em>
															</c:if>
															<c:if test="${!empty job.company.companyProperty}">
																${job.company.companyProperty}
																<em class="vline"></em>
															</c:if>
																${job.company.companyScale}
														</p>
													</div>
												</div>
											</div>
											<div class="job-tags">
												<div class="job-author">
													<c:if test="${job.businessUserId == 0}">
														<p>数据来源：${job.publishResource}<em class="vline"></em><a href="${job.jobUrl}">原文链接</a></p>
													</c:if>
													<c:if test="${job.businessUserId != 0}">
														<p>${job.businessuser.businessUserName}<em class="vline"></em>高级技术专家<img src="https://img2.bosszhipin.com/boss/avatar/avatar_6.png" /></p>
													</c:if>
												</div>
												<c:if test="${job.joblabelsList.size() > 0}">
													<span>${job.joblabelsList.get(0).labels}</span>
													<c:if test="${job.joblabelsList.size() > 1}">
														<span>${job.joblabelsList.get(1).labels}</span>
														<c:if test="${job.joblabelsList.size() > 2}">
															<span>${job.joblabelsList.get(2).labels}</span>
														</c:if>
													</c:if>
												</c:if>
											</div>
											<div class="job-time"><span class="time">发布于&nbsp;<fmt:formatDate value="${job.catchJobTime}" pattern="yyyy年MM月dd日 HH:mm:ss"/> </span></div>
										</a>
									</li>
								</c:forEach>
							</c:if>
						</ul>

						<div class="page">
							<c:if test="${page.thispage == 1}">
								<a href="javascript:;" ka="page-prev" class="prev disabled"></a>
								<a href="javascript:;" class="cur" ka="page-cur">1</a>
								<a href="/search/searchJob.do?thispage=${page.nextpage}" ka="page-2">2</a>
								<a href="/search/searchJob.do?thispage=${page.nextpage + 1}" ka="page-3">3</a>
							</c:if>
							<c:if test="${page.thispage != 1}">
								<a href="/search/searchJob.do?thispage=${page.prepage}" ka="page-prev" class="prev disabled"></a>
								<a href="/search/searchJob.do?thispage=${page.prepage}" ka="page-cur">${page.prepage}</a>
								<a href="/search/searchJob.do?thispage=${page.thispage}"class="cur"  ka="page-2">${page.thispage}</a>
								<a href="/search/searchJob.do?thispage=${page.nextpage}" ka="page-3">${page.nextpage}</a>
							</c:if>
							<span>...</span>
							<a href="/search/searchJob.do?thispage=${page.nextpage}" <%--ka="page-next"--%> class="next"></a>
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

			<script src="../js/jquery-1.12.2.min.js"></script>
			<script src="../js/main.js"></script>
			<input type="hidden" id="pageName" value="job" />

		</div>
	</body>

</html>