<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="standard">

<head>
    <meta charset="utf-8">
    <title>jobFinder-个人简历</title>
    <meta name="keywords" content="JobFinder" />
    <meta name="description" content="JobFinder，互联网时代的领跑者！" />
    <link href="/css/main.css" type="text/css" rel="stylesheet">
    <link href="/css/ECalendarstyle.css" rel="stylesheet" />
    <script src="/js/jquery-2.1.4.min.js"></script>
    <script src="/js/Ecalendar.jquery.min.js"></script>
</head>

<body>
<c:if test="${empty selectStatus}">
    <script>
        window.location = "/user/resume/getResume.do";
    </script>
</c:if>
<div id="wrap">
    <div id="header">
        <div class="inner">
            <h1 class="logo"><a href="/" ka="header-home-logo" title="JobFinder"><span>JobFinder</span></a></h1>
            <div class="nav">
                <ul>
                    <li class="">
                        <a ka="header-home" href="/jsp/index.jsp">首页</a>
                    </li>
                    <li class="">
                        <a ka="header-job" href="/jsp/job.jsp">求职</a>
                    </li>
                   <%-- <li class="">
                        <a ka="header-article" href="">校招</a>
                    </li>--%>
                </ul>
            </div>

            <div class="user-nav">
                <ul>
                    <li class="">
                        <a ka="header-chat" href="/jsp/chat.jsp">聊天<span class="nav-chat-num"></span></a>
                    </li>
                    <li class="">
                        <a ka="header-delivery-box" href="/jsp/collect.jsp">收藏</a>
                    </li>
                    <li class="cur">
                        <a ka="header-my-resume" href="/jsp/resume.jsp">我的简历</a>
                    </li>
                    <li class="nav-figure">
                        <a href="/jsp/resume.jsp" ka="header-username"><span class="label-text">${userinfo.account}</span> <img src="/img/ico-1.jpg" alt="" /></a>
                        <div class="dropdown">
                            <a href="/user/logout.do" ka="header-logout">退出</a>
                        </div>
                    </li>
                </ul>

            </div>
        </div>
    </div>
    <div id="main" class="inner">
        <div class="job-box">
            <div class="sider deliver-sider">
                <div class="nav-option">
                    <a ka="user-resume-chat" href="/jsp/chat.jsp">聊天 <i class="fz fz-mes"></i></a>
                    <a ka="user-resume-delivery-box" href="/jsp/collect.jsp">收藏<i class="fz fz-deliver"></i></a>
                    <a ka="user-resume-my-resume" href="/jsp/resume.jsp">我的简历<i class="fz fz-cv"></i></a>
                </div>
                <div class="sider-resume">

                    <div class="resume-nav">
                        <ul>
                            <li><i class="fz-resume fz-info"></i><span>个人信息</span>
                                <a id="nav--summary" class="link-edit">编辑</a>
                            </li>
                            <li><i class="fz-resume fz-adventage"></i><span>我的优势</span>
                                <a id="nav-description" class="link-edit">编辑</a>
                            </li>
                            <li><i class="fz-resume fz-positon"></i><span>求职意向</span>
                                <a id="nav-dream" class="link-add">添加</a>
                            </li>
                            <li><i class="fz-resume fz-history"></i><span>工作经历</span>
                                <a id="nav-job" class="link-add">添加</a>
                            </li>
                            <li><i class="fz-resume fz-project"></i><span>项目经验</span>
                                <a id="nav-project" class="link-add">添加</a>
                            </li>
                            <li><i class="fz-resume fz-eaducation"></i><span>教育经历</span>
                                <a id="nav-education" class="link-add">添加</a>
                            </li>

                        </ul>
                    </div>
                    <!-- <div class="btns"><a href="#" class="btn btn-download">下载电子简历</a><a href="#" class="btn btn-download">微信版本简历</a></div>-->
                </div>
            </div>
            <div class="resume">
                <div class="update-time">最后更新 <fmt:formatDate value="${resume.updateTime}" pattern="yyyy-MM-dd HH:mm"/> </div>
                <div class="resume-box">
                    <div class="resume-item" id="resume-userinfo">
                        <div class="item-primary">
                            <form upload-base64-url="/geek/upload/avatar64.json" upload="uploadURL=/user/upload/avatar/?c=uploadPortrit&amp;jsCallback=uploadOk" action="/geek/update/headImg.json" method="post">
                                <div class="profile_form zw_form figure">
                                    <dl class="clearfix avatar_line">
                                        <dd class="txt Rcheck avatar_box">
                                            <img src="/img/ico-1.jpg" class="avatar">
                                            <div class="sel_avatar">
                                                <a ka="choose-avatar" data-title="头像设置" class="upload-layer"></a>
                                            </div>
                                            <input name="large" value="https://img.bosszhipin.com/beijin/mcs/useravatar/20161026/a6d6f3c253ad0c2e0839623048d43415668e4f6582898ba1716941858023f2e0.jpg" type="hidden" class="kz_input required avatar_url" datatype="z" nullmsg="请上传头像！">
                                            <input name="tiny" value="https://img.bosszhipin.com/beijin/mcs/useravatar/20161026/a6d6f3c253ad0c2e0839623048d43415668e4f6582898ba1716941858023f2e0_s.jpg" type="hidden" class="kz_input required avatar_url" datatype="z" nullmsg="请上传头像！">
                                        </dd>
                                    </dl>
                                </div>
                            </form>
                            <h2 class="name">${resume.resumeName}<i class="fz-resume fz-male"></i><div class="op"><a data-url="/geek/user/info.json" href="javascript:;" ka="user-resume-edit-userinfo" class="link-edit" ><i class="fz-resume fz-edit"></i>编辑</a></div></h2>
                            <div class="info-labels">
                                <p class="row-base"><span class="label-text"><i class="fz-resume fz-experience"></i>工作经验：${resume.resumeWorkingExperienceTime}</span><em class="vline"></em><span class="label-text"><i class="fz-resume fz-degree"></i>${resume.resumeEducationLevel}</span> <em class="vline"></em><span class="label-text"><i class="fz-resume fz-status"></i>${resume.resumeCity}</span></p>
                                <p class="row-contact">
                                    <span class="label-text"><i class="fz-resume fz-tel"></i>${resume.resumePhone}</span><em class="vline"></em>
                                    <span class="label-text span-wechat">${resume.resumeMailAddress}</span><em class="vline"></em>
                                </p>
                            </div>
                        </div>
                        <div class="item-form">
                            <div class="item-form">
                                <form action="/user/resume/addResume.do" method="post" class="form-resume">
                                    <h3 class="title">个人信息</h3>
                                    <div class="form-row">
                                        <dl>
                                            <dt>姓名</dt>
                                            <dd><input type="text" class="ipt required" placeholder="输入您的姓名" name="resumeName"></dd>
                                        </dl>
                                        <dl>
                                            <dt>最高学历</dt>
                                            <dd>
                                                <input type="text" class="ipt" placeholder="输入最高学历" name="resumeEducationLevel">
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row">
                                        <dl>
                                            <dt>性别</dt>
                                            <dd>
                                                <div class="radio-list"><label class="radio-square radio-checked" data-val="1">男</label><label class="radio-square " data-val="0">女</label><input type="hidden" name="gender" class="required" data-blank="请选择性别" value="1"></div>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>工作经验</dt>
                                            <dd>
                                                <input type="text" class="ipt" placeholder="输入您的工作经验" name="resumeWorkExperience">
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row">
                                        <dl>
                                            <dt>工作城市</dt>
                                            <dd>
                                                <div class="calendarWarp">
                                                    <input type="text" name="resumeCity" class='ipt' placeholder="输入您的工作城市"/>
                                                </div>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>手机号</dt>
                                            <dd><input name="resumePhone" type="text" class="ipt" placeholder="输入手机号"></dd>
                                        </dl>
                                    </div>
                                    <div class="form-btns"><button id="cancelButtonInPersonInfo" class="btn btn-back" type="button">取消</button><button class="btn vali_btn" type="submit">完成</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="resume-item" id="resume-summary">
                        <div class="item-primary">
                            <h3 class="title">我的优势<div class="op"><a href="javascript:;" class="link-edit" ><i class="fz-resume fz-edit"></i>编辑</a></div></h3>
                            <div class="text">
                                <p>${resume.resumeDescription}</p>
                            </div>
                        </div>
                        <div class="item-form">
                            <div class="item-form">
                                <form action="/user/resume/addDescription.do" method="post" class="form-resume">
                                    <h3 class="title">我的优势</h3>
                                    <div class="form-row row-area item-form-through">
                                        <dl>
                                            <dd><textarea required="required" placeholder="例如：两年UI设计经验，熟悉IOS和Android的界面设计规范，对产品本色有独特见解，有一定的手绘基础" class="ipt ipt-area required" name="resumeDescription"></textarea><span class="count-num"><em>0</em>/140</span></dd>
                                        </dl>
                                    </div>
                                    <div class="form-btns"><button id="cancelButtonInSummary" class="btn btn-back" type="button" ka="user-resume-desc-edit-cancel">取消</button><button class="btn" type="submit">完成</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="resume-item" id="resume-purpose">
                        <div class="item-primary">
                            <h3 class="title">求职意向
                                <div class="op">
                                    <a data-url="/geek/getGeekExpectPositionForm.json" href="javascript:;" ka="user-resume-add-holpjob" class="link-add"><i class="fz-resume fz-add"></i>添加</a>
                                </div>
                            </h3>
                            <div class="info-labels">
                                <div >
                                    <span class="label-text"><i class="fz-resume fz-job"></i>${resume.dreamjob.dreamJobName}</span><em class="vline"></em>
                                    <span class="label-text"><i class="fz-resume fz-salary"></i>${resume.dreamjob.dreamSalaryBottom}k-${resume.dreamjob.dreamSalaryTop}k </span>
                                    <em class="vline"></em><span class="label-text"><i class="fz-resume fz-industry"></i>${resume.dreamjob.dreamJobType}</span><em class="vline"></em>
                                    <span class="label-text"><i class="fz-resume fz-place"></i>${resume.dreamjob.dreamJobCity}</span>
                                    <div class="op">
                                        <a href="javascript:;" class="link-edit"><i class="fz-resume fz-edit"></i>编辑</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item-form">
                            <div class="item-form">
                                <form action="/user/resume/addDreamJob.do" method="post" class="form-resume">
                                    <h3 class="title">添加求职意向</h3>
                                    <div class="form-row">
                                        <dl>
                                            <dt>期望职位</dt>
                                            <dd>
                                                <input type="text" class="ipt" placeholder="期望职位" name="dreamJobName">
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>薪资要求</dt>
                                            <dd>
                                                <div class="salary-item start-salary">
                                                    <input type="text" name="dreamSalaryBottom" class="ipt ipt-short" placeholder="薪资范围最低">
                                                </div>
                                                <div class="salary-item end-salary">
                                                    <input type="text" name="dreamSalaryTop" class="ipt ipt-short" placeholder="薪资范围最高">
                                                </div>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row">
                                        <dl>
                                            <dt>城市</dt>
                                            <dd>
                                                <input type="text" name="dreamJobCity" class="ipt ipt-autocomplete required" placeholder="期望城市">
                                                <div class="suggest-complete"></div>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>&nbsp;</dt>
                                            <dd>
                                                <input type="checkbox" name="jobPush" value="1" checked="checked">
                                                <span>是否接受职位推送</span>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-btns"><button id="cancelButtonPurpose" class="btn btn-back" type="button" ka="user-resume-expect-position-add-cancel">取消</button><button class="btn" type="submit" ka="user-resume-expect-position-add-ok">完成</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="resume-item" id="resume-history">
                        <div class="item-primary">
                            <h3 class="title">工作经历
                                <div class="op">
                                    <a href="javascript:;" class="link-add"><i class="fz-resume fz-add"></i>添加</a>
                                </div>
                            </h3>
                            <div class="history-project">
                                <c:forEach items="${resume.jobexperienceList}" var="jobExperience">
                                    <div class="history-item" >
                                        <div class="op">
                                            <a href="javascript:;" class="link-edit"><i class="fz-resume fz-edit"></i>编辑</a>
                                        </div>
                                        <span class="period"><fmt:formatDate value="${jobExperience.jobBeginDate}" pattern="yyyy-MM"/> -<fmt:formatDate value="${jobExperience.jobEndDate}" pattern="yyyy-MM"/></span>
                                        <h4 class="name">${jobExperience.jobName}</h4>
                                        <div class="text">
                                            <h4>${jobExperience.jobCompanyName}<em class="vline"></em>本科</h4>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="item-form">
                            <div class="item-form">
                                <form action="/user/resume/addJobExperience.do" method="post" class="form-resume">
                                    <input type="hidden" name="id" value="">
                                    <h3 class="title">添加工作经历</h3>
                                    <div class="form-row">
                                        <dl>
                                            <dt>公司名称</dt>
                                            <dd>
                                                <input type="text" name="jobCompanyName" value="" class="ipt required" placeholder="例如：北京百度科技有限公司">
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>职位类型</dt>
                                            <dd>
                                                <input type="text" name="jobType" class="ipt required" placeholder="例如：全职" />
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row">
                                        <dl>
                                            <dt>职位名称</dt>
                                            <dd>
                                                <input type="text" ka="work-position-name" name="jobName" value="" class="ipt required" placeholder="例如：UI设计师">
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>技能标签</dt>
                                            <dd>
                                                <input type="text" ka="work-skills" class="ipt" value="" placeholder="技能标签">
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row">
                                        <dl>
                                            <dt>在职时间</dt>
                                            <dd>
                                                <input type="text" name="jobBeginDate" class='ECalendar ipt' id="jobBeginDate" />
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>&nbsp;</dt>
                                            <dd>
                                                <span class="prefix-day">至</span>
                                                <input type="text" name="jobEndDate" class='ECalendar ipt' id="jobEndDate" />
                                            </dd>
                                        </dl>
                                    </div>

                                    <div class="form-row row-area item-form-through">
                                        <dl>
                                            <dt>工作内容</dt>
                                            <dd>
                                                <textarea name="jobDeatail" ka="work-responsibility" placeholder="例如： 1、主要负责新员工入职培训； 2、分析制定员工每个月个人销售业绩； 3、帮助员工提高每日客单价，整体店面管理等工作； " class="ipt ipt-area required" data-range="1,1600" data-blank="必填" data-format="请输入 1600 字以内的工作内容" maxlength="3200"></textarea>
                                                <span class="count-num"><em>0</em>/1600</span>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row row-area item-form-through">
                                        <dl>
                                            <dt>工作职责</dt>
                                            <dd>
                                                <textarea name="jobOfYou" ka="work-performance" placeholder="(选填)填写完整、有吸引力的工作业绩，有助于您更多地吸引Boss的关注 例如：1.取得的成绩… 2.实现的突破… 3.获得的表彰…" class="ipt ipt-area" data-range="0,300" data-blank="必填" data-format="请输入 300 字以内的工作业绩" maxlength="600"></textarea>
                                                <span class="count-num"><em>0</em>/ 300</span>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-btns"><button id="cancelButtonHistory" class="btn btn-back" ka="work-cancel" type="button">取消</button><button class="btn" ka="work-save" type="submit">完成</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="resume-item" id="resume-project">
                        <div class="item-primary">
                            <h3 class="title">项目经验
                                <div class="op">
                                    <a href="javascript:;" data-url="/geek/getGeekProjectExperienceForm.json" ka="user-resume-add-project" class="link-add"><i class="fz-resume fz-add"></i>添加</a>
                                </div>
                            </h3>
                            <div class="history-project">
                                <c:forEach items="${resume.projectexperienceList}" var="projectExperience">
                                    <div class="history-item" >
                                        <div class="op">
                                            <a href="javascript:;" class="link-edit"><i class="fz-resume fz-edit"></i>编辑</a>
                                        </div>
                                        <span class="period"><fmt:formatDate value="${projectExperience.projectBeginDate}" pattern="yyyy-MM"/>-<fmt:formatDate value="${projectExperience.projectEndDate}" pattern="yyyy-MM"/></span>
                                        <h4 class="name">${projectExperience.projectName}</h4>
                                        <div class="text">
                                            <c:if test="${!empty projectExperience.projectUrl}">
                                                <h4>${projectExperience.projectUrl}</h4>
                                            </c:if>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="item-form">
                            <div class="item-form">
                                <form action="/user/resume/addProjectExperience.do" method="post" class="form-resume">
                                    <input type="hidden" name="id" value="">
                                    <input type="hidden" name="orderNum" value="0">
                                    <h3 class="title">添加项目经验</h3>
                                    <div class="form-row">
                                        <dl>
                                            <dt>项目名称</dt>
                                            <dd><input type="text" ka="project-name" name="projectName" value="" class="ipt required" placeholder="例如：百度凤巢广告系统" data-range="1,16" data-blank="必填" data-format="请输入 16 字以内的项目名称" maxlength="32"></dd>
                                        </dl>
                                        <dl>
                                            <dt>项目角色</dt>
                                            <dd><input type="text" ka="project-role" name="roleName" value="" class="ipt required" placeholder="例如：UI 设计师" data-range="1,12" data-blank="必填" data-format="请输入 12 字以内的角色名称" maxlength="24"></dd>
                                        </dl>
                                    </div>
                                    <div class="form-row item-form-through">
                                        <dl>
                                            <dt>项目URL</dt>
                                            <dd><input type="text" ka="project-url" name="projectUrl" value="" class="ipt ipt-long" placeholder="(选填)例如：http://www.baidu.com" data-range="0,60" data-format="请输入 60 个字符以内的URL" maxlength="120"></dd>
                                        </dl>
                                    </div>
                                    <div class="form-row">
                                        <dl>
                                            <dt>项目时间</dt>
                                            <dd>
                                                <input type="text" name="projectBeginDate" class='ECalendar ipt' id="projectBeginDate" />
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>&nbsp;</dt>
                                            <dd>
                                                <span class="prefix-day">至</span>
                                                <input type="text" name="projectEndDate" class='ECalendar ipt' id="projectEndDate" />
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row row-area item-form-through">
                                        <dl>
                                            <dt>项目描述</dt>
                                            <dd><textarea name="projectDescription" ka="project-description" placeholder="描述该项目，向Boss展示您的项目经验例如：1.项目概况…2.人员分工…3.我的责任…" class="ipt ipt-area required" data-range="1,1600" data-blank="不能为空" data-format="请输入 1600 个以内的文字" maxlength="3200"></textarea><span class="count-num"><em>0</em>/1600</span></dd>
                                        </dl>
                                    </div>
                                    <div class="form-row row-area item-form-through">
                                        <dl>
                                            <dt>项目职责</dt>
                                            <dd><textarea name="projectDuty" ka="project-performance" placeholder="(选填)描述您的项目业绩，向Boss展示您的工作能力例如：1.项目收益…2.我的贡献…3.我的收获…" class="ipt ipt-area" data-range="0,300" data-blank="" data-format="请输入 300 个以内的文字" maxlength="600"></textarea><span class="count-num"><em>0</em>/300</span></dd>
                                        </dl>
                                    </div>
                                    <div class="form-btns"><button id="cancelButtonProject" class="btn btn-back" ka="project-cancel" type="button">取消</button><button class="btn" ka="project-save" type="submit">完成</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="resume-item" id="resume-education">
                        <div class="item-primary">
                            <h3 class="title">教育经历
                                <div class="op">
                                    <a href="javascript:;" data-url="/geek/getEduExperienceForm.json"  ka="user-resume-add-eduexp" class="link-add"><i class="fz-resume fz-add"></i>添加</a>
                                </div>
                            </h3>
                            <div class="history-education">
                                <c:forEach items="${resume.educationexperienceList}" var="educationExperience">
                                    <div class="history-item" >
                                        <div class="op">
                                            <a href="javascript:;" class="link-edit"><i class="fz-resume fz-edit"></i>编辑</a>
                                        </div>
                                        <span class="period"><fmt:formatDate value="${educationExperience.educationBeginDate}" pattern="yyyy-MM"/>-<fmt:formatDate value="${educationExperience.educationGraduateDate}" pattern="yyyy-MM"/></span>
                                        <h4 class="name">${educationExperience.educationSchoolName}</h4>
                                        <div class="text">
                                            <h4>${educationExperience.educationMajor}<em class="vline"></em>${educationExperience.educationLevel}</h4>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="item-form">
                            <div class="item-form">
                                <form action="/user/resume/addEducationExperience.do" method="post" class="form-resume">
                                    <input type="hidden" name="id" value="07b5df7e131fbe2e1w~~">
                                    <h3 class="title">添加教育经历</h3>
                                    <div class="form-row">
                                        <dl>
                                            <dt>学校名称</dt>
                                            <dd><input type="text" name="educationSchoolName" class="ipt ipt-autocomplete required" placeholder="例如：北京大学"  maxlength="40">
                                                <div class="suggest-complete"></div>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>专业名称</dt>
                                            <dd><input type="text" name="educationMajor" class="ipt ipt-autocomplete required" placeholder="例如：计算机科学与技术" maxlength="40">
                                                <div class="suggest-complete"></div>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row">
                                        <dl>
                                            <dt>学历</dt>
                                            <dd>
                                                <select class="ipt" name="educationLevel">
                                                    <option value="中专及以下">中专及以下</option>
                                                    <option value="高中">高中</option>
                                                    <option value="大专">大专</option>
                                                    <option value="本科">本科</option>
                                                    <option value="硕士">硕士</option>
                                                    <option value="博士">博士</option>
                                                </select>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row ">
                                        <dl>
                                            <dt>时间段</dt>
                                            <dd>
                                                <div class="calendarWarp">
                                                    <input type="text" name="educationBeginDate" class='ECalendar ipt' id="educationBeginDate" />
                                                </div>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>&nbsp;</dt>
                                            <dd>
                                                <div class="calendarWarp">
                                                    <input type="text" name="educationGraduateDate" class='ECalendar ipt' id="educationGraduateDate" />
                                                </div>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="form-row row-area item-form-through">
                                        <dl>
                                            <dt>在校经历</dt>
                                            <dd><textarea placeholder="选填" ka="edu-description" name="educationExperience" class="ipt ipt-area" data-range="0,300" data-blank="必填" data-format="请输入 300 个以内的文字" maxlength="600"></textarea><span class="count-num"><em>0</em>/300</span></dd>
                                        </dl>
                                    </div>
                                    <div class="form-btns"><button id="cancelButtonEducation" class="btn btn-back" ka="edu-cancel" type="button">取消</button><button class="btn" ka="edu-save" type="submit">完成</button></div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--简历预览-->
    <div id="pop-resume">
        <!--关闭按钮-->
        <div class="pop-resume-close">
            <img src="/v2/web/geek/images/pop-resume-close.png" ka="user-resume-pop-resume-close" />
        </div>
        <!--正在上传-->
        <div class="pop-item pop-loading">
            <div class="content">
                <img src="/v2/web/geek/images/in_upload.png" class="resume-icon" />
                <p class="text">正在上传中</p>
                <img src="/v2/web/geek/images/loading.gif" class="pop-loading-pic" />
            </div>
            <div class="des">
                <h4>上传简历</h4>
                <div class="resume-title">王家卫-3年Java.doc</div>
                <p>附件简历将在投递后被Boss预览查看，请 确认显示正确</p>
            </div>
        </div>
        <!--上传成功 预览-->
        <div class="pop-item pop-success">
            <div class="content">
                <img src="" class="resume-pic" />
            </div>
            <div class="des">
                <h4>上传简历</h4>
                <div class="resume-title">王家卫-3年Java.doc</div>
                <p>附件简历将在投递后被Boss预览查看，请 确认显示正确</p>
                <div class="btn btn-confim" ka="user-resume-save">确定</div>
                <div class="btn btn-change" ka="user-resume-edit-upload">更改附件简历</div>
            </div>
        </div>
        <!--上传失败-->
        <div class="pop-item pop-fail">
            <div class="content">
                <img src="/v2/web/geek/images/upload-fail.png" class="resume-icon" />
                <div class="title upload-fail">上传失败</div>
                <p class="msg">请重新上传，如仍然无法成功，可尝试更改文件格式</p>
            </div>
            <div class="des">
                <h4>上传简历</h4>
                <div class="resume-title">王家卫-3年Java.doc</div>
                <p>附件简历将在投递后被Boss预览查看，请 确认显示正确</p>
                <div class="btn upload-again" ka="user-resume-upload-fail-reupload">重新上传</div>
                <p>支持 doc、docx、pdf、jpg、png 格式</p>
            </div>
        </div>
        <!--预览失败-->
        <div class="pop-item preview-fail">
            <div class="content">
                <img src="/v2/web/geek/images/upload-fail.png" class="resume-icon" />
                <div class="title preview-fail">预览失败</div>
                <div class="msg">点击
                    <a href="javascript:;" class="preview-refresh" ka="user-resume-refresh">刷新</a>重新预览</div>
                <img src="/v2/web/geek/images/loading.gif" class="resume-loading" />
            </div>
            <div class="des">
                <h4>上传简历</h4>
                <div class="resume-title">王家卫-3年Java.doc</div>
                <p>附件简历将在投递后被Boss预览查看，请确认显示正确</p>
                <div class="btn upload-again" ka="user-resume-preview-fail-reupload">重新上传</div>
                <p>支持 doc、docx、pdf、jpg、png 格式</p>
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
</div>

