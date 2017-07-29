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
      <div class="tip-error">${errormessage}</div>
      <div class="sign-tab">
      	<span class="link-signin cur"style="margin-left:120px;border: none;">密码登录</span>
      </div>
      <form action="/user/login.do" method="post">
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
      <form action="/user/register.do" method="post">
        <div class="form-row row-select">
          <span class="ipt-wrap"><input id="account" type="text" class="ipt ipt-pwd" placeholder="邮箱" name="account" /></span>
        </div>
        <div class="form-row">
          <span class="ipt-wrap"><input type="text" class="ipt ipt-pwd" placeholder="邮箱验证码" name="emailCode" maxlength="6" /><input type="hidden" name="emailCode2" id="emailCode2"><button type="button" class="btn btn-sms">发送邮件</button></span>
        </div>
        <div class="form-row">
          <span class="ipt-wrap"><input type="password" class="ipt ipt-pwd password" placeholder="设置密码" name="password" /></span>
        </div>
        <div class="form-btn">
          <button type="submit" class="btn btn-submit">注册</button>
        </div>
        <div class="text-tip">已有账号 <a href="javascript:;" class="link-signin">直接登录</a></div>
      </form>
    </div>

  </div>
</div>
<script src="/js/jquery-1.12.2.min.js"></script>
<script src="/js/login.js"></script>
<script>
  $(document).ready(function () {
      $('.btn-sms').click(function () {
          var data = $("#account").val();
          $.post("/user/sendCode.do",
              {
                  account:data
              },
              function(data,status){
                  $("#emailCode2").val(data)
                  alert("邮件发送完毕！");
              });
      });
  })
</script>
</body>
</html>