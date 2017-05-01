<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8"><![endif]-->
<!--[if IE 9 ]><html class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="standard">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <title>jobFinder-个人简历</title>
    <meta name="keywords" content="JobFinder" />
    <meta name="description" content="JobFinder，互联网时代的领跑者！" />
    <link href="../css/main.css" type="text/css" rel="stylesheet">
</head>

<body>
<div id="wrap">
    <div id="header">
        <div class="inner">
            <h1 class="logo"><a href="/" ka="header-home-logo" title="BOSS直聘"><span>BOSS直聘</span></a></h1>
            <div class="nav">
                <ul>
                    <li class="">
                        <a ka="header-home" href="/">首页</a>
                    </li>
                    <li class="">
                        <a ka="header-job" href="/job_detail/">求职</a>
                    </li>
                    <li class="">
                        <a ka="header-app" href="/app.html">APP</a>
                    </li>
                    <li class="">
                        <a ka="header-article" href="/article/">新闻</a>
                    </li>
                </ul>
            </div>

            <div class="user-nav">

                <ul>
                    <li class="">
                        <a ka="header-chat" href="/gchat/chat.html">聊天<span class="nav-chat-num"></span></a>
                    </li>
                    <li class="">
                        <a ka="header-delivery-box" href="/geek/deliver.html">投递箱</a>
                    </li>
                    <li class="cur">
                        <a ka="header-my-resume" href="/geek/myresume.html">我的简历</a>
                    </li>
                    <li class="nav-figure">
                        <a href="/geek/myresume.html" ka="header-username"><span class="label-text">李铁</span> <img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20161026/a6d6f3c253ad0c2e0839623048d43415668e4f6582898ba1716941858023f2e0_s.jpg" alt="" /></a>
                        <div class="dropdown">
                            <a href="/logout/" ka="header-logout">退出</a>
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
                    <a ka="user-resume-chat" href="/gchat/chat.html">聊天 <i class="fz fz-mes"></i></a>
                    <a ka="user-resume-delivery-box" href="/geek/deliver.html">投递箱<i class="fz fz-deliver"></i></a>
                    <a ka="user-resume-my-resume" href="/geek/myresume.html">我的简历<i class="fz fz-cv"></i></a>
                </div>
                <div class="sider-resume">
                    <div class="resume-attachment">
                        <h3 class="title">附件简历</h3>

                        <div class="loadresume">
                            <span class="file-name">李铁.doc</span>
                            <div class="upload-op">
                                <i class="change">更改</i>
                                <a class="btn-upload-file"><input id="fileupload" type="file" name="file" ka="user-resume-change" /></a>
                            </div>
                            <i class="fz-resume fz-close" ka="user-resume-delete"></i>
                        </div>

                    </div>
                    <!--<div class="tit">简历完成度<span class="progress-score">80%</span></div>
            <div class="progress"><p></p></div>-->
                    <div class="resume-nav">
                        <ul>
                            <li><i class="fz-resume fz-info"></i><span>个人信息</span>
                                <a data-url="/geek/user/info.json" href="javascript:;" ka="user-resume-edit-userinfo-r" data-target="resume-userinfo" class="link-edit">编辑</a>
                            </li>
                            <!-- <li><i class="fz-resume fz-contact"></i><span>联系方式</span><a href="/niurenweb/user/info" ka="user-resume-edit-phone-r" data-target="resume-contact" class="link-edit">编辑</a></li>-->
                            <li><i class="fz-resume fz-adventage"></i><span>我的优势</span>
                                <a data-url="/geek/getUserDescForm.json" href="javascript:;" ka="user-resume-edit-desc-r" data-target="resume-summary" class="link-edit">编辑</a>
                            </li>
                            <li><i class="fz-resume fz-positon"></i><span>求职意向</span>
                                <a data-url="/geek/getGeekExpectPositionForm.json" href="javascript:;" ka="user-resume-edit-holpjob-r" data-target="resume-purpose" class="link-add">添加</a>
                            </li>
                            <li><i class="fz-resume fz-history"></i><span>工作经历</span>
                                <a data-url="/geek/getWorkExperienceForm.json" href="javascript:;" ka="user-resume-add-workexp-r" data-target="resume-history" class="link-add">添加</a>
                            </li>
                            <li><i class="fz-resume fz-project"></i><span>项目经验</span>
                                <a data-url="/geek/getGeekProjectExperienceForm.json" href="javascript:;" ka="user-resume-add-project-r" data-target="resume-project" class="link-add">添加</a>
                            </li>
                            <li><i class="fz-resume fz-eaducation"></i><span>教育经历</span>
                                <a data-url="/geek/getEduExperienceForm.json" href="javascript:;" ka="user-resume-add-eduexp-r" data-target="resume-education" class="link-add">添加</a>
                            </li>
                            <li><i class="fz-resume fz-socal"></i><span>社交账号</span>
                                <a data-url="/geek/getSocialContact.json" href="javascript:;" ka="user-resume-add-website-r" data-target="resume-social" class="link-add">添加</a>
                            </li>
                        </ul>
                    </div>
                    <!-- <div class="btns"><a href="#" class="btn btn-download">下载电子简历</a><a href="#" class="btn btn-download">微信版本简历</a></div>-->
                </div>
            </div>
            <div class="resume">
                <div class="update-time">最后更新 2017.02.24 16:14</div>
                <div class="resume-box">
                    <div class="resume-item" id="resume-userinfo">
                        <div class="item-primary">
                            <form upload-base64-url="/geek/upload/avatar64.json" upload="uploadURL=/user/upload/avatar/?c=uploadPortrit&amp;jsCallback=uploadOk" action="/geek/update/headImg.json" method="post">
                                <div class="profile_form zw_form figure">
                                    <dl class="clearfix avatar_line">
                                        <dd class="txt Rcheck avatar_box">
                                            <img src="https://img.bosszhipin.com/beijin/mcs/useravatar/20161026/a6d6f3c253ad0c2e0839623048d43415668e4f6582898ba1716941858023f2e0_s.jpg" class="avatar">
                                            <div class="sel_avatar">
                                                <a ka="choose-avatar" data-title="头像设置" class="upload-layer"></a>
                                            </div>
                                            <input name="large" value="https://img.bosszhipin.com/beijin/mcs/useravatar/20161026/a6d6f3c253ad0c2e0839623048d43415668e4f6582898ba1716941858023f2e0.jpg" type="hidden" class="kz_input required avatar_url" datatype="z" nullmsg="请上传头像！">
                                            <input name="tiny" value="https://img.bosszhipin.com/beijin/mcs/useravatar/20161026/a6d6f3c253ad0c2e0839623048d43415668e4f6582898ba1716941858023f2e0_s.jpg" type="hidden" class="kz_input required avatar_url" datatype="z" nullmsg="请上传头像！">
                                        </dd>
                                    </dl>
                                </div>
                            </form>
                            <h2 class="name">李铁 <i class="fz-resume fz-male"></i><div class="op"><a data-url="/geek/user/info.json" href="javascript:;" ka="user-resume-edit-userinfo" class="link-edit" ><i class="fz-resume fz-edit"></i>编辑</a></div></h2>
                            <div class="info-labels">
                                <p class="row-base"><span class="label-text"><i class="fz-resume fz-experience"></i>应届生</span><em class="vline"></em><span class="label-text"><i class="fz-resume fz-degree"></i>本科学历</span> <em class="vline"></em><span class="label-text"><i class="fz-resume fz-status"></i>离职-随时到岗</span></p>
                                <p class="row-contact"><span class="label-text"><i class="fz-resume fz-tel"></i>18712725112</span><em class="vline"></em><span class="label-text span-wechat"><i class="fz-resume fz-weixin"></i>18712725112</span></p>
                            </div>
                        </div>
                        <div class="item-form"></div>
                    </div>
                    <div class="resume-item" id="resume-summary">
                        <div class="item-primary">
                            <h3 class="title">我的优势<div class="op"><a data-url="/geek/getUserDescForm.json" href="javascript:;" ka="user-resume-edit-desc" class="link-edit" ><i class="fz-resume fz-edit"></i>编辑</a></div></h3>
                            <div class="text">
                                <p>我拥有出色的执行力，以及坚持不懈的毅力！作为应届生我可能缺少实际的工作经验，但是只要给我时间，我就会证明我的潜力！</p>
                            </div>
                        </div>
                        <div class="item-form">
                            <div class="item-form">
                                <form action="/geek/saveUserDesc.json" method="post" class="form-resume">
                                    <h3 class="title">我的优势</h3>
                                    <div class="form-row row-area item-form-through">
                                        <dl>
                                            <dd><textarea placeholder="例如：两年UI设计经验，熟悉IOS和Android的界面设计规范，对产品本色有独特见解，有一定的手绘基础" class="ipt ipt-area required" data-range="1,140" data-blank="不能为空" data-format="请输入 140 个以内的文字" maxlength="280" name="advantage">我拥有出色的执行力，以及坚持不懈的毅力！作为应届生我可能缺少实际的工作经验，但是只要给我时间，我就会证明我的潜力！</textarea><span class="count-num"><em>55</em>/140</span></dd>
                                        </dl>
                                    </div>
                                    <div class="form-btns"><button class="btn btn-back" type="button" ka="user-resume-desc-edit-cancel">取消</button><button class="btn" type="submit" ka="user-resume-desc-edit-ok">完成</button></div>
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

                                <div id="row-ffcd26ea53cbbf201Hxz3Ny0Eg--">
                                    <span class="label-text"><i class="fz-resume fz-job"></i>Java</span><em class="vline"></em><span class="label-text"><i class="fz-resume fz-salary"></i>7k-9k </span><em class="vline"></em><span class="label-text"><i class="fz-resume fz-industry"></i>不限</span><em class="vline"></em><span class="label-text"><i class="fz-resume fz-place"></i>北京</span>
                                    <div class="op">
                                        <a data-url="/geek/getGeekExpectPositionForm.json?id=ffcd26ea53cbbf201Hxz3Ny0Eg~~" href="javascript:;" ka="user-resume-edit-holpjob1" class="link-edit"><i class="fz-resume fz-edit"></i>编辑</a>

                                    </div>
                                </div>

                            </div>

                        </div>
                        <div class="item-form"></div>
                    </div>
                    <div class="resume-item" id="resume-history">
                        <div class="item-primary">
                            <h3 class="title">
                                实习经历
                                <div class="op">
                                    <a data-url="/geek/getWorkExperienceForm.json" href="javascript:;" ka="user-resume-add-workexp" class="link-add"><i class="fz-resume fz-add"></i>添加</a>
                                </div>
                            </h3>
                            <div class="history-project">

                            </div>
                        </div>
                        <div class="item-form"></div>
                    </div>
                    <div class="resume-item" id="resume-project">
                        <div class="item-primary">
                            <h3 class="title">项目经验
                                <div class="op">
                                    <a href="javascript:;" data-url="/geek/getGeekProjectExperienceForm.json" ka="user-resume-add-project" class="link-add"><i class="fz-resume fz-add"></i>添加</a>
                                </div>
                            </h3>
                            <div class="history-project">

                            </div>
                        </div>
                        <div class="item-form"></div>
                    </div>
                    <div class="resume-item" id="resume-education">
                        <div class="item-primary">
                            <h3 class="title">教育经历
                                <div class="op">
                                    <a href="javascript:;" data-url="/geek/getEduExperienceForm.json"  ka="user-resume-add-eduexp" class="link-add"><i class="fz-resume fz-add"></i>添加</a>
                                </div>
                            </h3>
                            <div class="history-education">

                                <div class="history-item" id="row-e8a7e1b2d01343141Xx90tu9Fw~~">
                                    <div class="op">
                                        <a href="javascript:;" data-url="/geek/getEduExperienceForm.json?id=e8a7e1b2d01343141Xx90tu9Fw~~" ka="user-resume-edit-eduexp1" class="link-edit"><i class="fz-resume fz-edit"></i>编辑</a>

                                    </div>
                                    <span class="period">2013-至今</span>
                                    <h4 class="name">燕山大学</h4>
                                    <div class="text">
                                        <h4>软件工程<em class="vline"></em>本科</h4>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="item-form"></div>
                    </div>
                    <div class="resume-item" id="resume-social">
                        <div class="item-primary">
                            <h3 class="title">社交账号
                                <div class="op">
                                    <a href="javascript:;" data-url="/geek/getSocialContact.json"  ka="user-resume-add-website" class="link-add"><i class="fz-resume fz-add"></i>添加</a>
                                </div>
                            </h3>
                            <div class="social-account">

                            </div>
                        </div>
                        <div class="item-form"></div>
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
                <p>附件简历将在投递后被Boss预览查看，请 确认显示正确</p>
                <div class="btn upload-again" ka="user-resume-preview-fail-reupload">重新上传</div>
                <p>支持 doc、docx、pdf、jpg、png 格式</p>
            </div>
        </div>
    </div>

    <div id="footer">
        <div class="inner">
            <div class="footer-social">
                <p>
                    <a href="http://www.weibo.com/bosszhipin" ka="cpc-footer-weibo" class="icon-weibo" target="_blank"><span>官方微博</span></a>
                    <a href="javascript:;" ka="cpc-footer-weixin" class="icon-weixin"><span>微信公众号</span><img src="/v2/web/geek/images/we_chat_qr.jpg" class="qrcode-weixin" /></a>
                    <a href="https://www.zhipin.com/d/v2/?type=ck&pkn=foot&sid=" ka="cpc-footer-download" class="icon-app"><span>下载</span></a>
                </p>
                <p>
                    <a href="/aboutAs.html" ka="cpc-footer-about" style="color:#ffffff">关于我们</a>&nbsp;&nbsp;&nbsp;&nbsp;企业服务热线 <b>400 065 5799</b></p>
            </div>
            <div class="copyright">
                <div class="footer-logo"><img src="/v2/web/geek/images/logo-footer.png" alt="" /></div>

                <p>Copyright &copy; 2017 zhipin.com 北京华品博睿网络技术有限公司 京ICP备14013441号-5</p>
                <p>联系地址：北京朝阳区太阳宫中路冠捷大厦3层302 联系电话：010-84150633
                    <a class="link-beian" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502032801" target="_blank">京公网安备11010502032801<img src="/v2/web/geek/images/icon-beian.png" alt="" /></a>
                </p>

            </div>
        </div>
    </div>
    <!--通用返回顶部-->
    <div id="siderbar">
        <ul>
            <li class="siderbar-top" title="返回顶部"></li>
            <li class="siderbar-qrcode" title="BOSS直聘APP">
                <div class="qrcode-layer"><i></i><img src="/qrcode/common.json?content=https%3A%2F%2Fwww.zhipin.com%2Fd%2Fv2%2F%3Ftype%3Dqr%26pkn%3Dqt%26sid%3D&w=200&h=200" alt="" />下载BOSS直聘APP</div>
            </li>
        </ul>
    </div>
    <!--通用注册登录-->
    <div class="sign-wrap" style="display:none;">
        <!--密码登录-->
        <div class="sign-form sign-pwd">
            <h3 class="title">登录BOSS直聘</h3>
            <div class="tip-error"></div>
            <div class="sign-tab"><span class="link-signin cur">密码登录</span><span class="link-sms">短信登录</span><span class="link-scan">扫码登录</span></div>
            <form action="/login/account.json" method="post">
                <div class="form-row row-select">
                    <span class="dropdown-select"><i class="icon-select-arrow"></i><em class="text-select">+86</em><input type="hidden" name="regionCode" value="+86" /></span>
                    <span class="ipt-wrap"><i class="icon-sign-phone"></i><input type="tel" class="ipt ipt-phone required" ka="signin-account" placeholder="手机号" name="account" /></span>
                    <div class="dropdown-menu">
                        <ul>
                            <li data-val="+86"><span class="num">+86</span>中国大陆</li>
                            <li data-val="+1"><span class="num">+1</span>美国</li>
                            <li data-val="+852"><span class="num">+852</span>香港</li>
                            <li data-val="+81"><span class="num">+81</span>日本</li>
                            <li data-val="+886"><span class="num">+886</span>台湾</li>
                            <li data-val="+44"><span class="num">+44</span>英国</li>
                            <li data-val="+82"><span class="num">+82</span>韩国</li>
                            <li data-val="+33"><span class="num">+33</span>法国</li>
                            <li data-val="+7"><span class="num">+7</span>俄罗斯</li>
                            <li data-val="+39"><span class="num">+39</span>意大利</li>
                            <li data-val="+65"><span class="num">+65</span>新加坡</li>
                            <li data-val="+63"><span class="num">+63</span>菲律宾</li>
                            <li data-val="+60"><span class="num">+60</span>马来西亚</li>
                            <li data-val="+64"><span class="num">+64</span>新西兰</li>
                            <li data-val="+34"><span class="num">+34</span>西班牙</li>
                            <li data-val="+95"><span class="num">+95</span>缅甸</li>
                            <li data-val="+230"><span class="num">+230</span>毛里求斯</li>
                            <li data-val="+263"><span class="num">+263</span>津巴布韦</li>
                            <li data-val="+20"><span class="num">+20</span>埃及</li>
                            <li data-val="+92"><span class="num">+92</span>巴基斯坦</li>
                            <li data-val="+880"><span class="num">+880</span>孟加拉国</li>
                        </ul>
                    </div>
                </div>
                <div class="form-row">
                    <input type="password" class="ipt ipt-pwd required" ka="signin-password" placeholder="密码" name="password" />
                </div>
                <div class="form-row row-code">
                    <span class="cell-wrap"><i class="icon-sign-code"></i><input type="text" class="ipt ipt-code" name="captcha" ka="signin-code" maxlength="4" placeholder="验证码" data-url="/captcha/randkey.json" /></span><span class="cell-wrap"><img class="verifyimg"/></span>
                    <input type="hidden" name="randomKey" class="randomkey" value="" />
                </div>
                <div class="form-btn">
                    <button type="submit" class="btn">登录</button>
                </div>
                <div class="text-tip">没有账号
                    <a href="javascript:;" class="link-signup">立即注册</a>
                </div>
            </form>
        </div>
        <!--短信登录-->
        <div class="sign-form sign-sms">
            <h3 class="title">登录BOSS直聘</h3>
            <div class="tip-error"></div>
            <div class="sign-tab"><span class="link-signin">密码登录</span><span class="link-sms cur">短信登录</span><span class="link-scan">扫码登录</span></div>
            <form action="/login/phone.json" method="post">
                <div class="form-row row-select">
                    <span class="dropdown-select"><i class="icon-select-arrow"></i><em class="text-select">+86</em><input type="hidden" name="regionCode" value="+86" /></span>
                    <span class="ipt-wrap"><i class="icon-sign-phone"></i><input type="tel" class="ipt ipt-phone required" ka="signin-account" placeholder="手机号" name="phone" /></span>
                    <div class="dropdown-menu">
                        <ul>
                            <li data-val="+86"><span class="num">+86</span>中国大陆</li>
                            <li data-val="+1"><span class="num">+1</span>美国</li>
                            <li data-val="+852"><span class="num">+852</span>香港</li>
                            <li data-val="+81"><span class="num">+81</span>日本</li>
                            <li data-val="+886"><span class="num">+886</span>台湾</li>
                            <li data-val="+44"><span class="num">+44</span>英国</li>
                            <li data-val="+82"><span class="num">+82</span>韩国</li>
                            <li data-val="+33"><span class="num">+33</span>法国</li>
                            <li data-val="+7"><span class="num">+7</span>俄罗斯</li>
                            <li data-val="+39"><span class="num">+39</span>意大利</li>
                            <li data-val="+65"><span class="num">+65</span>新加坡</li>
                            <li data-val="+63"><span class="num">+63</span>菲律宾</li>
                            <li data-val="+60"><span class="num">+60</span>马来西亚</li>
                            <li data-val="+64"><span class="num">+64</span>新西兰</li>
                            <li data-val="+34"><span class="num">+34</span>西班牙</li>
                            <li data-val="+95"><span class="num">+95</span>缅甸</li>
                            <li data-val="+230"><span class="num">+230</span>毛里求斯</li>
                            <li data-val="+263"><span class="num">+263</span>津巴布韦</li>
                            <li data-val="+20"><span class="num">+20</span>埃及</li>
                            <li data-val="+92"><span class="num">+92</span>巴基斯坦</li>
                            <li data-val="+880"><span class="num">+880</span>孟加拉国</li>
                        </ul>
                    </div>
                </div>
                <div class="form-row row-code">
                    <span class="cell-wrap"><i class="icon-sign-code"></i><input type="text" class="ipt ipt-code" name="captcha" ka="signin-code" maxlength="4" placeholder="验证码" data-url="/captcha/randkey.json" /></span><span class="cell-wrap"><img class="verifyimg"/></span>
                    <input type="hidden" name="randomKey" class="randomkey" value="" />
                </div>
                <div class="form-row">
                    <span class="ipt-wrap"><i class="icon-sign-sms"></i><input type="text" class="ipt ipt-sms required" ka="signup-sms" placeholder="短信验证码" name="phoneCode" maxlength="4" /><input type="hidden" name="smsType" value="1" /><button type="button" class="btn btn-sms" data-url="/registe/sendSms.json">发送验证码</button></span>
                </div>
                <div class="form-btn">
                    <button type="submit" class="btn">登录</button>
                </div>
                <div class="text-tip">没有账号
                    <a href="javascript:;" class="link-signup">立即注册</a>
                </div>
            </form>
        </div>
        <!--扫码登录-->
        <div class="sign-form sign-scan">
            <h3 class="title">登录BOSS直聘</h3>
            <div class="tip-error"></div>
            <div class="sign-tab"><span class="link-signin">密码登录</span><span class="link-sms">短信登录</span><span class="link-scan cur">扫码登录</span></div>
            <div class="qrcode-box">
                <input type="hidden" class="uuid" value="" />
                <p>使用 BOSS直聘 APP 扫码登录</p>
                <img src="" data-url="https://www.zhipin.com/qrscan/dispatcher?qrId=" />
                <div class="qrcode-tip"><span class="gray">知道了</span>Boss现在也可以使用密码和短信登录了</div>
            </div>
            <div class="text-tip">没有账号
                <a href="javascript:;" class="link-signup">立即注册</a>
            </div>
        </div>
        <!--注册-->
        <div class="sign-form sign-register">
            <h3 class="title">注册BOSS直聘</h3>
            <div class="tip-error"></div>
            <div class="sign-tab">
                <span>使用手机号注册</span>
            </div>
            <form action="/registe/save.json" method="post">
                <div class="form-row row-select">
                    <span class="dropdown-select"><i class="icon-select-arrow"></i><em class="text-select">+86</em><input type="hidden" name="regionCode" value="+86" /></span>
                    <span class="ipt-wrap"><i class="icon-sign-phone"></i><input type="tel" class="ipt ipt-phone required" ka="signin-account" placeholder="手机号" name="phone" /></span>
                    <div class="dropdown-menu">
                        <ul>
                            <li data-val="+86"><span class="num">+86</span>中国大陆</li>
                            <li data-val="+1"><span class="num">+1</span>美国</li>
                            <li data-val="+852"><span class="num">+852</span>香港</li>
                            <li data-val="+81"><span class="num">+81</span>日本</li>
                            <li data-val="+886"><span class="num">+886</span>台湾</li>
                            <li data-val="+44"><span class="num">+44</span>英国</li>
                            <li data-val="+82"><span class="num">+82</span>韩国</li>
                            <li data-val="+33"><span class="num">+33</span>法国</li>
                            <li data-val="+7"><span class="num">+7</span>俄罗斯</li>
                            <li data-val="+39"><span class="num">+39</span>意大利</li>
                            <li data-val="+65"><span class="num">+65</span>新加坡</li>
                            <li data-val="+63"><span class="num">+63</span>菲律宾</li>
                            <li data-val="+60"><span class="num">+60</span>马来西亚</li>
                            <li data-val="+64"><span class="num">+64</span>新西兰</li>
                            <li data-val="+34"><span class="num">+34</span>西班牙</li>
                            <li data-val="+95"><span class="num">+95</span>缅甸</li>
                            <li data-val="+230"><span class="num">+230</span>毛里求斯</li>
                            <li data-val="+263"><span class="num">+263</span>津巴布韦</li>
                            <li data-val="+20"><span class="num">+20</span>埃及</li>
                            <li data-val="+92"><span class="num">+92</span>巴基斯坦</li>
                            <li data-val="+880"><span class="num">+880</span>孟加拉国</li>
                        </ul>
                    </div>
                </div>
                <div class="form-row row-code">
                    <span class="cell-wrap"><i class="icon-sign-code"></i><input type="text" class="ipt ipt-code" name="captcha" ka="signin-code" maxlength="4" placeholder="验证码" data-url="/captcha/randkey.json" /></span><span class="cell-wrap"><img class="verifyimg"/></span>
                    <input type="hidden" name="randomKey" class="randomkey" value="" />
                </div>
                <div class="form-row">
                    <span class="ipt-wrap"><i class="icon-sign-sms"></i><input type="text" class="ipt ipt-sms required" ka="signup-sms" placeholder="短信验证码" name="phoneCode" maxlength="4" /><input type="hidden" name="smsType" value="2" /><button type="button" class="btn btn-sms" data-url="/registe/sendSms.json">发送验证码</button></span>
                </div>
                <div class="form-btn">
                    <button type="submit" class="btn">注册</button>
                </div>
                <div class="text-tip">已有账号
                    <a href="javascript:;" class="link-signin">直接登录</a>
                </div>
            </form>
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
</div>
<script src="../js/jquery-1.12.2.min.js"></script>
<!--<script src="../js/main.js"></script>-->
</body>
<input type="hidden" id="page_key_name" value="cpc_user_resume" />
<script src="../js/resume.js"></script>

</html>