</body>

<script src="/js/resume.js"></script>
<script type="text/javascript">
    $(function() {
        $("#educationBeginDate").ECalendar({
            type: "date", //模式，time: 带时间选择; date: 不带时间选择;
            stamp: false, //是否转成时间戳，默认true;
            offset: [0, 2], //弹框手动偏移量;
            skin: 1, //皮肤颜色，默认随机，可选值：0-8,或者直接标注颜色值;
            step: 10, //选择时间分钟的精确度;
            callback: function(v, e) {} //回调函数
        });
        $("#educationGraduateDate").ECalendar({
            type: "date", //模式，time: 带时间选择; date: 不带时间选择;
            stamp: false, //是否转成时间戳，默认true;
            offset: [0, 2], //弹框手动偏移量;
            skin: 1, //皮肤颜色，默认随机，可选值：0-8,或者直接标注颜色值;
            step: 10, //选择时间分钟的精确度;
            callback: function(v, e) {} //回调函数
        });
        $("#resumeBirthday").ECalendar({
            type: "date", //模式，time: 带时间选择; date: 不带时间选择;
            stamp: false, //是否转成时间戳，默认true;
            offset: [0, 2], //弹框手动偏移量;
            skin: 1, //皮肤颜色，默认随机，可选值：0-8,或者直接标注颜色值;
            step: 10, //选择时间分钟的精确度;
            callback: function(v, e) {} //回调函数
        });
        $("#projectBeginDate").ECalendar({
            type: "date", //模式，time: 带时间选择; date: 不带时间选择;
            stamp: false, //是否转成时间戳，默认true;
            offset: [0, 2], //弹框手动偏移量;
            skin: 1, //皮肤颜色，默认随机，可选值：0-8,或者直接标注颜色值;
            step: 10, //选择时间分钟的精确度;
            callback: function(v, e) {} //回调函数
        });
        $("#projectEndDate").ECalendar({
            type: "date", //模式，time: 带时间选择; date: 不带时间选择;
            stamp: false, //是否转成时间戳，默认true;
            offset: [0, 2], //弹框手动偏移量;
            skin: 1, //皮肤颜色，默认随机，可选值：0-8,或者直接标注颜色值;
            step: 10, //选择时间分钟的精确度;
            callback: function(v, e) {} //回调函数
        });
        $("#jobBeginDate").ECalendar({
            type: "date", //模式，time: 带时间选择; date: 不带时间选择;
            stamp: false, //是否转成时间戳，默认true;
            offset: [0, 2], //弹框手动偏移量;
            skin: 1, //皮肤颜色，默认随机，可选值：0-8,或者直接标注颜色值;
            step: 10, //选择时间分钟的精确度;
            callback: function(v, e) {} //回调函数
        });
        $("#jobEndDate").ECalendar({
            type: "date", //模式，time: 带时间选择; date: 不带时间选择;
            stamp: false, //是否转成时间戳，默认true;
            offset: [0, 2], //弹框手动偏移量;
            skin: 1, //皮肤颜色，默认随机，可选值：0-8,或者直接标注颜色值;
            step: 10, //选择时间分钟的精确度;
            callback: function(v, e) {} //回调函数
        });
    })
</script>

</html>