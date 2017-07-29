$(document).ready(function(){
    $(".text-tip .link-signup").click(function(){
        showPannel("signin");
    });
    $(".text-tip .link-signin").click(function(){
        showPannel("signup");
    });
    $(".sign-register .account").focus(function(){
        $(".tip-error").text();
    });
    $(".sign-register .password").focus(function(){
        $(".tip-error").text("");
    });
    $(".sign-pwd .account").focus(function(){
        $(".tip-error").text("");
    });
    $(".sign-pwd .password").focus(function(){
        $(".tip-error").text("");
    });
    $(".sign-register .emailCode").focus(function(){
        $(".tip-error").text("");
    });
    $(".sign-register .btn-submit").click(function(){
        var account = $(".sign-register .account").val();
        var password = $(".sign-register .password").val();
        var emailCode = $(".sign-register .emailCode").val();
        if (account == "") {
            $(".tip-error").text("账号为空");
            return false;
        }else if(emailCode == ""){
            $(".tip-error").text("验证码为空");
            return false;
        }else if(password == ""){
            $(".tip-error").text("密码为空");
            return false;
        }
    });
    $(".sign-pwd .btn").click(function(){
        var account = $(".sign-pwd .account").val();
        var password = $(".sign-pwd .password").val();
        if (account == "") {
            $(".tip-error").text("邮箱为空");
            return false;
        }else if(password == ""){
            $(".tip-error").text("密码为空");
            return false;
        }
    });
    function showPannel(t){
        switch (t)
        {
            case "signin":
                $(".sign-pwd").hide();
                $(".sign-register").show();
                break;
            case "signup":
                $(".sign-register").hide();
                $(".sign-pwd").show();
                break;
            case "welcome":
                i = e.find(".sign-welcome");
                break;
        }
    }
})