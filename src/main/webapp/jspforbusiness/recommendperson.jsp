<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>JobFinder-人才订阅</title>
    <meta name="keywords" content="JobFinder" />
    <meta name="description" content="JobFinder，互联网时代的领跑者！" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link href="/cssforbusiness/style.css" rel="stylesheet" type="text/css">
    <link href="/cssforbusiness/my.css" rel="stylesheet" />
    <script src="https://img.bosszhipin.com/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.3&key=60085a6ee91616cf689ce0321e1f30c4&plugin=AMap.Geocoder"></script>
    <script data-main="../jsforbussiness/home.js" src="https://img.bosszhipin.com/v2/js/require.js"></script>

</head>
<body>
<c:if test="${empty selectStatus}">
    <script>
        window.location = "/business/dreamperson/getDreamPerson.do";
    </script>
</c:if>
<div class="wrapper" content openurl="1_1">
    <div class="P_tishi">
    </div>
    <!--右侧栏-->
    <form method="post" class="zhiwei" action="/business/dreamperson/changeDreamPerson.do">
        <div class="rwrap">
            <div class="box">
                <div class="hd">人才订阅<em class="red">*</em></div>
                <input type="hidden" name="jstr" value="" />
                <div class="zw_form clearfix">
                    <dl class="clearfix">
                        <dt class="tit">人才类型</dt>
                        <dd class="txt Rcheck">
                            <input value="${dreamperson.dreamPersonType}" name="dreamPersonType" type="text" class="kz_input required" style="width:360px;" length="[1,40]" placeholder="请输入人才类型例如：JAVA" >
                        </dd>
                        <dd class="tips"></dd>
                    </dl>
                    <dl class="clearfix" style="z-index:600">
                        <dt class="tit">工作经验</dt>
                        <dd class="txt Rcheck" >
                            <select class="ipt" name="dreamPersonWorkExperience">
                                <c:if test="${!empty dreamperson}">
                                    <c:choose>
                                        <c:when test="${dreamperson.dreamPersonWorkExperience == '不限'}">
                                            <option value="exp-0">不限</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonWorkExperience == '应届生'}">
                                            <option value="exp-1">应届生</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonWorkExperience == '1年以下'}">
                                            <option value="exp-2">1年以下</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonWorkExperience == '1-3年'}">
                                            <option value="exp-3">1-3年</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonWorkExperience == '3-5年'}">
                                            <option value="exp-4">3-5年</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonWorkExperience == '5-10年'}">
                                            <option value="exp-5">5-10年</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonWorkExperience == '10年以上'}">
                                            <option value="exp-6">10年以上</option>
                                        </c:when>
                                    </c:choose>
                                </c:if>
                                <option value="exp-0">不限</option>
                                <option value="exp-1">应届生</option>
                                <option value="exp-2">1年以下</option>
                                <option value="exp-3">1-3年</option>
                                <option value="exp-4">3-5年</option>
                                <option value="exp-5">5-10年</option>
                                <option value="exp-6">10年以上</option>
                            </select>
                        </dd>
                    </dl>
                    <dl class="clearfix" style="z-index:400">
                        <dt class="tit">学历</dt>
                        <dd class="txt Rcheck" style="z-index: 1;">
                            <select class="ipt" name="dreamPersonEducation" >
                                <c:if test="${!empty dreamperson}">
                                    <c:choose>
                                        <c:when test="${dreamperson.dreamPersonEducation == '不限'}">
                                            <option value="edu-0">不限</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonEducation == '中专以下'}">
                                            <option value="edu-1">中专以下</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonEducation == '高中'}">
                                            <option value="edu-2">高中</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonEducation == '大专'}">
                                            <option value="edu-3">大专</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonEducation == '本科'}">
                                            <option value="edu-4">本科</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonEducation == '硕士'}">
                                            <option value="edu-5">硕士</option>
                                        </c:when>
                                        <c:when test="${dreamperson.dreamPersonEducation == '博士'}">
                                            <option value="edu-6">博士</option>
                                        </c:when>
                                    </c:choose>
                                </c:if>
                                <option value="edu-0">不限</option>
                                <option value="edu-1">中专以下</option>
                                <option value="edu-2">高中</option>
                                <option value="edu-3">大专</option>
                                <option value="edu-4">本科</option>
                                <option value="edu-5">硕士</option>
                                <option value="edu-6">博士</option>
                            </select>
                        </dd>
                    </dl>
                    <dl class="clearfix" style="height:auto">
                        <dt class="tit">最高薪资</dt>
                        <dd class="cont Rcheck">
                            <input name="dreamPersonSalaryTop" type="text" placeholder="请输入最高薪资，单位为K" value="${dreamperson.dreamPersonSalaryTop}" val="" class="kz_input required ipt_readonly address" style="width:360px;" />
                        </dd>
                    </dl>
                    <dl class="clearfix">
                        <dt class="tit">工作城市</dt>
                        <dd class="txt Rcheck">
                            <input value="${dreamperson.dreamPersonCity}" name="dreamPersonCity" type="text" class="kz_input required" style="width:360px;" length="[1,40]" placeholder="请输入工作城市，最好为地级市以上" >
                        </dd>
                        <dd class="tips"></dd>
                    </dl>
                </div>
            </div>
            <!--按钮-->
            <div class="btn_submit kz_tcenter">
                <input type="submit" class="kz_btn btn_a btn_a1 vali_btn" value="保存">
            </div>
            <!--/按钮-->
        </div>
    </form>
    <!--/右侧栏-->
</div>
</body>

</html>
