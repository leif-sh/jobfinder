<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="standard">

<head>
    <meta charset="utf-8">
    <title>jobFinder-聊天</title>
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
                    <li class="cur">
                        <a ka="header-chat" href="/gchat/chat.html">聊天<span class="nav-chat-num"></span></a>
                    </li>
                    <li class="">
                        <a ka="header-delivery-box" href="/geek/deliver.html">投递箱</a>
                    </li>
                    <li class="">
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
                    <a href="/gchat/chat.html" ka="user-chatlist-msg">聊天 <i class="fz fz-mes"></i></a>
                    <a href="/geek/deliver.html" ka="user-chatlist-box">投递箱<i class="fz fz-deliver"></i></a>
                    <a href="/geek/myresume.html" ka="user-chatlist-resume">我的简历<i class="fz fz-cv"></i></a>
                </div>
                <div class="promotion-download clearfix">
                    <div class="promotion-qrcode"><img src="/qrcode/common.json?content=https%3A%2F%2Fwww.zhipin.com%2Fd%2Fv2%2F%3Ftype%3Drq%26pkn%3Dsendbox%26sid%3D&w=200&h=200" alt=""></div>
                    <div class="text">
                        <p>
                            <a href="https://www.zhipin.com/d/v2/?type=ck&pkn=sendbox&sid=" ka="user-chatlist-download1">下载BOSS直聘</a><br>
                            <a href="https://www.zhipin.com/d/v2/?type=ck&pkn=sendbox&sid=" ka="user-chatlist-download2">立刻开聊</a>
                        </p>
                        <p class="link-row">
                            <a href="https://www.zhipin.com/d/v2/?type=ck&pkn=sendbox&sid=" ka="user-chatlist-download3" class="link-download">DOWNLOAD</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="job-list boss-list">
                <div class="job-tab">
                    <a href="/gchat/chat.html" class="cur" ka="user-chatlist-tmsg">聊天</a>
                    <a href="/geek/deliver.html" ka="user-chatlist-tbox">投递箱</a>
                </div>
                <div class="data-tips" style="display: none;"></div>
                <ul>
                    <li class="read" data-uid="7010207"><div class="figure"><img src="https://img2.bosszhipin.com/boss/avatar/avatar_6.png"></div><div class="op"><span class="time">00:00</span><a class="btn btn-continue" href="/gchat/im.html?bossId=3fb3eca7da6117b30HR729-9Fw~~" target="_blank" ka="go_chat_done_10895699">继续沟通</a></div><div class="text"><h3 class="name">jack<em>·</em>VIPKID<em>·</em>应届生<span class="gray">招Java工程师<em class="vline"></em>北京<em class="vline"></em>15K-30K</span></h3><p class="gray">“BOSS好，我正在找Java工程师的工作。今年应届毕业，积极主动、乐于学习，希望能得到您的回复。”</p></div></li>
                </ul>
                <div ka="user-chatlist-loadmore" class="loadmore">点击加载更多</div>
                <!--有职位 end-->
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
<script src="../js/main.js"></script>
<input type="hidden" id="pageName" value="user_chatlist" />

<script src="https://img.bosszhipin.com/js/analytics.min.js"></script>
<script src="https://img.bosszhipin.com/js/utils/ka.js?v=1.0"></script>

</body>

</html>