<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>jobFinder-设置</title>
    <link rel="stylesheet" type="text/css" href="../cssforbusiness/position.css">
</head>

<body>
<div id="wrapper">
    <div id="main">
        <div id="container">
            <!-- 筛选列表 -->
            <div class="position-sec">
                <div class="set-page">
                    <div class="set-nav">
                        <h3 class="title">设置</h3>
                        <ul>
                            <li class="cur" ka="setting-actions">沟通流程的动作</li>
                            <li ka="setting-reply-words">常用语（3条）</li>
                        </ul>
                    </div>
                    <div class="set-content">
                        <div class="set-box show-set-box">
                            <div class="set-item">
                                <h3 class="title">当您点击［待沟通］按钮时</h3>
                                <dl>
                                    <dt>您是否期望向牛人自动发送一条信息？</dt>
                                    <dd>
                                        <form action="/setting/notify/msg.json" method="post">
                                            <input type="hidden" name="type" value="2">
                                            <div class="radio-list">
                                                <label class="radio"><input type="radio" ka="setting-comm-msg0" name="sendMsg" value="0" checked="checked"><span>不发送信息</span></label>
                                                <label class="radio"><input type="radio" ka="setting-comm-msg1" name="sendMsg" value="1"><span>发送信息“你好”</span><em class="vline"></em><a href="javascript:;" ka="setting-comm-editmsg" class="link-modify">修改</a></label>
                                            </div>
                                            <div class="defined-form">
                                                <p class="tip-text">请不要填写手机、QQ、微信等联系方式或广告信息，否则系统将封禁您的账号！</p>
                                                <textarea class="ipt ipt-area" ka="setting-comm-msgcontent" name="msgContent" data-range="1,200" placeholder="输入消息...">你好</textarea>
                                                <div class="btns">
                                                    <button type="button" ka="setting-comm-save" class="btn">保存</button>
                                                    <button type="button" ka="setting-comm-cancel" class="btn btn-back">取消</button>
                                                    <span class="count-num"><em>0</em>/200</span>
                                                </div>
                                            </div>
                                        </form>
                                    </dd>
                                </dl>
                            </div>
                            <div class="set-item">
                                <h3 class="title">当您点击［合适］按钮时</h3>
                                <dl>
                                    <dt>您是否期望向牛人自动发送一条信息？</dt>
                                    <dd>
                                        <form action="/setting/notify/msg.json" method="post">
                                            <input type="hidden" name="type" value="3">
                                            <div class="radio-list">
                                                <label class="radio"><input type="radio" ka="setting-suitable-msg0" name="sendMsg" value="0" checked="checked"><span>不发送信息</span></label>
                                                <label class="radio"><input type="radio" ka="setting-suitable-msg1" name="sendMsg" value="1"><span>发送信息“你好”</span><em class="vline"></em><a href="javascript:;" ka="setting-suitable-editmsg" class="link-modify">修改</a></label>
                                            </div>
                                            <div class="defined-form">
                                                <textarea class="ipt ipt-area" ka="setting-suitable-msgcontent" name="msgContent" data-range="1,200" placeholder="输入消息...">你好</textarea>
                                                <div class="btns">
                                                    <button type="button" ka="setting-suitable-save" class="btn">保存</button>
                                                    <button type="button" ka="setting-suitable-cancel" class="btn btn-back">取消</button>
                                                    <span class="count-num"><em>0</em>/200</span>
                                                </div>
                                            </div>
                                        </form>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>您是否期望同时向牛人求简历，或者交换联系方式？</dt>
                                    <dd>
                                        <form action="/setting/notify/require.json" method="post">
                                            <input type="hidden" name="type" value="3">
                                            <div class="radio-list">
                                                <label class="radio"><input type="radio" ka="setting-suitable-require0" name="requireType" value="0" checked="checked"><span>不需要</span></label>
                                                <label class="radio"><input type="radio" ka="setting-suitable-require1" name="requireType" value="1"><span>向牛人求简历</span></label>
                                                <label class="radio"><input type="radio" ka="setting-suitable-require2" name="requireType" value="2"><span>向牛人求简历，并且请求去交换联系方式</span></label>
                                            </div>
                                            <p>注：只有您与牛人达成沟通之后，才能够自动帮您求简历或交换联系方式</p>
                                        </form>
                                    </dd>
                                </dl>
                            </div>
                            <div class="set-item">
                                <h3 class="title">当您点击［不合适］按钮时</h3>
                                <dl>
                                    <dt>您是否期望向牛人自动发送一条信息？</dt>
                                    <dd>
                                        <form action="/setting/notify/msg.json" method="post">
                                            <input type="hidden" name="type" value="4">
                                            <div class="radio-list">
                                                <label class="radio"><input type="radio" ka="setting-notsuitable-msg0" name="sendMsg" value="0" checked="checked"><span>不发送信息</span></label>
                                                <label class="radio"><input type="radio" ka="setting-notsuitable-msg1" name="sendMsg" value="1"><span>发送信息“您不太适合我这个职位”</span><em class="vline"></em><a href="javascript:;" ka="setting-notsuitable-eidtmsg" class="link-modify">修改</a></label>
                                            </div>
                                            <div class="defined-form">
                                                <p class="tip-text">请不要填写手机、QQ、微信等联系方式或广告信息，否则系统将封禁您的账号！</p>
                                                <textarea class="ipt ipt-area" name="msgContent" data-range="1,200" placeholder="输入消息...">您不太适合我这个职位</textarea>
                                                <div class="btns">
                                                    <button type="button" ka="setting-notsuitable-save" class="btn">保存</button>
                                                    <button type="button" ka="setting-notsuitable-cancel" class="btn btn-back">取消</button>
                                                    <span class="count-num"><em>0</em>/200</span>
                                                </div>
                                            </div>
                                        </form>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="set-box">
                            <div class="set-item">
                                <h3 class="title">常用语</h3>
                                <dl>
                                    <dd>
                                        <div class="sentence-list">
                                            <ul>
                                                <li>
                                                    <a href="javascript:;" ka="remove-word-0" class="link-remove" data-url="/setting/replyword/del.json?id=a36ad961b8884d7c1nx43N-1ElE~">移除</a>
                                                    <p>对不起，看了你的简历以后觉得不太合适，希望你早日找到满意的工作机会</p>
                                                </li>
                                                <li>
                                                    <a href="javascript:;" ka="remove-word-1" class="link-remove" data-url="/setting/replyword/del.json?id=721b6bdb0bab18fa1nx43N-1ElY~">移除</a>
                                                    <p>什么时候方便过来面试吗？</p>
                                                </li>
                                                <li>
                                                    <a href="javascript:;" ka="remove-word-2" class="link-remove" data-url="/setting/replyword/del.json?id=061a4b5850f01fdd1nx43N-1Elc~">移除</a>
                                                    <p>方便发一份你的简历过来吗？</p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="op-sentence">
                                            <a href="javascript:;" ka="add-word" class="link-add">添加常用语</a>
                                        </div>
                                        <div class="defined-form">
                                            <form action="/setting/replyword/add.json" method="post">
                                                <p class="tip-text">请不要填写手机、QQ、微信等联系方式或广告信息，否则系统将封禁您的账号！</p>
                                                <textarea class="ipt ipt-area" ka="setting-word" name="word" data-range="1,200" placeholder="输入常用语..."></textarea>
                                                <div class="btns">
                                                    <button type="button" ka="setting-save-word" class="btn">保存</button>
                                                    <button type="button" ka="setting-cancel-word" class="btn btn-back">取消</button>
                                                    <span class="count-num"><em>0</em>/200</span>
                                                </div>
                                            </form>
                                        </div>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>
