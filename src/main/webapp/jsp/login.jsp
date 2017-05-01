<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="standard">
<head>
  <meta charset="utf-8">
  <title>JobFinder-登录</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0, minimal-ui" />
  <meta name="keywords" content="JobFinder" />
  <meta name="description" content="JobFinder，互联网时代的领跑者！" />
  <link href="../css/main.css" type="text/css" rel="stylesheet">
</head>
<body class="page-sign">
<div id="wrap">
  <div id="header">
  </div>
  <div class="sign-wrap">
    <!--密码登录-->
    <div class="sign-form sign-pwd" style="display:block;">
      <h3 class="title">登录JobFinder</h3>
      <div class="tip-error">${requestScope.errorMessage}</div>
      <div class="sign-tab">
      	<span class="link-signin cur"style="margin-left:120px;border: none;">密码登录</span>
      </div>
      <form action="/User/login.do" method="post">
        <div class="form-row row-select">
          <span class="ipt-wrap"><i class="icon-sign-phone"></i><input type="tel" class="ipt ipt-pwd required account" ka="signin-account" placeholder="账号" name="account" /></span>
        </div>
        <div class="form-row">
          <span class="ipt-wrap"><i class="icon-sign-pwd"></i><input type="password" class="ipt ipt-pwd required password" ka="signin-password" placeholder="密码" name="password" /></span>
        </div>
        
        <div class="form-btn">
          <button type="submit" class="btn">登录</button>
        </div>
        <div class="text-tip">没有账号 <a href="javascript:;" class="link-signup">立即注册</a></div>
      </form>
    </div>
    
    <!--注册-->
    <div class="sign-form sign-register" style="display:none;">
      <h3 class="title">注册JobFinder</h3>
      <div class="tip-error"></div>
      <div class="sign-tab">
        <span>使用邮箱注册</span>
      </div>
      <form action="/User/register.do" method="post">
        <div class="form-row row-select">
          <span class="ipt-wrap"><i class="icon-sign-phone"></i><input type="text" class="ipt ipt-pwd required account" ka="signin-account" placeholder="邮箱" name="account" /></span>
        </div>
        <div class="form-row">
          <span class="ipt-wrap"><i class="icon-sign-phone"></i><input type="text" class="ipt ipt-pwd required emailCode" ka="signin-account" placeholder="邮箱验证码" name="emailCode" maxlength="4" /><input type="hidden" name="smsType" value="2" /><button type="button" class="btn btn-sms">发送邮件</button></span>
        </div>
        <div class="form-row">
          <span class="ipt-wrap"><i class="icon-sign-pwd"></i><input type="password" class="ipt ipt-pwd required password" ka="signin-password" placeholder="设置密码" name="password" /></span>
        </div>
        <div class="form-btn">
          <button type="submit" class="btn">注册</button>
        </div>
        <div class="text-tip">已有账号 <a href="javascript:;" class="link-signin">直接登录</a></div>
      </form>
    </div>
    <!--注册成功完善简历-->
    <div class="sign-form sign-welcome">
      <h3 class="title">欢迎来到JobFinder</h3>
      <div class="welcome-box">
        <div class="welcome-text">
          <b>快速完善简历</b>
          <p>做好与Boss对话前的准备吧。</p>
        </div>
        <img src="/v2/web/geek/images/icon-sign-welcome.png" alt="" />
        <div class="form-btn"><a ka="registe-complete" href="/niurenweb/complete/guide.html" class="btn">开始完善</a></div>
        <div class="count-down"><em class="num">3s</em> 后自动跳转</div>
      </div>
    </div>
  </div>
</div>
<script src="../js/jquery-1.12.2.min.js"></script>
<script src="../js/login.js"></script>
<input type="hidden" id="page_key_name" value="cpc_user_sign_up" />

<script>
</script>
</body>
</html>