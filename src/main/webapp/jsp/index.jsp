<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="standard">

	<head>
		<meta charset="utf-8">
		<title>JobFinder</title>
		<meta name="keywords" content="JobFinder" />
		<meta name="description" content="JobFinder，互联网时代的领跑者！" />
		<link href="../css/main.css" type="text/css" rel="stylesheet">
		<link href="../css/index.css" type="text/css" rel="stylesheet" />
	</head>

	<body>

		<div id="wrap">
			<div id="header">
				<div class="inner">
					<h1 class="logo"><a href="/" ka="header-home-logo" title="JobFinder"><span>JobFinder</span></a></h1>
					<div class="nav">
						<ul>
							<li class="cur">
								<a ka="header-home" href="/">首页</a>
							</li>
							<li class="">
								<a ka="header-job" href="/job_detail/">职位</a>
							</li>
							<!--<li class=""><a ka="header-app" href="/app.html" >APP</a></li>-->
							<li class="">
								<a ka="header-article" href="/article/">校招</a>
							</li>
						</ul>
					</div>

					<div class="user-nav">
						<!--未登录-->
						<div class="btns">
							<a href="/user/signup.html" ka="header-register" class="btn btn-outline">注册</a>
							<a href="/user/login.html" ka="header-login" class="btn btn-outline">登录</a>
						</div>
						<!--登录-->
						<!--<ul>
                <li class=""><a ka="header-chat" href="/gchat/chat.html" >聊天<span class="nav-chat-num"></span></a></li>
                <li class=""><a ka="header-delivery-box" href="/geek/deliver.html" >投递箱</a></li>
                <li class="cur"><a ka="header-my-resume" href="/geek/myresume.html" >我的简历</a></li>
                <li class="nav-figure"><a href="/geek/myresume.html" ka="header-username" ><span class="label-text">李铁</span> <img src="" alt="" /></a><div class="dropdown"><a href="/logout/" ka="header-logout">退出</a></div></li>
            </ul>-->
					</div>
				</div>
			</div>

			<div id="main" class="inner">
				<div class="home-box">
					<div class="home-sider">
						<!-- 左侧职位选择 -->
						<div class="job-menu">
							<dl>
								<dt><i class="icon-arrow-right"></i>研发</dt>
								<dd>
									<a href="/c101010100-p100101/" ka="cpc_side_100101">Java</a>
									<a href="/c101010100-p100103/" ka="cpc_side_100103">PHP</a>
									<a href="/c101010100-p100205/" ka="cpc_side_100205">Web前端</a>
									<a href="/c101010100-p100104/" ka="cpc_side_100104">数据挖掘</a>
								</dd>
								<div class="menu-line"></div>
								<div class="menu-sub">
									<ul>
										<li>
											<h4>后端开发</h4>
											<div class="text">
												<a href="/c101010100-p100101/" ka="cpc_side_100101">Java</a>
												<a href="/c101010100-p100102/" ka="cpc_side_100102">C++</a>
												<a href="/c101010100-p100103/" ka="cpc_side_100103">PHP</a>
												<a href="/c101010100-p100104/" ka="cpc_side_100104">数据挖掘</a>
												<a href="/c101010100-p100105/" ka="cpc_side_100105">C</a>
												<a href="/c101010100-p100106/" ka="cpc_side_100106">C#</a>
												<a href="/c101010100-p100107/" ka="cpc_side_100107">.NET</a>
												<a href="/c101010100-p100108/" ka="cpc_side_100108">Hadoop</a>
												<a href="/c101010100-p100109/" ka="cpc_side_100109">Python</a>
												<a href="/c101010100-p100110/" ka="cpc_side_100110">Delphi</a>
												<a href="/c101010100-p100111/" ka="cpc_side_100111">VB</a>
												<a href="/c101010100-p100112/" ka="cpc_side_100112">Perl</a>
												<a href="/c101010100-p100113/" ka="cpc_side_100113">Ruby</a>
												<a href="/c101010100-p100114/" ka="cpc_side_100114">Node.js</a>
												<a href="/c101010100-p100115/" ka="cpc_side_100115">搜索算法</a>
												<a href="/c101010100-p100116/" ka="cpc_side_100116">Golang</a>
												<a href="/c101010100-p100117/" ka="cpc_side_100117">自然语言处理</a>
												<a href="/c101010100-p100118/" ka="cpc_side_100118">推荐算法</a>
												<a href="/c101010100-p100119/" ka="cpc_side_100119">Erlang</a>
												<a href="/c101010100-p100120/" ka="cpc_side_100120">算法工程师</a>
												<a href="/c101010100-p100121/" ka="cpc_side_100121">语音/视频/图形开发</a>
												<a href="/c101010100-p100122/" ka="cpc_side_100122">数据采集</a>
											</div>
										</li>
										<li>
											<h4>移动开发</h4>
											<div class="text">
												<a href="/c101010100-p100201/" ka="cpc_side_100201">HTML5</a>
												<a href="/c101010100-p100202/" ka="cpc_side_100202">Android</a>
												<a href="/c101010100-p100203/" ka="cpc_side_100203">iOS</a>
												<a href="/c101010100-p100204/" ka="cpc_side_100204">WP</a>
												<a href="/c101010100-p100205/" ka="cpc_side_100205">Web前端</a>
												<a href="/c101010100-p100206/" ka="cpc_side_100206">Flash</a>
												<a href="/c101010100-p100208/" ka="cpc_side_100208">JavaScript</a>
												<a href="/c101010100-p100209/" ka="cpc_side_100209">U3D</a>
												<a href="/c101010100-p100210/" ka="cpc_side_100210">COCOS2DX</a>
											</div>
										</li>
										<li>
											<h4>数据</h4>
											<div class="text">
												<a href="/c101010100-p100506/" ka="cpc_side_100506">ETL工程师</a>
												<a href="/c101010100-p100507/" ka="cpc_side_100507">数据仓库</a>
												<a href="/c101010100-p100508/" ka="cpc_side_100508">数据开发</a>
												<a href="/c101010100-p100509/" ka="cpc_side_100509">数据挖掘</a>
												<a href="/c101010100-p100510/" ka="cpc_side_100510">数据处理工程师</a>
												<a href="/c101010100-p100511/" ka="cpc_side_100511">数据分析师</a>
												<a href="/c101010100-p100512/" ka="cpc_side_100512">数据架构师</a>
											</div>
										</li>

										<li>
											<h4>硬件开发</h4>
											<div class="text">

												<a href="/c101010100-p100801/" ka="cpc_side_100801">硬件</a>

												<a href="/c101010100-p100802/" ka="cpc_side_100802">嵌入式</a>

												<a href="/c101010100-p100803/" ka="cpc_side_100803">自动化</a>

												<a href="/c101010100-p100804/" ka="cpc_side_100804">单片机</a>

												<a href="/c101010100-p100805/" ka="cpc_side_100805">电路设计</a>

												<a href="/c101010100-p100806/" ka="cpc_side_100806">驱动开发</a>

												<a href="/c101010100-p100807/" ka="cpc_side_100807">系统集成</a>

												<a href="/c101010100-p100808/" ka="cpc_side_100808">FPGA开发</a>

												<a href="/c101010100-p100809/" ka="cpc_side_100809">DSP开发</a>

												<a href="/c101010100-p100810/" ka="cpc_side_100810">ARM开发</a>

												<a href="/c101010100-p100811/" ka="cpc_side_100811">PCB工艺</a>

												<a href="/c101010100-p100812/" ka="cpc_side_100812">模具设计</a>

												<a href="/c101010100-p100813/" ka="cpc_side_100813">热传导</a>

												<a href="/c101010100-p100814/" ka="cpc_side_100814">材料工程师</a>

												<a href="/c101010100-p100815/" ka="cpc_side_100815">精益工程师</a>

												<a href="/c101010100-p100816/" ka="cpc_side_100816">射频工程师</a>

											</div>
										</li>
										<li>
											<h4>前端开发</h4>
											<div class="text">

												<a href="/c101010100-p100901/" ka="cpc_side_100901">web前端</a>

												<a href="/c101010100-p100902/" ka="cpc_side_100902">Javascript</a>

												<a href="/c101010100-p100903/" ka="cpc_side_100903">Flash</a>

												<a href="/c101010100-p100904/" ka="cpc_side_100904">HTML5</a>

											</div>
										</li>
									</ul>
								</div>
							</dl>
							<dl>
								<dt><i class="icon-arrow-right"></i>产品</dt>
								<dd>
									<a href="/c101010100-p110101/" ka="cpc_side_110101">产品经理</a>
									<a href="/c101010100-p110302/" ka="cpc_side_110302">产品总监</a>
									<a href="/c101010100-p110105/" ka="cpc_side_110105">数据产品经理</a>
								</dd>
								<div class="menu-line"></div>
								<div class="menu-sub">
									<ul>
										<li>
											<h4>产品经理</h4>
											<div class="text">
												<a href="/c101010100-p110101/" ka="cpc_side_110101">产品经理</a>
												<a href="/c101010100-p110102/" ka="cpc_side_110102">网页产品经理</a>
												<a href="/c101010100-p110103/" ka="cpc_side_110103">移动产品经理</a>
												<a href="/c101010100-p110104/" ka="cpc_side_110104">产品助理</a>
												<a href="/c101010100-p110105/" ka="cpc_side_110105">数据产品经理</a>
												<a href="/c101010100-p110106/" ka="cpc_side_110106">电商产品经理</a>
												<a href="/c101010100-p110107/" ka="cpc_side_110107">游戏策划</a>
											</div>
										</li>
										<li>
											<h4>产品设计师</h4>
											<div class="text">
												<a href="/c101010100-p110201/" ka="cpc_side_110201">网页产品设计师</a>
												<a href="/c101010100-p110202/" ka="cpc_side_110202">无线产品设计师</a>
											</div>
										</li>
										<li>
											<h4>高端产品职位</h4>
											<div class="text">
												<a href="/c101010100-p110301/" ka="cpc_side_110301">产品部经理</a>
												<a href="/c101010100-p110302/" ka="cpc_side_110302">产品总监</a>
												<a href="/c101010100-p110303/" ka="cpc_side_110303">游戏制作人</a>
												<a href="/c101010100-p110304/" ka="cpc_side_110304">产品VP</a>
											</div>
										</li>
										<li>
											<h4>其他产品职位</h4>
											<div class="text">
												<a href="/c101010100-p110401/" ka="cpc_side_110401">其他产品职位</a>
											</div>
										</li>

									</ul>

								</div>
							</dl>
							<dl>
								<dt><i class="icon-arrow-right"></i>设计</dt>
								<dd>
									<a href="/c101010100-p120105/" ka="cpc_side_120105">UI设计师</a>
									<a href="/c101010100-p120106/" ka="cpc_side_120106">平面设计师</a>
									<a href="/c101010100-p120102/" ka="cpc_side_120102">网页设计师</a>
								</dd>
								<div class="menu-line"></div>
								<div class="menu-sub">
									<ul>
										<li>
											<h4>视觉设计</h4>
											<div class="text">
												<a href="/c101010100-p120101/" ka="cpc_side_120101">视觉设计师</a>
												<a href="/c101010100-p120102/" ka="cpc_side_120102">网页设计师</a>
												<a href="/c101010100-p120103/" ka="cpc_side_120103">Flash设计师</a>
												<a href="/c101010100-p120104/" ka="cpc_side_120104">APP设计师</a>
												<a href="/c101010100-p120105/" ka="cpc_side_120105">UI设计师</a>
												<a href="/c101010100-p120106/" ka="cpc_side_120106">平面设计师</a>
												<a href="/c101010100-p120107/" ka="cpc_side_120107">美术设计师（2D/3D）</a>
												<a href="/c101010100-p120108/" ka="cpc_side_120108">广告设计师</a>
												<a href="/c101010100-p120109/" ka="cpc_side_120109">多媒体设计师</a>
												<a href="/c101010100-p120110/" ka="cpc_side_120110">原画师</a>
												<a href="/c101010100-p120111/" ka="cpc_side_120111">游戏特效</a>
												<a href="/c101010100-p120112/" ka="cpc_side_120112">游戏界面设计师</a>
												<a href="/c101010100-p120113/" ka="cpc_side_120113">游戏场景</a>
												<a href="/c101010100-p120114/" ka="cpc_side_120114">游戏角色</a>
												<a href="/c101010100-p120115/" ka="cpc_side_120115">游戏动作</a>
												<a href="/c101010100-p120116/" ka="cpc_side_120116">三维/CAD/制图</a>
												<a href="/c101010100-p120117/" ka="cpc_side_120117">美工</a>
												<a href="/c101010100-p120118/" ka="cpc_side_120118">包装设计</a>
												<a href="/c101010100-p120119/" ka="cpc_side_120119">设计师助理</a>
												<a href="/c101010100-p120120/" ka="cpc_side_120120">动画设计师</a>

											</div>
										</li>

										<li>
											<h4>交互设计</h4>
											<div class="text">
												<a href="/c101010100-p120201/" ka="cpc_side_120201">交互设计师</a>
												<a href="/c101010100-p120202/" ka="cpc_side_120202">无线交互设计师</a>
												<a href="/c101010100-p120203/" ka="cpc_side_120203">网页交互设计师</a>
												<a href="/c101010100-p120204/" ka="cpc_side_120204">硬件交互设计师</a>

											</div>
										</li>

										<li>
											<h4>用户研究</h4>
											<div class="text">
												<a href="/c101010100-p120301/" ka="cpc_side_120301">数据分析师</a>
												<a href="/c101010100-p120302/" ka="cpc_side_120302">用户研究员</a>
												<a href="/c101010100-p120303/" ka="cpc_side_120303">游戏数值策划</a>
												<a href="/c101010100-p120304/" ka="cpc_side_120304">UX设计师</a>
												<a href="/c101010100-p120407/" ka="cpc_side_120407">用户研究经理</a>
												<a href="/c101010100-p120408/" ka="cpc_side_120408">用户研究总监</a>

											</div>
										</li>

										<li>
											<h4>高端设计职位</h4>
											<div class="text">
												<a href="/c101010100-p120401/" ka="cpc_side_120401">设计经理/主管</a>
												<a href="/c101010100-p120402/" ka="cpc_side_120402">设计总监</a>
												<a href="/c101010100-p120403/" ka="cpc_side_120403">视觉设计经理</a>
												<a href="/c101010100-p120404/" ka="cpc_side_120404">视觉设计总监</a>
												<a href="/c101010100-p120405/" ka="cpc_side_120405">交互设计经理/主管</a>
												<a href="/c101010100-p120406/" ka="cpc_side_120406">交互设计总监</a>

											</div>
										</li>

									</ul>

								</div>
							</dl>
							<dl>
								<dt><i class="icon-arrow-right"></i>测试&运维</dt>
								<dd>
									<a href="/c101010100-p110101/" ka="cpc_side_110101">测试工程师</a>
									<a href="/c101010100-p110302/" ka="cpc_side_110302">运维工程师</a>
									<a href="/c101010100-p110105/" ka="cpc_side_110105">移动测试</a>
								</dd>
								<div class="menu-line"></div>
								<div class="menu-sub">
									<ul>
										<li>
											<h4>测试</h4>
											<div class="text">
												<a href="/c101010100-p100301/" ka="cpc_side_100301">测试工程师</a>
												<a href="/c101010100-p100302/" ka="cpc_side_100302">自动化测试</a>
												<a href="/c101010100-p100303/" ka="cpc_side_100303">功能测试</a>
												<a href="/c101010100-p100304/" ka="cpc_side_100304">性能测试</a>
												<a href="/c101010100-p100305/" ka="cpc_side_100305">测试开发</a>
												<a href="/c101010100-p100306/" ka="cpc_side_100306">移动端测试</a>
												<a href="/c101010100-p100307/" ka="cpc_side_100307">游戏测试</a>
												<a href="/c101010100-p100308/" ka="cpc_side_100308">硬件测试</a>
												<a href="/c101010100-p100309/" ka="cpc_side_100309">软件测试</a>
											</div>
										</li>
										<li>
											<h4>运维/技术支持</h4>
											<div class="text">
												<a href="/c101010100-p100401/" ka="cpc_side_100401">运维工程师</a>
												<a href="/c101010100-p100402/" ka="cpc_side_100402">运维开发工程师</a>
												<a href="/c101010100-p100403/" ka="cpc_side_100403">网络工程师</a>
												<a href="/c101010100-p100404/" ka="cpc_side_100404">系统工程师</a>
												<a href="/c101010100-p100405/" ka="cpc_side_100405">IT技术支持</a>
												<a href="/c101010100-p100406/" ka="cpc_side_100406">系统管理员</a>
												<a href="/c101010100-p100407/" ka="cpc_side_100407">网络安全</a>
												<a href="/c101010100-p100408/" ka="cpc_side_100408">系统安全</a>
												<a href="/c101010100-p100409/" ka="cpc_side_100409">DBA</a>

											</div>
										</li>
									</ul>
								</div>
							</dl>
							<dl>
								<dt><i class="icon-arrow-right"></i>其他</dt>
								<dd>
									<a href="/c101010100-p110101/" ka="cpc_side_110101">人工智能</a>
									<a href="/c101010100-p110302/" ka="cpc_side_110302">项目经理</a>
									<a href="/c101010100-p110105/" ka="cpc_side_110105">图像识别</a>
								</dd>
								<div class="menu-line"></div>
								<div class="menu-sub">
									<ul>
										<li>
											<h4>项目管理</h4>
											<div class="text">
												<a href="/c101010100-p100601/" ka="cpc_side_100601">项目经理</a>
												<a href="/c101010100-p100602/" ka="cpc_side_100602">项目主管</a>
												<a href="/c101010100-p100603/" ka="cpc_side_100603">项目助理</a>
												<a href="/c101010100-p100604/" ka="cpc_side_100604">项目专员</a>
												<a href="/c101010100-p100605/" ka="cpc_side_100605">实施顾问</a>
												<a href="/c101010100-p100606/" ka="cpc_side_100606">实施工程师</a>
												<a href="/c101010100-p100607/" ka="cpc_side_100607">需求分析工程师</a>

											</div>
										</li>
										<li>
											<h4>高端技术职位</h4>
											<div class="text">
												<a href="/c101010100-p100701/" ka="cpc_side_100701">技术经理</a>
												<a href="/c101010100-p100702/" ka="cpc_side_100702">技术总监</a>
												<a href="/c101010100-p100703/" ka="cpc_side_100703">测试经理</a>
												<a href="/c101010100-p100704/" ka="cpc_side_100704">架构师</a>
												<a href="/c101010100-p100705/" ka="cpc_side_100705">CTO</a>
												<a href="/c101010100-p100706/" ka="cpc_side_100706">运维总监</a>
												<a href="/c101010100-p100707/" ka="cpc_side_100707">技术合伙人</a>
											</div>
										</li>

										<li>
											<h4>人工智能</h4>
											<div class="text">
												<a href="/c101010100-p101301/" ka="cpc_side_101301">机器学习</a>
												<a href="/c101010100-p101302/" ka="cpc_side_101302">深度学习</a>
												<a href="/c101010100-p101303/" ka="cpc_side_101303">图像算法</a>
												<a href="/c101010100-p101304/" ka="cpc_side_101304">图像处理</a>
												<a href="/c101010100-p101305/" ka="cpc_side_101305">语音识别</a>
												<a href="/c101010100-p101306/" ka="cpc_side_101306">图像识别</a>
											</div>
										</li>
										<li>
											<h4>通信</h4>
											<div class="text">
												<a href="/c101010100-p101001/" ka="cpc_side_101001">通信技术工程师</a>
												<a href="/c101010100-p101002/" ka="cpc_side_101002">通信研发工程师</a>
												<a href="/c101010100-p101003/" ka="cpc_side_101003">数据通信工程师</a>
												<a href="/c101010100-p101004/" ka="cpc_side_101004">移动通信工程师</a>
												<a href="/c101010100-p101005/" ka="cpc_side_101005">电信网络工程师</a>
												<a href="/c101010100-p101006/" ka="cpc_side_101006">电信交换工程师</a>
												<a href="/c101010100-p101007/" ka="cpc_side_101007">有线传输工程师</a>
												<a href="/c101010100-p101008/" ka="cpc_side_101008">无线射频工程师</a>
												<a href="/c101010100-p101009/" ka="cpc_side_101009">通信电源工程师</a>
												<a href="/c101010100-p101010/" ka="cpc_side_101010">通信标准化工程师</a>
												<a href="/c101010100-p101011/" ka="cpc_side_101011">通信项目专员</a>
												<a href="/c101010100-p101012/" ka="cpc_side_101012">通信项目经理</a>
												<a href="/c101010100-p101013/" ka="cpc_side_101013">核心网工程师</a>
												<a href="/c101010100-p101014/" ka="cpc_side_101014">通信测试工程师</a>
												<a href="/c101010100-p101015/" ka="cpc_side_101015">通信设备工程师</a>
												<a href="/c101010100-p101016/" ka="cpc_side_101016">光通信工程师</a>
												<a href="/c101010100-p101017/" ka="cpc_side_101017">光传输工程师</a>
												<a href="/c101010100-p101018/" ka="cpc_side_101018">光网络工程师</a>

											</div>
										</li>
									</ul>
								</div>
							</dl>
						</div>
					</div>
					<div class="home-main">
						<div class="search-box">
							<div class="search-form">
								<form action="/job_detail/" method="get">
									<div class="search-form-con">
										<p class="ipt-wrap"><input type="text" ka="search-keyword" name="query" autocomplete="off" class="ipt-search" placeholder="搜索职位、公司"></p>
										<div class="city-sel" ka="sel-city">
											<i class="line"></i>
											<span class="label-text"><b>北京</b><i class="icon-arrow-down"></i></span>
										</div>
									</div>
									<input type="hidden" name="scity" class="city-code" value="101010100" />
									<input type="hidden" name="source" value="2" />
									<button type="submit" class="btn btn-search" ka="search-btn">搜索</button>
									<div class="suggest-result">
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
												<li ka="city-101010100" data-val="101010100">北京</li>
											</ul>
											<ul>
												<li ka="city-101020100" data-val="101020100">上海</li>
											</ul>
											<ul>
												<li ka="city-101030100" data-val="101030100">天津</li>
											</ul>
											<ul>
												<li ka="city-101040100" data-val="101040100">重庆</li>
											</ul>
											<ul>
												<li ka="city-101050100" data-val="101050100">哈尔滨</li>
												<li ka="city-101050200" data-val="101050200">齐齐哈尔</li>
												<li ka="city-101050300" data-val="101050300">牡丹江</li>
												<li ka="city-101050400" data-val="101050400">佳木斯</li>
												<li ka="city-101050500" data-val="101050500">绥化</li>
												<li ka="city-101050600" data-val="101050600">黑河</li>
												<li ka="city-101050700" data-val="101050700">伊春</li>
												<li ka="city-101050800" data-val="101050800">大庆</li>
												<li ka="city-101050900" data-val="101050900">七台河</li>
												<li ka="city-101051000" data-val="101051000">鸡西</li>
												<li ka="city-101051100" data-val="101051100">鹤岗</li>
												<li ka="city-101051200" data-val="101051200">双鸭山</li>
											</ul>

											<ul>

												<li ka="city-101060100" data-val="101060100">长春</li>

												<li ka="city-101060200" data-val="101060200">吉林</li>

												<li ka="city-101060300" data-val="101060300">四平</li>

												<li ka="city-101060400" data-val="101060400">通化</li>

												<li ka="city-101060500" data-val="101060500">白城</li>

												<li ka="city-101060600" data-val="101060600">辽源</li>

												<li ka="city-101060700" data-val="101060700">松原</li>

												<li ka="city-101060800" data-val="101060800">白山</li>

												<li ka="city-101060900" data-val="101060900">延边</li>

											</ul>

											<ul>

												<li ka="city-101070100" data-val="101070100">沈阳</li>

												<li ka="city-101070200" data-val="101070200">大连</li>

												<li ka="city-101070300" data-val="101070300">鞍山</li>

												<li ka="city-101070400" data-val="101070400">抚顺</li>

												<li ka="city-101070500" data-val="101070500">本溪</li>

												<li ka="city-101070600" data-val="101070600">丹东</li>

												<li ka="city-101070700" data-val="101070700">锦州</li>

												<li ka="city-101070800" data-val="101070800">营口</li>

												<li ka="city-101070900" data-val="101070900">阜新</li>

												<li ka="city-101071000" data-val="101071000">辽阳</li>

												<li ka="city-101071100" data-val="101071100">铁岭</li>

												<li ka="city-101071200" data-val="101071200">朝阳</li>

												<li ka="city-101071300" data-val="101071300">盘锦</li>

												<li ka="city-101071400" data-val="101071400">葫芦岛</li>

											</ul>

											<ul>

												<li ka="city-101080100" data-val="101080100">呼和浩特</li>

												<li ka="city-101080200" data-val="101080200">包头</li>

												<li ka="city-101080300" data-val="101080300">乌海</li>

												<li ka="city-101080400" data-val="101080400">通辽</li>

												<li ka="city-101080500" data-val="101080500">赤峰</li>

												<li ka="city-101080600" data-val="101080600">鄂尔多斯</li>

												<li ka="city-101080700" data-val="101080700">呼伦贝尔</li>

												<li ka="city-101080800" data-val="101080800">巴彦淖尔</li>

												<li ka="city-101080900" data-val="101080900">乌兰察布</li>

												<li ka="city-101081000" data-val="101081000">锡林郭勒</li>

											</ul>

											<ul>

												<li ka="city-101090100" data-val="101090100">石家庄</li>

												<li ka="city-101090200" data-val="101090200">保定</li>

												<li ka="city-101090300" data-val="101090300">张家口</li>

												<li ka="city-101090400" data-val="101090400">承德</li>

												<li ka="city-101090500" data-val="101090500">唐山</li>

												<li ka="city-101090600" data-val="101090600">廊坊</li>

												<li ka="city-101090700" data-val="101090700">沧州</li>

												<li ka="city-101090800" data-val="101090800">衡水</li>

												<li ka="city-101090900" data-val="101090900">邢台</li>

												<li ka="city-101091000" data-val="101091000">邯郸</li>

												<li ka="city-101091100" data-val="101091100">秦皇岛</li>

											</ul>

											<ul>

												<li ka="city-101100100" data-val="101100100">太原</li>

												<li ka="city-101100200" data-val="101100200">大同</li>

												<li ka="city-101100300" data-val="101100300">阳泉</li>

												<li ka="city-101100400" data-val="101100400">晋中</li>

												<li ka="city-101100500" data-val="101100500">长治</li>

												<li ka="city-101100600" data-val="101100600">晋城</li>

												<li ka="city-101100700" data-val="101100700">临汾</li>

												<li ka="city-101100800" data-val="101100800">运城</li>

												<li ka="city-101100900" data-val="101100900">朔州</li>

												<li ka="city-101101000" data-val="101101000">忻州</li>

												<li ka="city-101101100" data-val="101101100">吕梁</li>

											</ul>

											<ul>

												<li ka="city-101110100" data-val="101110100">西安</li>

												<li ka="city-101110200" data-val="101110200">咸阳</li>

												<li ka="city-101110300" data-val="101110300">延安</li>

												<li ka="city-101110400" data-val="101110400">榆林</li>

												<li ka="city-101110500" data-val="101110500">渭南</li>

												<li ka="city-101110600" data-val="101110600">商洛</li>

												<li ka="city-101110700" data-val="101110700">安康</li>

												<li ka="city-101110800" data-val="101110800">汉中</li>

												<li ka="city-101110900" data-val="101110900">宝鸡</li>

												<li ka="city-101111000" data-val="101111000">铜川</li>

											</ul>

											<ul>

												<li ka="city-101120100" data-val="101120100">济南</li>

												<li ka="city-101120200" data-val="101120200">青岛</li>

												<li ka="city-101120300" data-val="101120300">淄博</li>

												<li ka="city-101120400" data-val="101120400">德州</li>

												<li ka="city-101120500" data-val="101120500">烟台</li>

												<li ka="city-101120600" data-val="101120600">潍坊</li>

												<li ka="city-101120700" data-val="101120700">济宁</li>

												<li ka="city-101120800" data-val="101120800">泰安</li>

												<li ka="city-101120900" data-val="101120900">临沂</li>

												<li ka="city-101121000" data-val="101121000">菏泽</li>

												<li ka="city-101121100" data-val="101121100">滨州</li>

												<li ka="city-101121200" data-val="101121200">东营</li>

												<li ka="city-101121300" data-val="101121300">威海</li>

												<li ka="city-101121400" data-val="101121400">枣庄</li>

												<li ka="city-101121500" data-val="101121500">日照</li>

												<li ka="city-101121600" data-val="101121600">莱芜</li>

												<li ka="city-101121700" data-val="101121700">聊城</li>

											</ul>

											<ul>

												<li ka="city-101130100" data-val="101130100">乌鲁木齐</li>

												<li ka="city-101130200" data-val="101130200">克拉玛依</li>

												<li ka="city-101130300" data-val="101130300">昌吉</li>

												<li ka="city-101130400" data-val="101130400">巴音郭楞</li>

												<li ka="city-101130500" data-val="101130500">博尔塔拉</li>

												<li ka="city-101130600" data-val="101130600">伊犁</li>

												<li ka="city-101130700" data-val="101130700">克孜勒苏柯尔克孜</li>

											</ul>

											<ul>

												<li ka="city-101150100" data-val="101150100">西宁</li>

												<li ka="city-101150200" data-val="101150200">海东</li>

												<li ka="city-101150300" data-val="101150300">海北</li>

												<li ka="city-101150400" data-val="101150400">黄南</li>

												<li ka="city-101150500" data-val="101150500">海南</li>

												<li ka="city-101150600" data-val="101150600">果洛</li>

												<li ka="city-101150700" data-val="101150700">玉树</li>

												<li ka="city-101150800" data-val="101150800">海西</li>

											</ul>

											<ul>

												<li ka="city-101160100" data-val="101160100">兰州</li>

												<li ka="city-101160200" data-val="101160200">定西</li>

												<li ka="city-101160300" data-val="101160300">平凉</li>

												<li ka="city-101160400" data-val="101160400">庆阳</li>

												<li ka="city-101160500" data-val="101160500">武威</li>

												<li ka="city-101160600" data-val="101160600">金昌</li>

												<li ka="city-101160700" data-val="101160700">张掖</li>

												<li ka="city-101160800" data-val="101160800">酒泉</li>

												<li ka="city-101160900" data-val="101160900">天水</li>

												<li ka="city-101161000" data-val="101161000">白银</li>

												<li ka="city-101161100" data-val="101161100">陇南</li>

												<li ka="city-101161200" data-val="101161200">嘉峪关</li>

												<li ka="city-101161300" data-val="101161300">临夏</li>

												<li ka="city-101161400" data-val="101161400">甘南</li>

											</ul>

											<ul>

												<li ka="city-101170100" data-val="101170100">银川</li>

												<li ka="city-101170200" data-val="101170200">石嘴山</li>

												<li ka="city-101170300" data-val="101170300">吴忠</li>

												<li ka="city-101170400" data-val="101170400">固原</li>

												<li ka="city-101170500" data-val="101170500">中卫</li>

											</ul>

											<ul>

												<li ka="city-101180100" data-val="101180100">郑州</li>

												<li ka="city-101180200" data-val="101180200">安阳</li>

												<li ka="city-101180300" data-val="101180300">新乡</li>

												<li ka="city-101180400" data-val="101180400">许昌</li>

												<li ka="city-101180500" data-val="101180500">平顶山</li>

												<li ka="city-101180600" data-val="101180600">信阳</li>

												<li ka="city-101180700" data-val="101180700">南阳</li>

												<li ka="city-101180800" data-val="101180800">开封</li>

												<li ka="city-101180900" data-val="101180900">洛阳</li>

												<li ka="city-101181000" data-val="101181000">商丘</li>

												<li ka="city-101181100" data-val="101181100">焦作</li>

												<li ka="city-101181200" data-val="101181200">鹤壁</li>

												<li ka="city-101181300" data-val="101181300">濮阳</li>

												<li ka="city-101181400" data-val="101181400">周口</li>

												<li ka="city-101181500" data-val="101181500">漯河</li>

												<li ka="city-101181600" data-val="101181600">驻马店</li>

												<li ka="city-101181700" data-val="101181700">三门峡</li>

											</ul>

											<ul>

												<li ka="city-101190100" data-val="101190100">南京</li>

												<li ka="city-101190200" data-val="101190200">无锡</li>

												<li ka="city-101190300" data-val="101190300">镇江</li>

												<li ka="city-101190400" data-val="101190400">苏州</li>

												<li ka="city-101190500" data-val="101190500">南通</li>

												<li ka="city-101190600" data-val="101190600">扬州</li>

												<li ka="city-101190700" data-val="101190700">盐城</li>

												<li ka="city-101190800" data-val="101190800">徐州</li>

												<li ka="city-101190900" data-val="101190900">淮安</li>

												<li ka="city-101191000" data-val="101191000">连云港</li>

												<li ka="city-101191100" data-val="101191100">常州</li>

												<li ka="city-101191200" data-val="101191200">泰州</li>

												<li ka="city-101191300" data-val="101191300">宿迁</li>

												<li ka="city-101191400" data-val="101191400">昆山</li>

												<li ka="city-101191500" data-val="101191500">新沂</li>

											</ul>

											<ul>

												<li ka="city-101200100" data-val="101200100">武汉</li>

												<li ka="city-101200200" data-val="101200200">襄阳</li>

												<li ka="city-101200300" data-val="101200300">鄂州</li>

												<li ka="city-101200400" data-val="101200400">孝感</li>

												<li ka="city-101200500" data-val="101200500">黄冈</li>

												<li ka="city-101200600" data-val="101200600">黄石</li>

												<li ka="city-101200700" data-val="101200700">咸宁</li>

												<li ka="city-101200800" data-val="101200800">荆州</li>

												<li ka="city-101200900" data-val="101200900">宜昌</li>

												<li ka="city-101201000" data-val="101201000">十堰</li>

												<li ka="city-101201100" data-val="101201100">随州</li>

												<li ka="city-101201200" data-val="101201200">荆门</li>

												<li ka="city-101201300" data-val="101201300">恩施</li>

												<li ka="city-101201400" data-val="101201400">仙桃</li>

												<li ka="city-101201500" data-val="101201500">潜江</li>

											</ul>

											<ul>

												<li ka="city-101210100" data-val="101210100">杭州</li>

												<li ka="city-101210200" data-val="101210200">湖州</li>

												<li ka="city-101210300" data-val="101210300">嘉兴</li>

												<li ka="city-101210400" data-val="101210400">宁波</li>

												<li ka="city-101210500" data-val="101210500">绍兴</li>

												<li ka="city-101210600" data-val="101210600">台州</li>

												<li ka="city-101210700" data-val="101210700">温州</li>

												<li ka="city-101210800" data-val="101210800">丽水</li>

												<li ka="city-101210900" data-val="101210900">金华</li>

												<li ka="city-101211000" data-val="101211000">衢州</li>

												<li ka="city-101211100" data-val="101211100">舟山</li>

											</ul>

											<ul>

												<li ka="city-101220100" data-val="101220100">合肥</li>

												<li ka="city-101220200" data-val="101220200">蚌埠</li>

												<li ka="city-101220300" data-val="101220300">芜湖</li>

												<li ka="city-101220400" data-val="101220400">淮南</li>

												<li ka="city-101220500" data-val="101220500">马鞍山</li>

												<li ka="city-101220600" data-val="101220600">安庆</li>

												<li ka="city-101220700" data-val="101220700">宿州</li>

												<li ka="city-101220800" data-val="101220800">阜阳</li>

												<li ka="city-101220900" data-val="101220900">亳州</li>

												<li ka="city-101221000" data-val="101221000">滁州</li>

												<li ka="city-101221100" data-val="101221100">淮北</li>

												<li ka="city-101221200" data-val="101221200">铜陵</li>

												<li ka="city-101221300" data-val="101221300">宣城</li>

												<li ka="city-101221400" data-val="101221400">六安</li>

												<li ka="city-101221500" data-val="101221500">池州</li>

												<li ka="city-101221600" data-val="101221600">黄山</li>

											</ul>

											<ul>

												<li ka="city-101230100" data-val="101230100">福州</li>

												<li ka="city-101230200" data-val="101230200">厦门</li>

												<li ka="city-101230300" data-val="101230300">宁德</li>

												<li ka="city-101230400" data-val="101230400">莆田</li>

												<li ka="city-101230500" data-val="101230500">泉州</li>

												<li ka="city-101230600" data-val="101230600">漳州</li>

												<li ka="city-101230700" data-val="101230700">龙岩</li>

												<li ka="city-101230800" data-val="101230800">三明</li>

												<li ka="city-101230900" data-val="101230900">南平</li>

											</ul>

											<ul>

												<li ka="city-101240100" data-val="101240100">南昌</li>

												<li ka="city-101240200" data-val="101240200">九江</li>

												<li ka="city-101240300" data-val="101240300">上饶</li>

												<li ka="city-101240400" data-val="101240400">抚州</li>

												<li ka="city-101240500" data-val="101240500">宜春</li>

												<li ka="city-101240600" data-val="101240600">吉安</li>

												<li ka="city-101240700" data-val="101240700">赣州</li>

												<li ka="city-101240800" data-val="101240800">景德镇</li>

												<li ka="city-101240900" data-val="101240900">萍乡</li>

												<li ka="city-101241000" data-val="101241000">新余</li>

												<li ka="city-101241100" data-val="101241100">鹰潭</li>

											</ul>

											<ul>

												<li ka="city-101250100" data-val="101250100">长沙</li>

												<li ka="city-101250200" data-val="101250200">湘潭</li>

												<li ka="city-101250300" data-val="101250300">株洲</li>

												<li ka="city-101250400" data-val="101250400">衡阳</li>

												<li ka="city-101250500" data-val="101250500">郴州</li>

												<li ka="city-101250600" data-val="101250600">常德</li>

												<li ka="city-101250700" data-val="101250700">益阳</li>

												<li ka="city-101250800" data-val="101250800">娄底</li>

												<li ka="city-101250900" data-val="101250900">邵阳</li>

												<li ka="city-101251000" data-val="101251000">岳阳</li>

												<li ka="city-101251100" data-val="101251100">张家界</li>

												<li ka="city-101251200" data-val="101251200">怀化</li>

												<li ka="city-101251300" data-val="101251300">永州</li>

												<li ka="city-101251400" data-val="101251400">湘西</li>

											</ul>

											<ul>

												<li ka="city-101260100" data-val="101260100">贵阳</li>

												<li ka="city-101260200" data-val="101260200">遵义</li>

												<li ka="city-101260300" data-val="101260300">安顺</li>

												<li ka="city-101260400" data-val="101260400">铜仁</li>

												<li ka="city-101260500" data-val="101260500">毕节</li>

												<li ka="city-101260600" data-val="101260600">六盘水</li>

												<li ka="city-101260700" data-val="101260700">黔东南</li>

												<li ka="city-101260800" data-val="101260800">黔南</li>

												<li ka="city-101260900" data-val="101260900">黔西南</li>

											</ul>

											<ul>

												<li ka="city-101270100" data-val="101270100">成都</li>

												<li ka="city-101270200" data-val="101270200">攀枝花</li>

												<li ka="city-101270300" data-val="101270300">自贡</li>

												<li ka="city-101270400" data-val="101270400">绵阳</li>

												<li ka="city-101270500" data-val="101270500">南充</li>

												<li ka="city-101270600" data-val="101270600">达州</li>

												<li ka="city-101270700" data-val="101270700">遂宁</li>

												<li ka="city-101270800" data-val="101270800">广安</li>

												<li ka="city-101270900" data-val="101270900">巴中</li>

												<li ka="city-101271000" data-val="101271000">泸州</li>

												<li ka="city-101271100" data-val="101271100">宜宾</li>

												<li ka="city-101271200" data-val="101271200">内江</li>

												<li ka="city-101271300" data-val="101271300">资阳</li>

												<li ka="city-101271400" data-val="101271400">乐山</li>

												<li ka="city-101271500" data-val="101271500">眉山</li>

												<li ka="city-101271600" data-val="101271600">雅安</li>

												<li ka="city-101271700" data-val="101271700">德阳</li>

												<li ka="city-101271800" data-val="101271800">广元</li>

												<li ka="city-101271900" data-val="101271900">阿坝</li>

												<li ka="city-101272000" data-val="101272000">凉山</li>

												<li ka="city-101272100" data-val="101272100">甘孜</li>

											</ul>

											<ul>

												<li ka="city-101280100" data-val="101280100">广州</li>

												<li ka="city-101280200" data-val="101280200">韶关</li>

												<li ka="city-101280300" data-val="101280300">惠州</li>

												<li ka="city-101280400" data-val="101280400">梅州</li>

												<li ka="city-101280500" data-val="101280500">汕头</li>

												<li ka="city-101280600" data-val="101280600">深圳</li>

												<li ka="city-101280700" data-val="101280700">珠海</li>

												<li ka="city-101280800" data-val="101280800">佛山</li>

												<li ka="city-101280900" data-val="101280900">肇庆</li>

												<li ka="city-101281000" data-val="101281000">湛江</li>

												<li ka="city-101281100" data-val="101281100">江门</li>

												<li ka="city-101281200" data-val="101281200">河源</li>

												<li ka="city-101281300" data-val="101281300">清远</li>

												<li ka="city-101281400" data-val="101281400">云浮</li>

												<li ka="city-101281500" data-val="101281500">潮州</li>

												<li ka="city-101281600" data-val="101281600">东莞</li>

												<li ka="city-101281700" data-val="101281700">中山</li>

												<li ka="city-101281800" data-val="101281800">阳江</li>

												<li ka="city-101281900" data-val="101281900">揭阳</li>

												<li ka="city-101282000" data-val="101282000">茂名</li>

												<li ka="city-101282100" data-val="101282100">汕尾</li>

											</ul>

											<ul>

												<li ka="city-101290100" data-val="101290100">昆明</li>

												<li ka="city-101290200" data-val="101290200">曲靖</li>

												<li ka="city-101290300" data-val="101290300">保山</li>

												<li ka="city-101290400" data-val="101290400">玉溪</li>

												<li ka="city-101290500" data-val="101290500">普洱</li>

												<li ka="city-101290700" data-val="101290700">昭通</li>

												<li ka="city-101290800" data-val="101290800">临沧</li>

												<li ka="city-101290900" data-val="101290900">丽江</li>

												<li ka="city-101291000" data-val="101291000">西双版纳</li>

												<li ka="city-101291100" data-val="101291100">文山</li>

												<li ka="city-101291200" data-val="101291200">红河</li>

												<li ka="city-101291300" data-val="101291300">德宏</li>

												<li ka="city-101291400" data-val="101291400">怒江</li>

												<li ka="city-101291500" data-val="101291500">迪庆</li>

												<li ka="city-101291600" data-val="101291600">大理</li>

												<li ka="city-101291700" data-val="101291700">楚雄</li>

											</ul>

											<ul>

												<li ka="city-101300100" data-val="101300100">南宁</li>

												<li ka="city-101300200" data-val="101300200">崇左</li>

												<li ka="city-101300300" data-val="101300300">柳州</li>

												<li ka="city-101300400" data-val="101300400">来宾</li>

												<li ka="city-101300500" data-val="101300500">桂林</li>

												<li ka="city-101300600" data-val="101300600">梧州</li>

												<li ka="city-101300700" data-val="101300700">贺州</li>

												<li ka="city-101300800" data-val="101300800">贵港</li>

												<li ka="city-101300900" data-val="101300900">玉林</li>

												<li ka="city-101301000" data-val="101301000">百色</li>

												<li ka="city-101301100" data-val="101301100">钦州</li>

												<li ka="city-101301200" data-val="101301200">河池</li>

												<li ka="city-101301300" data-val="101301300">北海</li>

												<li ka="city-101301400" data-val="101301400">防城港</li>

											</ul>

											<ul>

												<li ka="city-101310100" data-val="101310100">海口</li>

												<li ka="city-101310200" data-val="101310200">三亚</li>

												<li ka="city-101310300" data-val="101310300">三沙</li>

											</ul>

											<ul>

												<li ka="city-101340100" data-val="101340100">台北</li>

												<li ka="city-101340200" data-val="101340200">新北</li>

												<li ka="city-101340300" data-val="101340300">台中</li>

												<li ka="city-101340400" data-val="101340400">台南</li>

												<li ka="city-101340500" data-val="101340500">高雄</li>

												<li ka="city-101340600" data-val="101340600">基隆</li>

												<li ka="city-101340700" data-val="101340700">嘉义</li>

												<li ka="city-101340800" data-val="101340800">屏东</li>

											</ul>

											<ul>

												<li ka="city-101140100" data-val="101140100">拉萨</li>

											</ul>

											<ul>

												<li ka="city-101320300" data-val="101320300">香港</li>

											</ul>

											<ul>

												<li ka="city-101330100" data-val="101330100">澳门</li>

											</ul>

										</div>
									</div>
								</form>
							</div>
							<!--热门职位-->
							<div class="search-hot">
								<!--<b>热门职位:</b>
                            <a href="/c101010100-p100101/" ka="hot-position-1">Java</a>
                            <a href="/c101010100-p100103/" ka="hot-position-2">PHP</a>
                            <a href="/c101010100-p100102/" ka="hot-position-3">C++</a>
                            <a href="/c101010100-p100205/" ka="hot-position-4">Web前端</a>
                            <a href="/c101010100-p100203/" ka="hot-position-5">iOS</a>
                            <a href="/c101010100-p100202/" ka="hot-position-6">Android</a>
                            <a href="/c101010100-p110101/" ka="hot-position-7">产品经理</a>
                            <a href="/c101010100-p120105/" ka="hot-position-8">UI设计师</a>
                            <a href="/c101010100-p130102/" ka="hot-position-9">产品运营</a>-->
							</div>
						</div>
						<div class="slider-box">

							<div class="promotion-main container">
									<div class="containerimg">
										<div class="img01"></div>
										<div class="img02"></div>
										<div class="img03"></div>
									</div>
								
							</div>
						</div>
						<div class="job-list" data-filter="city101010100" data-keyword="" data-l3code="0" data-rescount="281750" data-page="1" data-source="4">
							<ul>

								<li>
									<a href="/job_detail/1411141617.html" ka="job_list_1" data-itemId="1" data-lid="4-5rbJJsj" data-index="1" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">Java</h3>
												<p class="saraly"><span class="red">25K-45K</span></p>
												<p>北京<em class="vline"></em>5-10年<em class="vline"></em>本科</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">华为</div>
													<p>IT软件<em class="vline"></em>不需要融资</p>
												</div>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/job_detail/1411142284.html" ka="job_list_2" data-itemId="2" data-lid="4-5rbJJsj" data-index="2" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">Android</h3>
												<p class="saraly"><span class="red">15K-25K</span></p>
												<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">中软国际</div>
													<p>IT软件<em class="vline"></em>已上市</p>
												</div>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/job_detail/1411138971.html" ka="job_list_3" data-itemId="3" data-lid="4-5rbJJsj" data-index="3" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">网络工程师</h3>
												<p class="saraly"><span class="red">15K-22K</span></p>
												<p>北京<em class="vline"></em>1-3年<em class="vline"></em>本科</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">美团点评</div>
													<p>O2O<em class="vline"></em>D轮及以上</p>
												</div>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/job_detail/1411139137.html" ka="job_list_4" data-itemId="4" data-lid="4-5rbJJsj" data-index="4" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">产品经理</h3>
												<p class="saraly"><span class="red">20K-25K</span></p>
												<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">京东</div>
													<p>电子商务<em class="vline"></em>已上市</p>
												</div>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/job_detail/1411143795.html" ka="job_list_5" data-itemId="5" data-lid="4-5rbJJsj" data-index="5" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">大数据开发工程师/专家</h3>
												<p class="saraly"><span class="red">20K-40K</span></p>
												<p>北京<em class="vline"></em>5-10年<em class="vline"></em>本科</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">滴滴出行</div>
													<p>移动互联网<em class="vline"></em>D轮及以上</p>
												</div>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/job_detail/1411137192.html" ka="job_list_6" data-itemId="6" data-lid="4-5rbJJsj" data-index="6" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">高级产品经理</h3>
												<p class="saraly"><span class="red">15K-30K</span></p>
												<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">百度</div>
													<p>互联网<em class="vline"></em>已上市</p>
												</div>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/job_detail/1411140691.html" ka="job_list_7" data-itemId="7" data-lid="4-5rbJJsj" data-index="7" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">深度学习平台开发工程师</h3>
												<p class="saraly"><span class="red">20K-25K</span></p>
												<p>北京<em class="vline"></em>3-5年<em class="vline"></em>硕士</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">美图公司</div>
													<p>互联网<em class="vline"></em>D轮及以上</p>
												</div>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/job_detail/1411122883.html" ka="job_list_8" data-itemId="8" data-lid="4-5rbJJsj" data-index="8" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">Java开发工程师【京东】</h3>
												<p class="saraly"><span class="red">20K-30K</span></p>
												<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">京东商城</div>
													<p>电子商务<em class="vline"></em>已上市</p>
												</div>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/job_detail/1411133524.html" ka="job_list_9" data-itemId="9" data-lid="4-5rbJJsj" data-index="9" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">中级安全开发工程师</h3>
												<p class="saraly"><span class="red">10K-20K</span></p>
												<p>北京<em class="vline"></em>1-3年<em class="vline"></em>本科</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">链家网</div>
													<p>移动互联网<em class="vline"></em>已上市</p>
												</div>
											</div>
										</div>
									</a>
								</li>

								<li>
									<a href="/job_detail/1411138655.html" ka="job_list_10" data-itemId="10" data-lid="4-5rbJJsj" data-index="10" target="_blank">
										<div class="job-primary">
											<div class="info-primary">
												<h3 class="name">资深前端开发工程师/前端开发专家</h3>
												<p class="saraly"><span class="red">16K-30K</span></p>
												<p>北京<em class="vline"></em>3-5年<em class="vline"></em>本科</p>
											</div>
											<div class="info-comapny">
												<div class="company-text">
													<div class="company-logo">阿里影业</div>
													<p>文化娱乐<em class="vline"></em>已上市</p>
												</div>
											</div>
										</div>
									</a>
								</li>
							</ul>
							<div class="link-all">
								<a href="/c101010100/" ka="all-jobs">全部职位</a>
							</div>
							<!--有职位 end-->
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
					<!--放置二维码扫描下载App-->
					<!--<li class="siderbar-qrcode" title="BOSS直聘APP"><div class="qrcode-layer"><i></i><img src="https://www.zhipin.com/qrcode/common.json?content=https%3A%2F%2Fwww.zhipin.com%2Fd%2Fv2%2F%3Ftype%3Dqr%26pkn%3Dqt%26sid%3D&w=200&h=200" alt="" />下载BOSS直聘APP</div></li>-->
				</ul>
			</div>

		</div>
		<script src="https://www.zhipin.com/v2/web/geek/js/lib/jquery-1.12.2.min.js"></script>
		<script src="https://www.zhipin.com/v2/web/geek/js/main.js"></script>
		<input type="hidden" id="page_key_name" value="cpc_job_index" />

		<script src="https://img.bosszhipin.com/js/analytics.min.js"></script>
		<script src="https://img.bosszhipin.com/js/utils/ka.js?v=1.0"></script>
		<script>
			function get_share_datas_from_html_inapp() {
				var shid = "shdefault";
				var urlShid = getQueryString('shid');
				var urlSid = getQueryString('sid');
				if(urlShid) {
					shid = urlShid;
				} else if(urlSid) {
					shid = urlSid;
				}
				var pk = "pkdefault";
				var pp = "ppdefault";
				var pkn = document.getElementById("page_key_name");
				if(pkn) {
					var pknVal = pkn.value;
					if(pknVal) {
						var pkArray = pknVal.split("|")
						if(pkArray.length == 1) {
							pk = pkArray[0];
						} else if(pkArray.length >= 2) {
							pk = pkArray[0];
							pp = pkArray[1];
						}
					}
				}
				var ret = new Array();
				ret['shid'] = shid;
				ret['pk'] = pk;
				ret['pp'] = pp;
				return ret;
			}

			function getQueryString(name) {
				var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
				var r = window.location.search.substr(1).match(reg);
				if(r != null) return unescape(r[2]);
				return null;
			}
		</script>
	</body>

</html>