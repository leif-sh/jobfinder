<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="standard">
	<head>
		<meta charset="utf-8">
		<title>【${Requirementinfo.jobName}】-JobFinder</title>
		<meta name="keywords" content="JobFinder" />
		<meta name="description" content="JobFinder，互联网时代的领跑者！" />
		<link href="../css/main.css" type="text/css" rel="stylesheet">
	</head>
	<body class="page-white">
		<div id="wrap">
			<div id="header">
				<div class="inner">
					<h1 class="logo"><a href="/jsp/index.jsp" ka="header-home-logo" title="JobFinder"><span>JobFinder</span></a></h1>
					<div class="nav">
						<ul>
							<li class=""><a ka="header-home" href="/jsp/index.jsp">首页</a></li>
							<li class=""><a ka="header-job" href="/jsp/job.jsp">职位</a></li>
							<!--<li class=""><a ka="header-app" href="/app.html" >APP</a></li>-->
							<li class=""><a ka="header-article" href="">校招</a></li>
						</ul>
					</div>
					<div class="user-nav">
						<c:if test="${!empty sessionScope.userinfo}">
							<!--登录-->
							<ul>
								<li class="cur"><a ka="header-chat" href="/jsp/chat.jsp" >聊天<span class="nav-chat-num">3</span></a></li>
								<li class=""><a ka="header-delivery-box" href="/jsp/collect.jsp" >收藏</a></li>
								<li class=""><a ka="header-my-resume" href="/jsp/resume.jsp" >我的简历</a></li>
								<li class="nav-figure"><a href="resume.jsp" ka="header-username" ><span class="label-text">${userinfo.account}</span> <img src="../img/ico-1.jpg" alt="" /></a><div class="dropdown"><a href="/User/logout.do" ka="header-logout">退出</a></div></li>
							</ul>
						</c:if>
						<c:if test="${empty sessionScope.userinfo}">
							<!--未登录-->
							<div class="btns">
								<a href="/jsp/login.jsp" ka="header-register" class="btn btn-outline">注册</a>
								<a href="/jsp/login.jsp" ka="header-login" class="btn btn-outline">登录</a>
							</div>
						</c:if>
					</div>
				</div>
			</div>
			<div id="main">
				<div class="job-banner">
					<div class="inner">
						<div class="job-primary">
							<div class="info-primary">
								<div class="job-author"><span class="time">发布于&nbsp;<fmt:formatDate value="${Requirementinfo.catchJobTime}" pattern="yyyy年MM月dd日 HH:mm:ss"/> </span></div>
								<div class="name">${Requirementinfo.jobName} <span class="badge">${Requirementinfo.salary}</span></div>
								<p>${Requirementinfo.jobCity}<em class="vline"></em>${Requirementinfo.jobExperience}<em class="vline"></em>${Requirementinfo.educationLevel}</p>
								<div class="job-tags">
									<c:if test="${empty jobLabelsList}">
										<c:forEach items="${jobLabelsList}" var="label">
											<span>${label}</span>
										</c:forEach>
									</c:if>
								</div>
							</div>
							<div class="info-comapny">
								<div class="company-logo">
									<a ka="job-detail-company" href="/jsp/companydetail.jsp" target="_blank"><img src="https://img.bosszhipin.com/beijin/mcs/bar/brand/4309.jpg" alt="" /></a>
								</div>
								<h3 class="name"><a ka="job-detail-company" href="/jsp/companydetail.jsp" target="_blank">${company.companyName}</a></h3>
								<p>${company.companyName}</p>
								<p>${company.companyType}<em class="vline"></em>${company.companyProperty}<em class="vline"></em>${company.companyScale}</p>
							</div>
						</div>
					</div>
				</div>
				<div class="smallbanner">
					<div class="inner">
						<div class="detail-op">
							<div class="btns">
								<a ka="go_greet_tosign_11150463" href="javascript:;" data-url="/gchat/addRelation.json?jobId=3212c9296c83faf81nV73t25FlE~" redirect-url="/gchat/im.html?bossId=387368168f89c3d71XJz2dq4FVc~" target="_blank" class="btn btn-startchat">立即沟通</a>
							</div>
						</div>
						<div class="name">${Requirementinfo.jobName} <span class="badge">${Requirementinfo.salary}</span></div>
					</div>
				</div>
				<div class="job-box">
					<div class="inner">
						<div class="job-sider">

							<div class="promotion-job">
								<h3><a href="/c101010100-p100703/e_106-y_7/" ka="more-similar-jobs2" class="more" target="_blank">更多相似职位</a>相似职位</h3>
								<ul>

									<li>
										<a ka="job_sug_1" href="/job_detail/1411010968.html" target="_blank">
											<div class="company-logo"><img src="https://img.bosszhipin.com/beijin/mcs/chatphoto/20160405/15db396d924ee3f94de86cb1cb24e9af8b3f0a3b3321b88d6862d87392cf9f39.jpg" alt="" /></div>
											<div class="info-primary">
												<div class="name">测试经理 <span class="red">25k-50k</span></div>
												<p class="gray">混沌研习社<em class="vdot">·</em>北京</p>
											</div>
										</a>
									</li>

									<li>
										<a ka="job_sug_2" href="/job_detail/1410801849.html" target="_blank">
											<div class="company-logo"><img src="https://img2.bosszhipin.com/mcs/chatphoto/20160205/89d1ea38137e0c3b091e2e2fcf381c5bdcbba1006f836c8cf737f0934c9169a0.png" alt="" /></div>
											<div class="info-primary">
												<div class="name">测试经理 <span class="red">25k-35k</span></div>
												<p class="gray">1号车网<em class="vdot">·</em>北京</p>
											</div>
										</a>
									</li>

									<li>
										<a ka="job_sug_3" href="/job_detail/1410944393.html" target="_blank">
											<div class="company-logo"><img src="https://img2.bosszhipin.com/mcs/chatphoto/20160216/b7ac891c583d73722bdaf1ab23fa1dc79fc7f25bdb44b9a83bc99acd51019b6b.jpg" alt="" /></div>
											<div class="info-primary">
												<div class="name">测试leader <span class="red">20k-30k</span></div>
												<p class="gray">微吼直播<em class="vdot">·</em>北京</p>
											</div>
										</a>
									</li>

									<li>
										<a ka="job_sug_4" href="/job_detail/1406455349.html" target="_blank">
											<div class="company-logo"><img src="https://img.bosszhipin.com/beijin/mcs/chatphoto/20160711/ffa06c04736c7c010a94f1e479f251d597c30dc1371c903d153b28b57ae0f10b.jpg" alt="" /></div>
											<div class="info-primary">
												<div class="name">高级测试经理 <span class="red">30k-50k</span></div>
												<p class="gray">国美金融<em class="vdot">·</em>北京</p>
											</div>
										</a>
									</li>

									<li>
										<a ka="job_sug_5" href="/job_detail/1410922051.html" target="_blank">
											<div class="company-logo"><img src="https://img2.bosszhipin.com/mcs/chatphoto/20151217/1d60af39dc04e6a77c6c6d452b8aa264ac1ccdc4c0499d814afa67b5be50afc9.jpg" alt="" /></div>
											<div class="info-primary">
												<div class="name">测试经理 <span class="red">20k-30k</span></div>
												<p class="gray">听云<em class="vdot">·</em>北京</p>
											</div>
										</a>
									</li>

								</ul>

								<div class="view-more">
									<a href="/c101010100-p100703/e_106-y_7/" target="_blank" ka="more-similar-jobs3"><i class="more">更多相似职位</i></a>
								</div>

							</div>


						</div>
						<div class="job-detail">
							<div class="detail-figure"><img src="https://img2.bosszhipin.com/boss/avatar/avatar_2.png" alt="" /></div>
							<div class="detail-op">
								<div class="btns">
									<a ka="go_greet_tosign_11150463" href="javascript:;"  redirect-url="" target="_blank" class="btn btn-startchat">立即沟通</a><a>收藏</a>
								</div>
								<h2 class="name">武金萍</h2>
								<p class="gray">测试工程师</p>
							</div>
							<div class="detail-content">

								<div class="job-sec">
									<h3>职位描述</h3>
									<div class="text">
										${Requirementinfo.jobDescription}
									</div>
								</div>

								<div class="job-sec">
									<h3>工作地址</h3>
									<div class="job-location">
										<div class="location-address">${Requirementinfo.jobAddress}</div>
										<div id="container" class="map-container" ></div>
									</div>
								</div>
								<div class="search-box detail-search">
									<h3 class="title">搜索相关职位</h3>
									<div class="search-form">
										<form action="/job_detail/" method="get" target="_blank">
											<div class="search-form-con">
												<p class="ipt-wrap"><input ka="search-job-query" name="query" type="text" class="ipt-search" autocomplete="off" placeholder="搜索职位、公司" value="测试经理"></p>
												<div class="city-sel" ka="search-select-city">
													<i class="line"></i>
													<span class="label-text cur"><b data-val="101010100">北京</b><i class="icon-arrow-down"></i></span>
												</div>
											</div>
											<input type="hidden" name="scity" class="city-code" value="101010100" />
											<input type="hidden" name="source" value="9">
											<button type="submit" ka="search-job" class="btn btn-search">搜索</button>
											<div class="suggest-result">
												<ul></ul>
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
								<!-- SEO  -->

							</div>
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

		</div>
		<script src="/js/jquery-1.12.2.min.js"></script>
		<script src="/js/main.js"></script>

		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=e7b1cd31a6ccc8fb822b078d365b4944&plugin=AMap.Geocoder"></script>
		<script type="text/javascript">
            var geocoder = new AMap.Geocoder({
                //city: "010"//城市，默认：“全国”
            });
            /*成都 - 高新区 - 玉林 - 泰然坏球时代中心 3栋 1616号*/
            geocoder.getLocation('${Requirementinfo.jobAddress}',function(status,result){
                if(status=='complete'&&result.geocodes.length){
                    var map = new AMap.Map('container',{
                        resizeEnable: true,
                        zoom: 13,
                        center: result.geocodes[0].location
                    });
                    new AMap.Marker({
                        map:map,
                        bubble:true
                    })
                }else{
                    var container = document.getElementById('container');
                    container.html('显示位置失败');
                    console.log('获取位置失败');
                }
            })
		</script>
	</body>
	<input type="hidden" id="page_key_name" value="cpc_job_detail" />
</html>