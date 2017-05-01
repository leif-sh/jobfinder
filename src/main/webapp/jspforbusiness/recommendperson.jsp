<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../cssforbusiness/position.css">
    <link href="../cssforbusiness/mainforbusiness.css" type="text/css" rel="stylesheet">

</head>

<body>
<div id="wrapper">
    <div id="main">
        <div id="container">
            <!-- 筛选列表 -->
            <div class="position-sec">
                <div class="sec-top">
                    <div class="pull-right">
                        <div class="sel-filter">
                            <span class="label-text" ka="main_filter"><b>筛选</b><i class="fz fz-arrow-down"></i></span>
                        </div>
                        <div class="sel-type">
                            <span class="label-text" ka="job_filter"><b class="red"></b><i class="fz fz-arrow-down"></i></span>
                            <div class="dropdown-list">
                                <ul>
                                    <li style="display: none;">
                                        <a href="javascript:;" ka="tag-job-0" data-jobid="-1" data-open="0" class="">全部职位</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="data-tab">
                        <a ka="tag-rec" href="javascript:;" class="cur" data-status="0">推荐牛人</a>
                        <a ka="tag-new" href="javascript:;" data-status="1">新牛人</a>
                        <a ka="tag-viewed" href="javascript:;" data-status="2">看过我</a>
                        <a ka="tag-interested" href="javascript:;" data-status="4">对我感兴趣</a>
                        <a ka="tag-refresh" href="javascript:;" class="link-refresh">点击刷新</a>
                    </div>
                </div>
                <div class="sec-filter">
                    <dl>
                        <dt>薪水：</dt>
                        <dd>
                            <a href="javascript:;" data-salary="0" class="cur" ka="recommend-salary-0">不限</a>
                            <a href="javascript:;" data-salary="402" ka="recommend-salary-1">3k以下</a>
                            <a href="javascript:;" data-salary="403" ka="recommend-salary-2">3k-5k</a>
                            <a href="javascript:;" data-salary="404" ka="recommend-salary-3">5k-10k</a>
                            <a href="javascript:;" data-salary="405" ka="recommend-salary-4">10k-20k</a>
                            <a href="javascript:;" data-salary="406" ka="recommend-salary-5">20k-50k</a>
                            <a href="javascript:;" data-salary="407" ka="recommend-salary-6">50k以上</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>经验：</dt>
                        <dd>
                            <a href="javascript:;" data-experience="0" ka="recommend-experience-0" class="cur">不限</a>
                            <a href="javascript:;" data-experience="102" ka="recommend-experience-1">应届生</a>
                            <a href="javascript:;" data-experience="103" ka="recommend-experience-2">1年以内</a>
                            <a href="javascript:;" data-experience="104" ka="recommend-experience-3">1-3年</a>
                            <a href="javascript:;" data-experience="105" ka="recommend-experience-4">3-5年</a>
                            <a href="javascript:;" data-experience="106" ka="recommend-experience-5">5-10年</a>
                            <a href="javascript:;" data-experience="107" ka="recommend-experience-6">10年以上</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>学历：</dt>
                        <dd>
                            <a href="javascript:;" data-degree="0" ka="recommend-degree-0" class="cur">不限</a>
                            <a href="javascript:;" data-degree="207" ka="recommend-degree-1">中专及以下</a>
                            <a href="javascript:;" data-degree="206" ka="recommend-degree-2">高中</a>
                            <a href="javascript:;" data-degree="202" ka="recommend-degree-3">大专</a>
                            <a href="javascript:;" data-degree="203" ka="recommend-degree-4">本科</a>
                            <a href="javascript:;" data-degree="204" ka="recommend-degree-5">硕士</a>
                            <a href="javascript:;" data-degree="205" ka="recommend-degree-6">博士</a>
                        </dd>
                    </dl>
                </div>
                <div id="recommend-list">
                    <div class="sec-content candidate-card">
                        <div class="data-tips">
                            <div class="data-blank"><i class="tip-nodata"></i><b>您需要先发布职位，才能查看推荐牛人</b>
                                <p>
                                    <a href="javascript:;" data-url="/bossweb/jobedit/0.html" class="btn link-topage">发布职位</a>
                                </p>
                            </div>
                        </div>
                        <ul></ul>
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
</body>

</html>
