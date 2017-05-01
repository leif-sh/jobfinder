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
    <meta name="keywords" content="JobFinder" />
    <meta name="description" content="JobFinder，互联网时代的领跑者！" />
    <link href="../css/main.css" type="text/css" rel="stylesheet">
</head>
<body>
<div id="wrap">
    <div id="header">
        <div class="inner">
            <h1 class="logo"><a href="/" ka="header-home-logo" title="JobFinder"><span>BOSS直聘</span></a></h1>
            <div class="nav">
                <ul>
                    <li class="">
                        <a ka="header-home" href="/">首页</a>
                    </li>
                    <li class="">
                        <a ka="header-job" href="/job_detail/">职位</a>
                    </li>
                    <!--<li class=""><a ka="header-app" href="/app.html" >APP</a></li>-->
                    <li class="">
                        <a ka="header-article" href="/article/">校招</a>
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
        <div class="chat-container ">
            <div class="chat-sider">
                <div class="job-primary">
                    <div class="info-primary">
                        <h3 class="name">Java工程师</h3>
                        <p class="saraly"><span class="red">15K-30K</span></p>
                        <p> VIPKID<em class="vline"></em>北京<em class="vline"></em>应届生工作经验<em class="vline"></em>本科</p>
                        <p>
                            <a href="/job_detail/910b9d467c2db72f1nRy0ti7GVs~.html" ka="chat_job_detail" class="btn btn-outline" target="_blank">查看职位详情</a>
                        </p>
                    </div>
                </div>
                <h3>职位描述</h3>
                <div class="detail-content">
                    <div class="job-sec">
                        <div class="text">
                            工作职责：<br/>参与核心业务后台系统逻辑的设计和开发<br/>保障业务系统的高可用、一致、高性能运行<br/>指导低级别工程师工作和成长<br/><br/>核心能力项：<br/>扎实的计算机专业基本功，强大的写码能力；（必须）<br/>熟练掌握 Java 及面向对象设计开发，对部分 Java 技术有深入研究，研究过优秀开源软件的源码并有心得者优先；<br/>了解 SOA 架构理念、实现技术；熟悉常见设计模式，熟练掌握 Spring、myBatis 等框架特性及应用经验；<br/>熟练掌握 MySQL 应用开发、数据库原理和常用性能优化和扩展技术，以及 NoSQL，Queue 的原理、使用场景以及限制；<br/>深入研究过 http 协议、搜索引擎、缓存、安全、jvm 调优、序列化、nio、RPC 调用框架中 1/2 以上，有相应实践经验者；<br/>参与过大型复杂分布式互联网（特别是电商） 用户端 WEB / API 系统的设计开发者优先；<br/>拥有和工作年限相称的广度和（或）深度，有较强的逻辑/概率思维能力，善于分析、归纳、描述、沟通、和解决问题；<br/>高度的创业心和投入度，既能搞定牛逼的技术难题，同时又热切地关注业务，用技术力贡献于业务成功；
                        </div>
                    </div>
                </div>
            </div>

            <div class="chat-wrap">
                <div class="detail-top">
                    <div class="op">
                        <a href="javascript:;">jack</a><span> VIPKID<em class="vline"></em>hr</span></div>
                </div>
                <div class="resume-container"></div>
                <div class="chat-box show-box">
                    <div class="chat-list" data-uid="7010207" data-eid="3fb3eca7da6117b30HR729-9Fw~~">
                        <ul>
                            <li id="temp-7272612673" class="item-myself status-delivery">
                                <div class="figure"></div>
                                <div class="text"><i class="status"></i>BOSS好，我正在找Java工程师的工作。今年应届毕业，积极主动、乐于学习，希望能得到您的回复。</div>
                            </li>
                        </ul>
                    </div>

                    <div class="chat-editor">
                        <div class="chat-controls">
                            <a ka="geek_chat_emoji" href="javascript:;" class="btn-emotion"><i>表情</i></a>
                        </div>
                        <span class="chat-placholder">输入消息</span>
                        <div class="chat-message" contenteditable="true" ka="geek_chat_input"></div>
                        <div class="chat-op" ka="geek_chat_send"><span class="tip">按Enter键发送，按Ctrl+Enter键换行</span><button class="btn btn-send btn-disabled" type="submit">发送</button></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<script src="../js/jquery-1.12.2.min.js"></script>
<script src="../js/main.js"></script>
</body>
<input type="hidden" id="page_key_name" value="cpc_user_chatdetail" />

</html>
