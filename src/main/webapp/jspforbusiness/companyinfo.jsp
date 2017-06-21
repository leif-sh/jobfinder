<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>JobFinder-公司信息</title>
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
    <script data-main="/jsforbussiness/home.js" src="https://img.bosszhipin.com/v2/js/require.js"></script>

</head>

<body>
<c:if test="${empty selectStatus}">
    <script>
        window.location = "/business/company/getCompanyInfo.do";
    </script>
</c:if>
<div class="wrapper" content openurl="1_1">
    <div class="P_tishi">
    </div>
    <!--右侧栏-->
    <form method="post" class="zhiwei" action="/business/company/changeCompanyInfo.do">
        <div class="rwrap">
            <div class="box">
                <div class="hd">公司基本信息<em class="red">*</em></div>
                <input type="hidden" name="jstr" value="" />
                <div class="zw_form clearfix">
                    <dl class="clearfix">
                        <dt class="tit">公司名称</dt>
                        <dd class="txt Rcheck">
                            <input name="companyName" value="${company.companyName}" type="text" class="kz_input required" style="width:360px;" length="[1,40]" placeholder="请输入公司名称" >
                        </dd>
                        <dd class="tips"></dd>
                    </dl>
                    <dl class="clearfix" style="z-index:600">
                        <dt class="tit">公司类型</dt>
                        <dd class="txt Rcheck">
                            <div class="kz_select zw required">
                                <input name="companyType" value="${company.companyType}" type="text" style="width:315px;" datatype="z" placeholder="请输入公司类型例如：移动互联网">
                            </div>
                        </dd>
                    </dl>
                    <dl class="clearfix" style="z-index:500">
                        <dt class="tit">公司规模</dt>
                        <dd class="txt Rcheck">
                            <select name="companyScale" class="ipt">
                                <c:if test="${!empty company}">
                                    <c:choose>
                                        <c:when test="${company.companyScale == '20人以下'}">
                                            <option value="scale-1">20人以下</option>
                                        </c:when>
                                        <c:when test="${company.companyScale == '20-99人'}">
                                            <option value="scale-2">20-99人</option>
                                        </c:when>
                                        <c:when test="${company.companyScale == '100-499人'}">
                                            <option value="scale-3">100-499人</option>
                                        </c:when>
                                        <c:when test="${company.companyScale == '500-999人'}">
                                            <option value="scale-4">500-999人</option>
                                        </c:when>
                                        <c:when test="${company.companyScale == '1000-9999人'}">
                                            <option value="scale-5">1000-9999人</option>
                                        </c:when>
                                        <c:when test="${company.companyScale == '10000人以上'}">
                                            <option value="scale-6">10000人以上</option>
                                        </c:when>
                                    </c:choose>
                                </c:if>
                                <option value="scale-1">20人以下</option>
                                <option value="scale-2">20-99人</option>
                                <option value="scale-3">100-499人</option>
                                <option value="scale-4">500-999人</option>
                                <option value="scale-5">1000-9999人</option>
                                <option value="scale-6">10000人以上</option>
                            </select>
                        </dd>
                    </dl>
                    <dl class="clearfix" style="z-index:400">
                        <dt class="tit">公司地址</dt>
                        <dd class="txt Rcheck" style="z-index: 1;">
                            <input name="companyPosition" type="text" value="${company.companyPosition}" val="" placeholder="请输入" class="kz_input required P_search_city" style="width:360px;">
                        </dd>
                    </dl>
                    <dl class="clearfix" style="height:auto">
                        <dt class="tit">公司属性</dt>
                        <dd class="cont Rcheck">
                            <input name="companyProperty" type="text" placeholder="请输入公司发展阶段" value="${company.companyProperty}" val="" class="kz_input required ipt_readonly address" style="width:360px;" />
                        </dd>
                    </dl>
                    <dl class="clearfix" style="height:auto">
                        <dt class="tit">公司主页</dt>
                        <dd class="cont Rcheck">
                            <input name="companyWebsite" type="text" placeholder="请输入公司网站首页" value="${company.companyWebsite}" val="" class="kz_input required ipt_readonly address" length="[2,80]" nullmsg="请输入工作地点" errormsg="输入地址40字以内！" maxlength="80" style="width:567px;" />
                        </dd>
                    </dl>
                    <dl class="clearfix" style="height:auto">
                        <dt class="tit">公司简介</dt>
                        <dd class="cont Rcheck">
                            <input type="hidden" name="city" value="010">
                            <textarea  name="companyIntroduction" placeholder="请输入公司简介" class="kz_area required"  style="width:570px; height:160px;">${company.companyIntroduction}</textarea>
                        </dd>
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