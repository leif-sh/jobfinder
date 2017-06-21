<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="standard">
<head>
    <meta charset="utf-8">
    <title>【京东商城招聘】636条招聘信息-JobFinder</title>
    <meta name="keywords" content="JobFinder" />
    <meta name="description" content="JobFinder，互联网时代的领跑者！" />
    <link href="../css/main.css" type="text/css" rel="stylesheet">
</head>

<body class="">
<div id="wrap">
    <div id="header">
        <div class="inner">
            <h1 class="logo"><a href="/" ka="header-home-logo" title="BOSS直聘"><span>BOSS直聘</span></a></h1>
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
                        <li class="nav-figure"><a href="resume.jsp" ka="header-username" ><span class="label-text">${userinfo.account}</span> <img src="../img/ico-1.jpg" alt="" /></a><div class="dropdown"><a href="/user/logout.do" ka="header-logout">退出</a></div></li>
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
        <div class="company-banner ">
            <div class="inner">
                <div class="job-primary">
                    <div class="company-stat">
                        <span><a href="/gongsi/r3610.html" ka="all-jobs-top"><b>636</b>在招职位</a></span><em class="vline"></em><span><b>510</b>位BOSS</span>
                    </div>
                    <div class="info-primary">
                        <div class="company-logo"><img src="https://img.bosszhipin.com/beijin/mcs/chatphoto/20170316/a606acd35d514af38708c2c38843d9a6387befad9c2883f1fe70b71f1ca124da.jpg" alt="" /></div>
                        <h3 class="name">京东商城<i class="icon-brand"></i></h3>
                        <p>已上市<em class="vline"></em>10000人以上<em class="vline"></em>电子商务</p>
                        <p>http://www.jd.com</p>
                    </div>
                </div>
                <div class="company-tab">

                    <a href="/gongsi/3610.html" ka="company-intro">公司简介</a>

                    <a href="/gongsi/r3610.html" class="cur" ka="company-jobs">招聘职位(636)</a>
                </div>
            </div>
        </div>

        <div class="job-box company-job">

            <div class="inner job-category">
                <a href="/gongsi/r3610.html" ka="position-0" class="cur">全部 (636)</a>

                <a href="/gongsi/r3610_100000.html" ka="position-1">技术 (383)</a>
                <a href="/gongsi/r3610_110000.html" ka="position-2">产品 (52)</a>
                <a href="/gongsi/r3610_120000.html" ka="position-3">设计 (5)</a>
                <a href="/gongsi/r3610_130000.html" ka="position-4">运营 (62)</a>
                <a href="/gongsi/r3610_140000.html" ka="position-5">市场 (19)</a>
                <a href="/gongsi/r3610_150000.html" ka="position-6">职能/高级管理 (30)</a>
                <a href="/gongsi/r3610_160000.html" ka="position-7">销售 (26)</a>
                <a href="/gongsi/r3610_170000.html" ka="position-8">传媒 (1)</a>
                <a href="/gongsi/r3610_190000.html" ka="position-9">教育培训 (2)</a>
                <a href="/gongsi/r3610_200000.html" ka="position-10">其他 (15)</a>
                <a href="/gongsi/r3610_240000.html" ka="position-11">供应链/物流 (19)</a>
                <a href="/gongsi/r3610_250000.html" ka="position-12">采购/贸易 (10)</a>
                <a href="/gongsi/r3610_260000.html" ka="position-13">咨询/翻译/法律 (1)</a>
                <a href="/gongsi/r3610_270000.html" ka="position-14">实习生/管培生 (11)</a>

            </div>

            <div class="inner">
                <div class="job-list">

                    <ul>

                        <li>
                            <a href="/job_detail/1406020100.html" ka="job-1" target="_blank">
                                <div class="job-author">
                                    <span class="time">发布于04月20日</span>
                                    <p><img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20170419/6d850bb734698f715eb8ff94ae7f193024bae8e7d36ab315197150713274ddab_s.jpg" />andy<em class="vline"></em>java高级工程师</p>
                                </div>
                                <div class="job-primary">
                                    <div class="info-primary">
                                        <h3 class="name">java高级工程师</h3>
                                        <p class="salary">20K-40K</p>
                                        <p>北京<em class="vline"></em>经验不限<em class="vline"></em>本科</p>
                                    </div>
                                </div>
                            </a>
                        </li>

                    </ul>

                    <div class="page">

                        <a href="javascript:;" ka="page-prev" class="prev disabled"></a>

                        <a href="javascript:;" class="cur" ka="page-cur">1</a>
                        <a href="/gongsi/r3610.html?page=2" ka="page-2">2</a>
                        <a href="/gongsi/r3610.html?page=3" ka="page-3">3</a>
                        <span>...</span>

                        <a href="/gongsi/r3610.html?page=2" ka="page-next" class="next"></a>

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
<script src="../js/jquery-1.12.2.min.js"></script>
<script src="../js/require.js"></script>
</body>
<input type="hidden" id="page_key_name" value="cpc_company_jobs" />

</html>
