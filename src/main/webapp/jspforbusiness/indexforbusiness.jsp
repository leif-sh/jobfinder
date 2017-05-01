<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>JobFinder-职位</title>
    <meta name="keywords" content="JobFinder" />
    <meta name="description" content="JobFinder，互联网时代的领跑者！" />
    <link href="../cssforbusiness/mainforbusiness.css" type="text/css" rel="stylesheet">
</head>
<body class="page-iframe">
<div id="wrap">
    <div id="header">
        <div class="inner">
            <h1 class="logo"><a href="javascript:;" title="直聘企业版"><img src="/v2/web/boss/images/logo.png" /><span>直聘企业版</span></a></h1>
            <div class="top-inner">
                <div class="company-title">${company.companyName}</div>
                <div class="top-user">
                    <a href="javascript:;" ka="header-link-set" class="link-set" data-url="/setting/all.json" title="设置"><i class="fz fz-set"></i></a>
                    <a href="javascript:;" ka="header-link-help" class="link-help" title="帮助"><i class="fz fz-help"></i></a>
                    <a href="/User/logout.do"  ka="header-link-signout" class="link-signout" title="退出登录"><i class="fz fz-signout"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div id="main">
        <div class="side-wrap">
            <div class="side-menu">
                <div class="figure">
                    <a ka="menu-user-info" href="javascript:;" data-url="/user/boss/info/" title="编辑"><img src="../img/ico-2.jpg" alt="" /></a>
                    <span>${bussinessuser.userName}</span>
                </div>
                <dl class="menu-position cur">
                    <dt><a class="menu-job-manage" ka="menu-manager-job" href="joblist.html" target="mainframe"><i class="icon-menu-position"></i>职位管理</a></dt>
                </dl>
                <dl class="menu-recommend ">
                    <dt><a class="menu-recommend-person" ka="menu-geek-recommend" href="javascript:;" data-url="/boss/recommend/conditions.json"><i class="icon-menu-recommend"></i>推荐牛人</a></dt>
                </dl>
                <dl class="menu-geeksearch ">
                    <dt><a class="menu-geek-search" ka="menu-geek-search" href="javascript:;" data-url="/boss/search/geek.html"><i class="icon-menu-search"></i>搜索牛人</a></dt>
                </dl>
                <dl class="menu-chat ">
                    <dt><a class="menu-chat-bussiness" ka="menu-im" href="javascript:;"><i class="icon-menu-chat"></i>沟通<span class="menu-chat-badge"><i class="dot-plenty"></i></span></a></dt>
                </dl>
                <dl class="menu-company">
                    <dt><a class="menu-companyinfo" ka="menu-company" href="javascript:;" data-url="/user/company/info/"><i class="icon-menu-company"></i>公司信息</a></dt>
                </dl>

                <div class="side-bottom-logo"></div>
            </div>
        </div>
        <div id="container">
            <!--消息 start-->
            <div class="chat-container page-container" style="display: none;">
                <iframe name="mainframe" class="frame-container" src="chatforbusiness.jsp"></iframe>
            </div>
            <!--消息 end-->
            <!--推荐页面内容插入容器-->
            <div class="sync-container page-container" style="display: none;">
                <iframe name="mainframe2" class="frame-container" src="recommendperson.jsp"></iframe>
            </div>
            <!--推荐页面内容插入容器 end-->
            <!--容器-->
            <div class="viewed-container page-container" style="display: none;">
                <iframe name="mainframe3" class="frame-container" ></iframe>
            </div>
            <!--容器 end-->
            <!--搜索容器-->
            <div class="search-container page-container" style="display: none;">
                <iframe name="mainframe4" class="frame-container" ></iframe>
            </div>
            <!--搜索容器 end-->
            <!--公司信息容器-->
            <div class="company-container page-container" style="display: none;">
                <iframe name="mainframe5" class="frame-container" ></iframe>
            </div>
            <!--公司信息容器 end-->
            <!--职位列表页面插入容器-->
            <div class="rsync-container page-container"  width="100%" style="display: block;">
                <iframe name="mainframe6" class="frame-container" src="joblist.html"></iframe>
            </div>
            <!--职位列表页面插入容器 end-->
            <!--设置页面内容插入容器-->
            <div class="set-container page-container" style="display: none;">
                <iframe name="mainframe7" class="frame-container" src="settingforbussiness.html"></iframe>
            </div>
            <!--设置页面内容插入容器 end-->
        </div>
    </div>
</div>

<div id="guide-wrap">
    <div class="guide-layer"></div>
    <div class="guide-box">
        <div class="inner">
            <div class="guide-set"><span class="icon-set"></span><p>未来如需修改，请点击右上角“<span class="text-orange">设置</span>”</p></div>
        </div>
    </div>
    <div class="guide-box">
        <div class="inner">
            <div class="guide-rank"><span class="label-text"><b>按匹配度排序</b><i class="fz fz-arrow-down"></i></span><p>新候选人超过30人，我们已按照匹配度为您排序。
                您可以随时改为按照时间排序。</p></div>
        </div>
    </div>
</div>
<!-- 截图弹窗 -->
<div class="crop_wrap" id="cropWrap" style="display: none;">
    <div class="crop_inner">
        <h1><a href="javascript:;" class="cancle"></a>添加公司照片</h1>
        <div class="crop_container">
            <span class="crop_foil"></span>
        </div>
        <div class="crop_frm" data-url="/user/crop/company/picture/" data-method="post">
            <input type="hidden" id="x" name="x" />
            <input type="hidden" id="y" name="y" />
            <input type="hidden" id="w" name="w" />
            <input type="hidden" id="h" name="h" />
            <input type="submit" value="保存" id="saveCrop"/><a href="javascript:;" class="cancle">取消</a>
        </div>
    </div>
</div>
<script src="../js/jquery-1.12.2.min.js" type="text/javascript"></script>
<script src="../js/main.js" type="text/javascript"></script>
<input type="hidden" id="page_key_name" value="bpc_chat" />
<script src="../jsforbusiness/jquery-confirm.js"></script>
<script src="../jsforbusiness/indexforbusiness.js"></script>
</body>
</html>
