<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" type="text/css" href="/cssforbusiness/position.css">
    <link href="/cssforbusiness/mainforbusiness.css" type="text/css" rel="stylesheet">

</head>
<body class="candidate">
<c:if test="${empty selectStatus}">
    <script>
        window.location = "/business/job/getPublishJob.do";
    </script>
</c:if>
<div id="wrapper">
    <div id="main">
        <div id="container">
            <!-- 筛选列表 -->
            <div class="position-sec">
                <div class="sec-top">
                    <div class="pull-right">
                        <div class="sel-release">
                            <a ka="job-add-job" href="/jspforbusiness/addjob.jsp" class="btn btn-release">发布职位</a>
                        </div>
                        <div class="sel-type">
                            <span class="label-text" ka="main_filter"><b>筛选</b><i class="fz fz-arrow-down"></i></span>
                        </div>
                    </div>
                    <div class="data-tab">职位管理</div>
                </div>
                <div class="sec-filter">
                    <dl>
                        <dt>职位状态：</dt>
                        <dd>
                            <a ka="job-status0" href="javascript:;" data-status="0" class="cur">全部</a>
                            <a ka="job-status1" href="javascript:;" data-status="1">打开的职位</a>
                            <a ka="job-status2" href="javascript:;" data-status="2">关闭的职位</a>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="data-tips" style="display: none;">
                <div class="data-blank">
                    <i class="tip-errordata">
                    </i>
                    <b>没有相关数据</b>
                </div>
            </div>
            <!-- 职位列表 -->
            <ul class="position-list">
                <c:forEach items="${requirementinfoList}" var="job">
                    <li class="read">
                        <div class="position-item">
                            <div class="position-footer">
                                <div>
                                    <h3 class="name">${job.jobName} <span class="red">${job.salary}</span></h3>
                                    <a href="/business/job/closeJob.do?jobMessageId=${job.jobMessageId}" style="float: right;" class="btn btn-continue">关闭</a>
                                    <a href="/business/job/getJobDetail.do?jobMessageId=${job.jobMessageId}" style="float: right;" class="btn btn-continue">编辑</a>
                                </div>
                                <div style="margin-top: 20px;">
                                    ${job.jobCity}<em class="vline"></em>
                                    ${job.jobExperience}<em class="vline"></em>
                                    ${job.educationLevel}<em class="vline"></em>
                                    不限
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>

            <div class="loadmore" data-url="/bossweb/joblist/data.json" style="display: none;">滚动加载更多</div>
        </div>
    </div>
</div>
<div class="pop"></div>
<script src="/js/jquery-1.12.2.min.js" type="text/javascript"></script>
<script src="/js/position.js" type="text/javascript"></script>
<script src="/jsforbusiness/indexforbusiness.js"></script>
<script src="/jsforbusiness/require.js"></script>
<input type="hidden" id="page_key_name" value="bpc_job_list" />
</body>
</html>


