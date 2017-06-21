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
    <link href="/css/main.css" type="text/css" rel="stylesheet">
</head>
<body>
<div id="wrap">
    <div id="header">
        <div class="inner">
            <h1 class="logo"><a href="/" ka="header-home-logo" title="JobFinder"><span>BOSS直聘</span></a></h1>
            <div class="nav">
                <ul>
                    <li class=""><a ka="header-home" href="/jsp/index.jsp">首页</a></li>
                    <li class=""><a ka="header-job" href="/jsp/job.jsp">职位</a></li>
                    <!--<li class=""><a ka="header-app" href="/app.html" >APP</a></li>-->
                    <%--<li class=""><a ka="header-article" href="">校招</a></li>--%>
                </ul>
            </div>
            <div class="user-nav">
                <c:if test="${!empty sessionScope.userinfo}">
                    <!--登录-->
                    <ul>
                        <li class="cur"><a ka="header-chat" href="/jsp/chat.jsp" >聊天<span class="nav-chat-num">3</span></a></li>
                        <li class=""><a ka="header-delivery-box" href="/jsp/collect.jsp" >收藏</a></li>
                        <li class=""><a ka="header-my-resume" href="/jsp/resume.jsp" >我的简历</a></li>
                        <li class="nav-figure"><a href="resume.jsp" ka="header-username" ><span class="label-text">${userinfo.account}</span> <img src="/img/ico-1.jpg" alt="" /></a><div class="dropdown"><a href="/user/logout.do" ka="header-logout">退出</a></div></li>
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
        <div class="chat-container ">
            <div class="chat-sider">
                <div class="job-primary">
                    <div class="info-primary">
                        <h3 class="name">${requirementinfo.jobName}</h3>
                        <p class="saraly"><span class="red">${requirementinfo.salary}</span></p>
                        <p>${requirementinfo.sourceCompanyName}<em class="vline"></em>${requirementinfo.jobCity}<em class="vline"></em>${requirementinfo.jobExperience}<em class="vline"></em>${requirementinfo.educationLevel}</p>
                        <p>
                            <a href="${requirementinfo.jobUrl}" class="btn btn-outline" target="_blank">查看职位详情</a>
                        </p>
                    </div>
                </div>
                <h3>职位描述</h3>
                <div class="detail-content">
                    <div class="job-sec">
                        <div class="text">
                            ${requirementinfo.jobDescription}
                        </div>
                    </div>
                </div>
            </div>

            <div class="chat-wrap">
                <div class="detail-top">
                    <div class="op">
                        <a href="javascript:;">${requirementinfo.businessuser.businessUserName}</a><span>${requirementinfo.sourceCompanyName}<em class="vline"></em>${requirementinfo.businessuser.businessJob}</span></div>
                </div>
                <div class="resume-container"></div>
                <div class="chat-box show-box">
                    <div class="chat-list" data-uid="7010207" data-eid="3fb3eca7da6117b30HR729-9Fw~~">
                        <ul>
                            <c:if test="${!empty chatmessageList}">
                                <c:forEach items="${chatmessageList}" var="chatmessage">
                                    <c:if test="${chatmessage.sendFrom == 1}">
                                        <li class="item-myself status-delivery">
                                            <div class="figure"></div>
                                            <div class="text"><i class="status"></i>${chatmessage.chatInfo}</div>
                                        </li>
                                    </c:if>
                                    <c:if test="${chatmessage.sendFrom == 0}">
                                        <li class="item-friend status-delivery">
                                            <div class="figure"></div>
                                            <div class="text"><i class="status"></i>${chatmessage.chatInfo}</div>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </ul>
                    </div>
                    <div class="chat-editor">
                        <div class="chat-controls">
                            <a ka="geek_chat_emoji" href="javascript:;" class="btn-emotion"><i>表情</i></a>
                        </div>
                        <span class="chat-placholder">输入消息</span>
                        <div id="chatmessage" class="chat-message" contenteditable="true" ></div>
                        <div class="chat-op" ka="geek_chat_send"><span class="tip">按Enter键发送，按Ctrl+Enter键换行</span><button class="btn btn-send btn-disabled" type="submit">发送</button></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<script src="/js/jquery-1.12.2.min.js"></script>
<script src="/js/main.js"></script>
<script type="text/javascript">
    document.onkeydown=function(event){
        var e = event || window.event || arguments.callee.caller.arguments[0];
        if(e && e.keyCode==13){ // enter 键
            var chatmessage = document.getElementById("chatmessage");
            console.log(chatmessage.textContent);
            var temp = encodeURI(encodeURI(chatmessage.textContent));
            window.location = "/user/chat/sendChatMessage.do?businessUserId=${requirementinfo.businessUserId}&jobMessageId=${requirementinfo.jobMessageId}&message=" + temp;
        }
    };
</script>
</body>
<input type="hidden" id="page_key_name" value="chatdetail" />

</html>
