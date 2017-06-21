<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/6/11
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/cssforbusiness/position.css">
    <link href="/cssforbusiness/mainforbusiness.css" type="text/css" rel="stylesheet">
</head>
<body>
<c:if test="${empty selectStatus}">
    <script>
        window.location = "/business/personrecommend/getRecommendPerson.do";
    </script>
</c:if>
<div id="wrapper">
    <div id="main">
        <div id="container">
            <!-- 筛选列表 -->
            <div class="position-sec">
                <div class="sec-top">
                    <div class="pull-right">
                        <div class="sel-filter">
                            <!--<span class="label-text" ka="main_filter"><b>筛选</b><i class="fz fz-arrow-down"></i></span>-->
                        </div>
                    </div>
                    <div class="data-tab">
                        <a ka="tag-new" href="/business/personrecommend/getRecommendPerson.do" data-status="1">推荐人才</a>
                        <a ka="tag-viewed" href="/business/personlibrary/getPersonLibrary.do" data-status="2">人才库</a>
                    </div>
                </div>
                <div class="sec-filter">

                </div>
                <div id="recommend-list">
                    <div class="sec-content candidate-card">
                        <div class="data-tips" style="display: none;">
                            <div class="data-blank"><i class="tip-nodata"></i><b>您需要先发布职位，才能查看推荐牛人</b>
                                <p>
                                    <a href="javascript:;" data-url="/bossweb/jobedit/0.html" class="btn link-topage">发布职位</a>
                                </p>
                            </div>
                        </div>
                        <ul>
                            <c:forEach items="${resumeList}" var="resume">
                                <li>
                                    <div class="data-search" style="cursor: pointer;">
                                        <!--<a href="/">-->
                                        <div style="padding: 17px 40px;">
                                            <div>
                                                <h3 class="name">${resume.resumeName} </h3>
                                                <a style="float: right;" class="btn btn-continue" href="/business/chat/addChatMessage.do?userId=${resume.userId}">立即沟通</a>
                                                <a style="float: right;" class="btn btn-continue" href="/business/personlibrary/addInPersonLibrary.do?userId=${resume.userId}">加入人才库</a>
                                            </div>
                                            <div style="margin-top: 20px;">
                                                ${resume.resumeCity}<em class="vline"></em>
                                                ${resume.resumeWorkingExperienceTime}<em class="vline"></em>
                                                ${resume.resumeEducationLevel}
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                        <div class="loadmore disabled" style="display: none;">没有更多了</div>
                    </div>
                    <div class="sec-content candidate-preview">
                        <div class="data-tips">
                            <div class="spinner spinner-circle">
                                <div class="loader"></div>
                                <span>正在加载数据...</span>
                            </div>
                        </div>
                        <div class="user-list">
                            <ul></ul>
                            <div class="loadmore" data-url="/boss/recommend/geeks.json">滚动加载更多</div>
                        </div>
                        <div class="detail-box">
                            <div class="chat-wrap">
                                <div class="resume-container"></div>
                                <div class="detail-bottom"><span class="gray"></span><button type="button" ka="tag-bottom-greet" class="btn btn-greet">打招呼</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/js/jquery-1.12.2.min.js" type="text/javascript"></script>
<script src="/js/position.js" type="text/javascript"></script>
<script src="/jsforbusiness/indexforbusiness.js"></script>
<script src="/jsforbusiness/require.js"></script>
</body>

</html>

