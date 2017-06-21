<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="standard">
<head>
    <meta charset="utf-8">
    <title>jobFinder-聊天</title>
    <link href="/css/main.css" type="text/css" rel="stylesheet">
</head>
<body>
<c:if test="${empty selectStatus}">
    <script>
        window.location = "/user/collection/getCollections.do";
    </script>
</c:if>
<div id="wrap">
    <div id="header">
        <div class="inner">
            <h1 class="logo"><a href="/" ka="header-home-logo" title="JobFinder"><span>BOSS直聘</span></a></h1>
            <div class="nav">
                <ul>
                    <li class=""><a ka="header-home" href="/jsp/index.jsp">首页</a></li>
                    <li class=""><a ka="header-job" href="/jsp/job.jsp">职位</a></li>
                    <%-- <li class=""><a ka="header-app" href="/app.html">APP</a></li>--%>
                    <%--<li class=""><a ka="header-article" href="">校招</a></li>--%>
                </ul>
            </div>

            <div class="user-nav">
                <c:if test="${sessionScope.userinfo != null}">
                    <!--登录-->
                    <ul>
                        <li class=""><a ka="header-chat" href="/jsp/chat.jsp" >聊天<span class="nav-chat-num"></span></a></li>
                        <li class="cur"><a ka="header-delivery-box" href="/jsp/collect.jsp" >收藏</a></li>
                        <li class=""><a ka="header-my-resume" href="/jsp/resume.jsp" >我的简历</a></li>
                        <li class="nav-figure"><a href="resume.jsp" ka="header-username" ><span class="label-text">${userinfo.account}</span> <img src="/img/ico-1.jpg" alt="" /></a><div class="dropdown"><a href="/user/logout.do" ka="header-logout">退出</a></div></li>
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
        <div class="job-box">
            <div class="sider deliver-sider">
                <div class="nav-option">
                    <a href="/gchat/chat.html" ka="user-chatlist-msg">聊天 <i class="fz fz-mes"></i></a>
                    <a href="/geek/deliver.html" ka="user-chatlist-box">收藏<i class="fz fz-deliver"></i></a>
                    <a href="/geek/myresume.html" ka="user-chatlist-resume">我的简历<i class="fz fz-cv"></i></a>
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
                    <a href="/jsp/chat.jsp" ka="user-chatlist-tmsg">聊天</a>
                    <a href="/jsp/collect.jsp" class="cur" ka="user-chatlist-tbox">收藏</a>
                </div>
                <div class="data-tips" style="display: none;"></div>
                <ul>
                    <c:forEach items="${collectionjobList}" var="collectionjob">
                        <li class="read" data-uid="7010207">
                            <div class="figure"><img src="https://img2.bosszhipin.com/boss/avatar/avatar_6.png"></div>
                            <div class="op">
                                <a class="btn btn-continue" href="/job/${collectionjob.jobMessageId}" target="_blank" ka="go_chat_done_10895699">查看详情</a>
                                <a class="btn btn-continue" href="/user/collection/cancelCollection.do?collectionId=${collectionjob.collectionId}">取消收藏</a>
                            </div>
                            <div class="text" style="margin-top: 20px;margin-left: 100px">
                                <h3 class="name">
                                    jack
                                    <em>·</em>
                                    ${collectionjob.requirementinfo.sourceCompanyName}
                                    <em>·</em>
                                    ${collectionjob.requirementinfo.educationLevel}
                                    <span class="gray">
                                    ${collectionjob.requirementinfo.jobName}
                                    <em class="vline"></em>
                                    ${collectionjob.requirementinfo.jobCity}<em class="vline"></em>
                                    ${collectionjob.requirementinfo.salary}
                                </span>
                                </h3>
                            </div>
                        </li>
                    </c:forEach>
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
            <img src="/v2/web/geek/images/icon-sign-welcome.png" alt="" />
            <div class="form-btn">
                <a ka="registe-complete" href="/niurenweb/complete/guide.html" class="btn">开始完善</a>
            </div>
            <div class="count-down"><em class="num">3s</em> 后自动跳转</div>
        </div>
    </div>
</div>
<script src="/js/jquery-1.12.2.min.js"></script>
<script src="/js/main.js"></script>
<input type="hidden" id="pageName" value="user_chatlist" />
</body>

</html>
