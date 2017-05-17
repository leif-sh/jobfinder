<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="standard">

<head>
    <meta charset="utf-8">
    <title>jobFinder-聊天</title>
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
                    <li class=""><a ka="header-home" href="/jsp/index.jsp">首页</a></li>
                    <li class=""><a ka="header-job" href="/search/searchJob.do">职位</a></li>
                   <%-- <li class=""><a ka="header-app" href="/app.html">APP</a></li>--%>
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
    <div id="main" class="inner">
        <div class="job-box">
            <div class="sider deliver-sider">
                <div class="nav-option">
                    <a href="/jsp/chat.jsp" ka="user-chatlist-msg">聊天 <i class="fz fz-mes"></i></a>
                    <a href="/jsp/collect.jsp" ka="user-chatlist-box">收藏<i class="fz fz-deliver"></i></a>
                    <a href="/jsp/resume.jsp" ka="user-chatlist-resume">我的简历<i class="fz fz-cv"></i></a>
                </div>
                <div class="promotion-download clearfix">
                    <div class="promotion-qrcode"></div>
                    <div class="text">
                        <p>
                            <a href="https://www.zhipin.com/d/v2/?type=ck&pkn=sendbox&sid=" ka="user-chatlist-download1"></a><br>
                            <a href="https://www.zhipin.com/d/v2/?type=ck&pkn=sendbox&sid=" ka="user-chatlist-download2"></a>
                        </p>
                        <p class="link-row">
                            <a href="https://www.zhipin.com/d/v2/?type=ck&pkn=sendbox&sid=" ka="user-chatlist-download3" class="link-download"></a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="job-list boss-list">
                <div class="job-tab">
                    <a href="/jsp/chat.jsp" class="cur" ka="user-chatlist-tmsg">聊天</a>
                    <a href="/jsp/collect.jsp" ka="user-chatlist-tbox">收藏</a>
                </div>
                <div class="data-tips" style="display: none;"></div>
                <ul>
                    <li class="read" data-uid="7010207"><div class="figure"><img src="https://img2.bosszhipin.com/boss/avatar/avatar_6.png"></div><div class="op"><span class="time">00:00</span><a class="btn btn-continue" href="/jsp/chatdetail.jsp" target="_blank" ka="go_chat_done_10895699">继续沟通</a></div><div class="text"><h3 class="name">jack<em>·</em>VIPKID<em>·</em>应届生<span class="gray">招Java工程师<em class="vline"></em>北京<em class="vline"></em>15K-30K</span></h3><p class="gray">“BOSS好，我正在找Java工程师的工作。今年应届毕业，积极主动、乐于学习，希望能得到您的回复。”</p></div></li>
                </ul>
                <div ka="user-chatlist-loadmore" class="loadmore">点击加载更多</div>
                <!--有职位 end-->
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
        <!--注册成功完善简历-->
        <div class="sign-form sign-welcome">
            <h3 class="title">欢迎来到BOSS直聘</h3>
            <div class="welcome-box">
                <div class="welcome-text">
                    <b>快速完善简历</b>
                    <p>做好与Boss对话前的准备吧。</p>
                </div>
                <img src="../img/icon-sign-welcome.png" alt="" />
                <div class="form-btn">
                    <a ka="registe-complete" href="/jsp/resume.jsp" class="btn">开始完善</a>
                </div>
                <div class="count-down"><em class="num">3s</em> 后自动跳转</div>
            </div>
        </div>
</div>
<script src="../js/jquery-1.12.2.min.js"></script>
<script src="../js/main.js"></script>
<input type="hidden" id="pageName" value="user_chatlist" />
</body>
</html>