<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../cssforbusiness/position.css">
    <link href="/cssforbusiness/mainforbusiness.css" type="text/css" rel="stylesheet">
    <script src="/js/jquery-2.1.4.min.js"></script>
    <script src="/jsforbusiness/chat.js"></script>
</head>
<body>
<c:if test="${empty selectStatus}">
    <script>
        window.location = "/business/chat/getChats.do";
    </script>
</c:if>
<div id="wrapper">
    <div id="main">
        <div id="container">
            <!-- 筛选列表 -->
            <div class="position-sec">
                <div class="sec-top">
                    <div class="data-menu">
                        <div class="sub-menu">
                            <div class="pull-right">
                            </div>
                            <div class="menu-status">
                                <p class="show">
                                    <a ka="chat-relationorigin-1--1" href="javascript:;" data-origin="-1" class="cur">全部</a>
                                    <a ka="chat-relationorigin-1-7" href="javascript:;" data-origin="7" class="">有完整简历</a>&nbsp;</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--全部筛选条件-->
                <div class="sec-filter">
                </div>
                <div class="sec-content">
                    <div class="data-tips" style="display:none;">
                        <div class="data-blank"><i class="tip-nodata"></i><b>没有相关数据</b></div>
                    </div>
                    <div class="user-list" >
                        <ul class="main-list">
                            <c:forEach items="${resumeList}" var="resume">
                                <li class="">
                                    <div class="user-info">
                                        <a href="/business/chat/getChatDetail.do?userId=${resume.userId}">
                                            <h3 class="name">${resume.resumeName}</h3>
                                            <p>
                                                ${resume.resumeCity}<em class="vline"></em>
                                                ${resume.resumeWorkingExperienceTime}<em class="vline"></em>
                                                ${resume.resumeEducationLevel}
                                            </p>
                                        </a>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                        <div class="loadmore" data-url="/chat/userList.json">滚动加载更多</div>
                    </div>
                    <div class="detail-box" >
                        <div class="chat-weclcome" style="display:none;">
                            <div class="welcome-tips">欢迎使用JobFinder直聘</div>
                        </div>
                        <div class="chat-wrap" >
                            <div class="detail-top">
                                <div class="pull-right">
                                    <div class="toggle-type" title="切换到简历">
                                        <span id="chatContainer" class="cur" data-target="resume-container">聊天<em></em></span>
                                        <span id="resumeContainer" data-target="chat-box">简历</span>
                                    </div>
                                </div>
                                <div class="op">
                                    <a href="javascript:;" class="btn-settop">${user.userName}</a>
                                </div>
                            </div>
                            <div class="chat-tab-content chat-box  show-box">
                                <div class="chat-list">
                                    <div class="pre-loading"><span class="loading-more"><i></i><i></i><i></i></span></div>
                                    <div class="chat-info"></div>
                                    <ul>
                                        <c:if test="${!empty chatmessageList}">
                                            <c:forEach items="${chatmessageList}" var="chatmessage">
                                                <c:if test="${chatmessage.sendFrom == 0}">
                                                    <li class="item-myself status-delivery">
                                                        <div class="figure"></div>
                                                        <div class="text"><i class="status"></i>${chatmessage.chatInfo}</div>
                                                    </li>
                                                </c:if>
                                                <c:if test="${chatmessage.sendFrom == 1}">
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
                                        <div class="links">
                                        </div>
                                        <a href="javascript:;" class="btn-resume"><span>求简历</span></a>
                                        <a href="javascript:;" class="btn-contact"><span>交换联系方式</span></a>
                                    </div>
                                    <div id="chatmessage" class="chat-message" contenteditable="true"></div>
                                    <div class="chat-op"><span class="tip">按Enter键发送，按Ctrl+Enter键换行</span><button class="btn btn-send btn-disabled" type="submit">发送</button></div>
                                </div>
                            </div>
                            <div class="chat-tab-content resume-container ">
                                <div class="resume-content-latest">
                                    <div class="resume-box">
                                        <div class="name"><h3 class="name">${resume.resumeName}</h3></div>
                                        <div class="name">所在城市：${resume.resumeCity}</div>
                                        <div class="name">教育经历：${resume.resumeEducationLevel}</div>
                                        <div class="name">联系电话：${resume.resumePhone}</div>
                                        <div class="name">工作经验：${resume.resumeWorkingExperienceTime}</div>
                                        <div class="name">个人简介：${resume.resumeDescription}</div>
                                        <div class="name">项目经验</div>
                                        <c:forEach items="${resume.projectexperienceList}" var="projectExperience">
                                            <span><fmt:formatDate value="${projectExperience.projectBeginDate}" pattern="yyyy年MM月"/>到
                                                    <fmt:formatDate value="${projectExperience.projectEndDate}" pattern="yyyy年MM月"/></span>
                                            <p>项目描述：${projectExperience.projectDescription}</p>
                                            <p>项目职责：${projectExperience.projectDuty}</p>
                                        </c:forEach>
                                        <div class="name">工作经历</div>
                                        <c:forEach items="${resume.jobexperienceList}" var="jobExperience">
                                            <p>项目名称：${jobExperience.jobName}</p>
                                            <span><fmt:formatDate value="${jobExperience.jobBeginDate}" pattern="yyyy年MM月"/> 到<fmt:formatDate value="${jobExperience.jobEndDate}" pattern="yyyy年MM月"/></span>
                                            <p>工作详情：${jobExperience.jobDetail}</p>
                                            <p>项目职责：${jobExperience.jobOfYou}</p>
                                        </c:forEach>
                                        <div class="name">教育经历</div>
                                        <c:forEach items="${resume.educationexperienceList}" var="educationExperience">
                                            <span><fmt:formatDate value="${educationExperience.educationBeginDate}" pattern="yyyy年MM月"/> 到
                                                    <fmt:formatDate value="${educationExperience.educationGraduateDate}" pattern="yyyy年MM月"/> </span>
                                            <p>所在学校：${educationExperience.educationSchoolName}</p>
                                            <p>所学专业：${educationExperience.educationMajor}</p>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="chat-tab-content attachment-container">
                                <div class="attachment-detail">
                                </div>
                            </div>
                            <div class="detail-bottom">
                                <div class="btns">
                                    <button type="button" ka="geek_resume_communication" class="btn btn-communication cur" target-status="5">收藏人才</button>
                                </div>
                                <div class="text">[沟通中]4天前，向您的职位 <span class="text-blue"></span> 发起开聊</div>
                            </div>
                        </div>
                    </div>
                    <div class="chat-sider">
                        <a href="javascript:;" class="btn-prev" title="上一个"></a>
                        <a href="javascript:;" class="btn-next" title="下一个"></a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript">
    document.onkeydown=function(event){
        var e = event || window.event || arguments.callee.caller.arguments[0];
        if(e && e.keyCode==13){ // enter 键
            var chatmessage = document.getElementById("chatmessage");
            console.log(chatmessage.textContent);
            var temp = encodeURI(encodeURI(chatmessage.textContent));
            window.location = "/business/chat/sendChatMessage.do?userId=${user.userId}&jobMessageId=${jobMessageId}&message=" + temp;
        }
    };
</script>
</body>

</html>