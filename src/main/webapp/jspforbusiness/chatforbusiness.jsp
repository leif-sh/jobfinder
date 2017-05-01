<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>

    <link rel="stylesheet" type="text/css" href="../cssforbusiness/position.css">
    <link href="../cssforbusiness/mainforbusiness.css" type="text/css" rel="stylesheet">

</head>

<body>
<div id="wrapper">
    <div id="main">
        <div id="container">
            <!-- 筛选列表 -->
            <div class="position-sec">
                <div class="sec-top">
                    <div class="data-menu">
                        <div class="data-tab">
                            <a ka="chat-relationtype1" href="javascript:;" class="chat-menu-total cur" data-status="-1">全部<span class="menu-chat-badge"></span></a>
                            <a ka="chat-relationtype2" href="javascript:;" class="" data-status="5">新</a>
                            <a ka="chat-relationtype3" href="javascript:;" class="" data-status="6">沟通中</a>
                            <a ka="chat-relationtype4" href="javascript:;" class="" data-status="7">合适</a>
                            <a ka="chat-relationtype5" href="javascript:;" class="" data-status="8">不合适</a>
                        </div>
                        <div class="sub-menu">
                            <div class="pull-right">
                                <div class="sel-filter">
                                    <span ka="main_filter" class="label-text"><b>筛选</b><i class="fz fz-arrow-down"></i></span>
                                </div>
                                <div class="sel-type">
                                    <span ka="job_filter" class="label-text"><b>全部职位</b><i class="fz fz-arrow-down"></i></span>
                                    <div class="dropdown-list">
                                        <ul>

                                        </ul>
                                    </div>
                                </div>
                                <div class="sel-rank" style="display: none;">
                                    <span ka="job_rank" class="label-text"><b>按时间排序</b><i class="fz fz-arrow-down"></i></span>
                                    <div class="dropdown-list">
                                        <ul>
                                            <li>
                                                <a ka="chat-rank0" href="javascript:;" data-rank="0">按时间排序</a>
                                            </li>
                                            <li>
                                                <a ka="chat-rank1" href="javascript:;" data-rank="1">按匹配度排序</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="menu-status">

                                <p class="show">
                                    <a ka="chat-relationorigin-1--1" href="javascript:;" data-origin="-1" class="cur">全部</a>
                                    <a ka="chat-relationorigin-1-7" href="javascript:;" data-origin="7" class="">有完整简历</a>&nbsp;</p>

                                <p class="">
                                    <a ka="chat-relationorigin5--1" href="javascript:;" data-origin="-1" class="cur">全部</a>
                                    <a ka="chat-relationorigin5-1" href="javascript:;" data-origin="1" class="">新的开聊</a>
                                    <a ka="chat-relationorigin5-2" href="javascript:;" data-origin="2" class="">新的投递</a>
                                    <a ka="chat-relationorigin5-3" href="javascript:;" data-origin="3" class="">同事推荐</a>&nbsp;</p>

                                <p class="">
                                    <a ka="chat-relationorigin6--1" href="javascript:;" data-origin="-1" class="cur">全部</a>
                                    <a ka="chat-relationorigin6-5" href="javascript:;" data-origin="5" class="">我发起的</a>
                                    <a ka="chat-relationorigin6-6" href="javascript:;" data-origin="6" class="">牛人发起的</a>
                                    <a ka="chat-relationorigin6-7" href="javascript:;" data-origin="7" class="">有完整简历</a>&nbsp;</p>

                                <p class="">
                                    <a ka="chat-relationorigin7--1" href="javascript:;" data-origin="-1" class="cur">全部</a>
                                    <a ka="chat-relationorigin7-7" href="javascript:;" data-origin="7" class="">有完整简历</a>&nbsp;</p>

                                <p class="">&nbsp;</p>

                            </div>
                        </div>
                    </div>
                </div>
                <!--全部筛选条件-->
                <div class="sec-filter">
                    <dl>
                        <dt>薪水：</dt>
                        <dd>

                            <a href="javascript:;" ka="chat-salary-1" data-salary="0" class="cur">不限</a>
                            <a href="javascript:;" ka="chat-salary-2" data-salary="402">3k以下</a>
                            <a href="javascript:;" ka="chat-salary-3" data-salary="403">3k-5k</a>
                            <a href="javascript:;" ka="chat-salary-4" data-salary="404">5k-10k</a>
                            <a href="javascript:;" ka="chat-salary-5" data-salary="405">10k-20k</a>
                            <a href="javascript:;" ka="chat-salary-6" data-salary="406">20k-50k</a>
                            <a href="javascript:;" ka="chat-salary-7" data-salary="407">50k以上</a>

                        </dd>
                    </dl>
                    <dl>
                        <dt>经验：</dt>
                        <dd>

                            <a href="javascript:;" ka="chat-experience-1" data-experience="0" class="cur">不限</a>
                            <a href="javascript:;" ka="chat-experience-2" data-experience="102">应届生</a>
                            <a href="javascript:;" ka="chat-experience-3" data-experience="103">1年以内</a>
                            <a href="javascript:;" ka="chat-experience-4" data-experience="104">1-3年</a>
                            <a href="javascript:;" ka="chat-experience-5" data-experience="105">3-5年</a>
                            <a href="javascript:;" ka="chat-experience-6" data-experience="106">5-10年</a>
                            <a href="javascript:;" ka="chat-experience-7" data-experience="107">10年以上</a>

                        </dd>
                    </dl>
                    <dl>
                        <dt>学历：</dt>
                        <dd>

                            <a href="javascript:;" ka="chat-degree-1" data-degree="0" class="cur">不限</a>
                            <a href="javascript:;" ka="chat-degree-2" data-degree="207">中专及以下</a>
                            <a href="javascript:;" ka="chat-degree-3" data-degree="206">高中</a>
                            <a href="javascript:;" ka="chat-degree-4" data-degree="202">大专</a>
                            <a href="javascript:;" ka="chat-degree-5" data-degree="203">本科</a>
                            <a href="javascript:;" ka="chat-degree-6" data-degree="204">硕士</a>
                            <a href="javascript:;" ka="chat-degree-7" data-degree="205">博士</a>

                        </dd>
                    </dl>
                </div>
                <div class="sec-content">
                    <div class="data-tips">
                        <div class="data-blank"><i class="tip-nodata"></i><b>没有相关数据</b></div>
                    </div>
                    <div class="user-list" style="display:none;">
                        <ul class="top-list"></ul>
                        <ul class="main-list"></ul>
                        <div class="loadmore" data-url="/chat/userList.json">滚动加载更多</div>
                    </div>
                    <div class="detail-box" style="display: none;">
                        <div class="chat-weclcome">
                            <div class="welcome-tips">欢迎使用BOSS直聘</div>
                        </div>
                        <div class="chat-wrap" style="display:none;">
                            <div class="detail-top">
                                <div class="pull-right">
                                    <div class="toggle-type" title="切换到简历">
                                        <span class="cur" data-target="resume-container">聊天<em></em></span>
                                        <span data-target="chat-box">微简历</span>
                                        <span data-target="attachment-container" data-url="/resume/prview4web/">完整简历</span>
                                    </div>
                                </div>
                                <div class="op">
                                    <a href="javascript:;" class="btn-settop">置顶</a>
                                </div>
                            </div>
                            <div class="chat-tab-content chat-box show-box">
                                <div class="chat-list">
                                    <div class="pre-loading"><span class="loading-more"><i></i><i></i><i></i></span></div>
                                    <div class="chat-info"></div>
                                    <ul></ul>
                                </div>
                                <div class="chat-editor">
                                    <div class="chat-controls">
                                        <div class="links">
                                            <a href="javascript:;" target-status="5" class="link-communication">置为沟通中</a>
                                            <a href="javascript:;" target-status="7" class="link-fail">不合适</a>
                                            <a href="javascript:;" target-status="6" class="link-pass">合适</a>
                                        </div>
                                        <a href="javascript:;" class="btn-emotion"><span>表情</span></a>
                                        <a href="javascript:;" class="btn-dict"><span>常用语</span></a>
                                        <a href="javascript:;" class="btn-resume"><span>求简历</span></a>
                                        <a href="javascript:;" class="btn-interview"><span>约面试</span></a>
                                        <a href="javascript:;" class="btn-contact"><span>求手机</span></a>
                                        <a href="javascript:;" class="btn-weixin"><span>求微信</span></a>
                                        <a href="javascript:;" class="btn-transmit"><span>转发</span></a>
                                    </div>
                                    <div class="chat-message" contenteditable="true"></div>
                                    <div class="chat-op"><span class="tip">按Enter键发送，按Ctrl+Enter键换行</span><button class="btn btn-send btn-disabled" type="submit">发送</button></div>
                                </div>
                            </div>
                            <div class="chat-tab-content resume-container">
                                <div class="resume-content-latest">
                                </div>
                                <div class="resume-content-load"></div>
                            </div>
                            <div class="chat-tab-content attachment-container">
                                <div class="attachment-detail">
                                </div>
                            </div>
                            <div class="detail-bottom">
                                <div class="btns">
                                    <button type="button" ka="geek_resume_communication" class="btn btn-communication cur" target-status="5">待沟通</button>
                                    <button type="button" ka="geek_resume_fail" class="btn btn-fail" target-status="7">不合适</button>
                                    <button type="button" ka="geek_resume_pass" class="btn btn-pass" target-status="6">合适</button>
                                </div>
                                <div class="text">[沟通中]4天前，向您的职位 <span class="text-blue"></span> 发起开聊</div>
                            </div>
                        </div>
                    </div>
                    <div class="chat-sider">
                        <a href="javascript:;" class="btn-prev" title="上一个"></a>
                        <a href="javascript:;" class="btn-next" title="下一个"></a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

</body>

</html>
