<%--
  Created by IntelliJ IDEA.
  User: ling
  Date: 2017/5/1
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>JobFinder-管理您的职位</title>
    <meta name="keywords" content="JobFinder" />
    <meta name="description" content="JobFinder，互联网时代的领跑者！" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <script src="https://img.bosszhipin.com/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.3&key=60085a6ee91616cf689ce0321e1f30c4&plugin=AMap.Geocoder"></script>
    <script data-main="../jsforbussiness/home.js" src="https://img.bosszhipin.com/v2/js/require.js"></script>
</head>
<body>
<div class="wrapper" content openurl="1_1">
    <div class="P_tishi">
        <div class="g_tips">
            <a class="close"></a>
            <div class="content ellipsis">
                TIPS：尊敬的${businesssuser.userName}，你目前有<em>0</em>个在线职位
            </div>
        </div>
    </div>
    <!--右侧栏-->
    <form  method="post" class="zhiwei" action="">
        <div class="rwrap">

            <div class="box baseinfo_unable">
                <div class="hd">公司基本信息<em class="red">*</em><span class="wx_tips"></span></div>
                <div class="zw_form edit_cinfos clearfix">
                    <dl class="clearfix">
                        <dt class="tit">公司全称</dt>
                        <dd class="txt Rcheck">
                            <input name="zhiwei" type="text" class="kz_input" style="width:280px;" readonly="" value="北京蓝光汇智网络科技有限公司" val="北京蓝光汇智网络科技有限公司">
                        </dd>
                    </dl>
                    <input type="hidden" name="brandId" class="brandid" value="" val="">
                    <!--<div class="showbox listcinfo">
                        <dl class="clearfix select_cinfo">
                            <dt class="tit">选择公司信息</dt>
                            <dd class="txt Rcheck">
                                <ul class="list_company">

                                    <li class="addmail"><a class="add_mail_2" href="javascript:void(0)"><i></i>添加公司信息</a></li>
                                </ul>
                            </dd>
                        </dl>
                    </div>-->

                    <div class="showbox info_iptext" style="display:none">
                        <dl class="clearfix">
                            <dt class="tit">所在行业</dt>
                            <dd class="txt Rcheck">
                                <input name="zhiwei" type="text" class="kz_input ipt_industry" style="width:280px;" readonly="" value="">
                            </dd>
                        </dl>
                        <dl class="clearfix">
                            <dt class="tit">公司简称</dt>
                            <dd class="txt Rcheck">
                                <input name="zhiwei" type="text" class="kz_input inpt_short" style="width:280px;" readonly="" value="">
                            </dd>
                        </dl>
                        <dl class="clearfix">
                            <dt class="tit">人员规模</dt>
                            <dd class="txt Rcheck">
                                <input name="zhiwei" type="text" class="kz_input ipat_scale" style="width:280px;" readonly="" value="">
                            </dd>
                        </dl>
                    </div>
                    <div class="showbox addcompanybuttonbox" style="display:none">
                        <dl class="clearfix">
                            <dt class="tit">公司信息</dt>
                            <dd class="txt Rcheck">
                                <a class="add_mail_2" href="javascript:void(0)"><i></i>添加公司信息</a>
                            </dd>
                        </dl>
                    </div>


                </div>
            </div>
            <div class="box">
                <div class="hd">职位基本信息<em class="red">*</em></div>
                <input type="hidden" name="jstr" value=""/>
                <div class="zw_form clearfix">
                    <dl class="clearfix">
                        <dt class="tit">职位名称</dt>
                        <dd class="txt Rcheck">
                            <input ka="job-edit-position" name="positionName" type="text" class="kz_input required" style="width:360px;" length="[1,40]" placeholder="请输入" nullmsg="职位名称" errormsg="输入的职位名称40字以内！" maxlength="16" value="" val="" >
                        </dd>
                        <dd class="tips"></dd>
                    </dl>
                    <dl class="clearfix" style="z-index:600">
                        <dt class="tit">职位类型</dt>
                        <dd class="txt Rcheck">

                            <div class="kz_select zw required">
                                <input ka="job-edit-category" name="positionCategory" type="text" style="width:315px;" datatype="z" placeholder="请选择" nullmsg="请输入选择职位！" errormsg="" value="" val="" readonly>
                                <input type="hidden" name="position" class="P_zwcat_2" value="" level2="">
                                <span class="arrow"><i></i></span>
                                <div class="openmenu">
                                    <i class="box_arrow"></i>

                                    <div class="job_box" style="*z-index:18">
                                        <div class="job_tit">
                                            <h2>技术</h2>
                                        </div>
                                        <ul class="clearfix">


                                        </ul>
                                    </div>

                                </div>
                            </div>


                        </dd>
                    </dl>
                    <dl class="clearfix" style="z-index:500">
                        <dt class="tit">技能要求</dt>
                        <dd class="txt Rcheck">
                            <input ka="job-edit-skill" name="skillShow" type="text" class="kz_input required P_multiselect P_skills" placeholder="请选择" style="width:360px;" length="[1,100]" nullmsg="技能要求"  errormsg="输入的技能要求4字以内！" readonly value="" val="">
                            <select name="skill" multiple class="P_skills_select" data-num="3" style="display:none;">

                            </select>
                            <span class="arrow"><i></i></span>
                        </dd>
                    </dl>
                    <dl class="clearfix" style="z-index:400">
                        <dt class="tit">工作城市</dt>
                        <dd class="txt Rcheck" style="z-index: 1;">
                            <input ka="job-edit-location" name="locationName" type="text" value="" val="" placeholder="请输入" class="kz_input required P_search_city" style="width:360px;" length="[2,8]" nullmsg="工作城市" errormsg="输入的工作城市4字以内！" data-url="/qrweb/city.json" >
                            <input name="locationCode" type="hidden" value="">
                            <div class="P_selectbox" style="top: 47px; display: none;"><div class="box"><i></i></div></div>
                        </dd>
                    </dl>
                    <dl class="clearfix" style="height:auto">
                        <dt class="tit">工作地点</dt>
                        <dd class="cont Rcheck">
                            <input type="hidden" name="city" value="010">
                            <input type="hidden" name="Geocoder" value="">
                            <input type="hidden" name="poiProvince" value="">
                            <input type="hidden" name="poiCity" value="">
                            <input type="hidden" name="poiArea" value="">
                            <input type="hidden" name="poiTitle" value="">
                            <input type="hidden" name="locationInfo" value="">
                            <input type="hidden" name="houseNumber" value="">
                            <input  name="address" type="text" placeholder="请输入该职位办公的详细地址" value="" val="" class="kz_input required ipt_readonly address" length="[2,80]" nullmsg="请输入工作地点"  errormsg="输入地址40字以内！" maxlength="80" style="width:567px;" /></dd>
                        <dd class="map" style="width:600px; height:340px; overflow:hidden; margin-top:30px;">
                            <div id="container" style="width:600px; height:340px;"></div>
                        </dd>
                    </dl>
                    <dl class="clearfix" style="z-index:300">
                        <dt class="tit">薪资范围</dt>
                        <dd class="txt Rcheck">
                            <div class="kz_select menu required xz" style="float:left">
                                <input name="lowSalary" type="text" style="width:50px;" datatype="z" nullmsg="请输入选择薪水！"
                                       errormsg="薪水格式不对！" value="请选择" val="请选择"
                                       readonly><span class="arrow">K</span>
                                <div class="layer_option">
                                    <i class="arrow_up"></i>
                                    <ul>
                                        <li>1</li> <li>2</li> <li>3</li> <li>4</li> <li>5</li> <li>6</li> <li>7</li> <li>8</li> <li>9</li> <li>10</li> <li>11</li> <li>12</li> <li>13</li> <li>14</li> <li>15</li> <li>16</li> <li>17</li> <li>18</li> <li>19</li> <li>20</li> <li>21</li> <li>22</li> <li>23</li> <li>24</li> <li>25</li> <li>26</li> <li>27</li> <li>28</li> <li>29</li> <li>30</li> <li>31</li> <li>32</li> <li>33</li> <li>34</li> <li>35</li> <li>36</li> <li>37</li> <li>38</li> <li>39</li> <li>40</li> <li>41</li> <li>42</li> <li>43</li> <li>44</li> <li>45</li> <li>46</li> <li>47</li> <li>48</li> <li>49</li> <li>50</li> <li>60</li> <li>70</li> <li>80</li> <li>90</li> <li>100</li>
                                        <li>110</li> <li>120</li> <li>130</li><li>140</li> <li>150</li> <li>160</li> <li>170</li> <li>180</li> <li>190</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="right_xz">
                                <em>到</em>
                                <div class="kz_select menu required xz">
                                    <input name="highSalary" type="text" style="width:50px;" datatype="z"
                                           nullmsg="请输入选择薪水！" errormsg="薪水格式不对！"
                                           value="请选择" val="请选择" readonly><span
                                        class="arrow">K</span>
                                    <div class="layer_option">
                                        <i class="arrow_up"></i>
                                        <ul>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="box">
                <div class="hd">职位要求<em class="red">*</em></div>
                <div class="zw_form clearfix">
                    <dl class="clearfix" style="z-index:200">
                        <dt class="tit">经验要求</dt>
                        <dd class="txt Rcheck">
                            <div class="kz_select menu required">
                                <input ka="job-edit-experience" name="experienceShow" type="text" placeholder="请选择" style="width:200px;" datatype="z" nullmsg="请选择经验要求" errormsg="邮箱格式不对！" value="" val="" readonly>
                                <input name="experience" type="hidden" value=""/>
                                <span class="arrow"><i></i></span>
                                <div class="layer_option"> <i class="arrow_up"></i>
                                    <ul>

                                        <li data-val="101">不限</li>

                                        <li data-val="102">应届生</li>

                                        <li data-val="103">1年以内</li>

                                        <li data-val="104">1-3年</li>

                                        <li data-val="105">3-5年</li>

                                        <li data-val="106">5-10年</li>

                                        <li data-val="107">10年以上</li>

                                </div>
                            </div>
                        </dd>
                    </dl>
                    <dl class="clearfix" style="z-index:100">
                        <dt class="tit">最低学历</dt>
                        <dd class="txt Rcheck">
                            <div class="kz_select menu required">
                                <input ka="job-edit-degree" name="degreeShow" type="text" style="width:200px;" placeholder="请选择" datatype="z" nullmsg="请选择最低学历" errormsg="邮箱格式不对！" value="" val="" readonly>
                                <input name="degree" type="hidden" value=""/>
                                <span class="arrow"><i></i></span>
                                <div class="layer_option"> <i class="arrow_up"></i>
                                    <ul>

                                        <li data-val="201">不限</li>

                                        <li data-val="207">中专及以下</li>

                                        <li data-val="206">高中</li>

                                        <li data-val="202">大专</li>

                                        <li data-val="203">本科</li>

                                        <li data-val="204">硕士</li>

                                        <li data-val="205">博士</li>

                                    </ul>
                                </div>
                            </div>
                        </dd>
                    </dl>
                    <dl class="clearfix"  style="height:200px;">
                        <dt class="tit">职位描述</dt>
                        <dd class="txt Rcheck">
                            <textarea ka="job-edit-description" name="description" placeholder="请输入" class="kz_area required" length="[1,5000]" AddFun="Cal_count(o)" nullmsg="最少1个字符" errormsg="职位描述1-5000个字符！" style="width:570px; height:160px;" maxlength="10000" val=""></textarea>
                            <div class="num"><b>0</b>/5000</div>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="box">
                <div class="hd">其他信息</div>
                <div class="zw_form clearfix">
                    <dl class="clearfix">
                        <dt class="tit">接收简历邮箱</dt>
                        <dd class="txt Rcheck">
                            <div class="inp_mail">
                                <input ka="resume-email" type="text" name="userResumeEmail" value="litie@blwit.com" class="required"  Optional  Regular="e" AddFun="Cal_count(o)" length="[0,255]" errormsg="邮箱格式有误">
                            </div>
                        </dd>
                    </dl>
                </div>
            </div>
            <!--按钮-->
            <div class="btn_submit kz_tcenter">
                <a ka="job-edit-save" class="kz_btn btn_a btn_a1 vali_btn" href="javascript:;"
                   data-msg="保存成功，在APP端“我的”页面下划刷新，可同步电脑端数据">保存</a>
            </div>
            <!--/按钮-->
        </div>
    </form>
    <!--/右侧栏-->
</div>
<div class="l_tips" id="qr_del_1" style="display:none;">
    <div class="head">
        <a class="delete"></a>
        <span>温馨提示</span>
    </div>
    <div class="cont">
        <p class="tip tc f18">删除后，这个职位无法恢复，确定吗？</p>

        <div class="btns">
            <a class="kz_btn btn_a btn_a3 cancle" href="javascript:void(0)">取消</a>
            <a class="kz_btn btn_a btn_a3 confirm" href="javascript:void(0)">确定</a>
        </div>
    </div>
</div>

<!--邮箱弹层-->
<div class="l_tips l_resume" id="l_mail" style="display: none">
    <div class="head">
        <a class="delete"></a>
        <i class="ico_resume"></i>
    </div>
    <div class="cont">
        <form method="get" action="/user/updateEmail.json">
            <p class="tip tc f16">请输入您接收简历的邮箱</p>
            <div class="ip_mail">
                <input type="email" islayer="1" placeholder=""  onkeydown="if(event.keyCode==13){return false;}"/>
                <div class="ip_tip" style="display: none"><span>您输入的邮箱格式不正确，请重新输入</span></div>
            </div>
            <p class="ip_tips hint">建议您添加公司官方邮箱</p>
            <div class="loading" style="display: none"><img src="/v2/chat_v2/images/gif.gif" /></div>
            <div class="btns">
                <a class="kz_btn btn_a btn_a3 sure2" href="javascript:void(0)">确 定</a>
            </div>
        </form>
    </div>
</div>
<!--确认您选择的公司-->
<div class="l_tips" id="l_selectcompany" style="display:none;">
    <div class="head">
        <a class="delete"></a>
        <span>温馨提示</span>
    </div>
    <div class="cont">
        <p class="tip tc f18">请确认您选择的公司信息</p>
        <p class="hint">公司信息选择后本页不可修改，<br/>请确保您的信息真实有效</p>
        <div class="btns">
            <a class="kz_btn btn_a btn_a3 cancle" href="#" ka="bpcu-job-cu-cancle" >取消</a>
            <a class="kz_btn btn_a btn_a3 sure" href="#" ka="bpcu-job-cu-sure" >确定</a>
        </div>
    </div>
</div>
<!--/确认您选择的公司-->
<!--公司基本信息弹层-->
<div class="zw_form clearfix company_base" style=" z-index:2000;display:none;" id="company_base">
    <form  method="post" action="/user/brand/user/save.json" class="companybaseform">
        <a class="delete" href="javascript:void(0)"></a>
        <div class="ctop">
            <i></i>
            <h3>公司基本信息</h3>
            <p>公司信息填写后本页面不可修改且将被审核，请确保您的信息真实有效<br>同一公司简称及行业的Boss将进入同公司主页</p>
        </div>
        <dl class="clearfix">
            <dt class="tit">公司全称</dt>
            <dd class="txt Rcheck"><input type="text" class="kz_input required inpt_fullname" style="width:370px;" value="北京蓝光汇智网络科技有限公司" disabled ></dd>
            <dd class="tips"></dd>
        </dl>
        <dl class="clearfix" style="z-index:4">
            <dt class="tit">公司简称</dt>
            <dd class="txt Rcheck">
                <input name="companyName" type="text" class="kz_input required kz_search_brand inpt_short" style="width:370px;" AddFun="Cal_count(o)" length="[2,10]" nullmsg="公司简称"   errormsg="字数超出限制" maxlength="20" placeholder="填写您公司被用户熟知的名字，如：BOSS直聘" data-url="/user/brand/suggest/" data-ajax="/user/brand/checkSensitiveWord/"><span class="num num_tip"><b>0</b>/10</span>
            </dd>
        </dl>
        <div class="companydetailbox">
            <dl class="clearfix" style="z-index:3">
                <dt class="tit">公司行业</dt>
                <dd class="txt Rcheck">
                    <div class="kz_select menu required">
                        <input type="text" class="inpt_industry" style="width:326px;" datatype="z" nullmsg="请选择公司行业！" errormsg="公司行业不对！" value="请选择" readonly><span class="arrow"><i></i></span>
                        <input name="industryCode" type="hidden">
                        <div class="layer_option">
                            <i class="arrow_up"></i>
                            <ul>

                                <li data-val="502">健康医疗</li>

                                <li data-val="503">生活服务</li>

                                <li data-val="504">旅游</li>

                                <li data-val="505">金融</li>

                                <li data-val="506">信息安全</li>

                                <li data-val="507">广告营销</li>

                                <li data-val="508">数据服务</li>

                                <li data-val="509">智能硬件</li>

                                <li data-val="510">文化娱乐</li>

                                <li data-val="511">网络招聘</li>

                                <li data-val="512">分类信息</li>

                                <li data-val="513">电子商务</li>

                                <li data-val="514">移动互联网</li>

                                <li data-val="515">企业服务</li>

                                <li data-val="516">社交网络</li>

                                <li data-val="517">教育培训</li>

                                <li data-val="518">O2O</li>

                                <li data-val="519">游戏</li>

                                <li data-val="520">互联网</li>

                                <li data-val="521">媒体</li>

                                <li data-val="522">IT软件</li>

                                <li data-val="523">通信</li>

                                <li data-val="524">公关会展</li>

                                <li data-val="525">房地产/建筑</li>

                                <li data-val="526">汽车</li>

                                <li data-val="527">供应链/物流</li>

                                <li data-val="528">咨询/翻译/法律</li>

                                <li data-val="529">采购/贸易</li>

                                <li data-val="501">非互联网行业</li>

                            </ul>
                        </div>
                    </div>
                </dd>
                <dd class="tips"></dd>
            </dl>
            <dl class="clearfix" style="z-index:2">
                <dt class="tit">人员规模</dt>
                <dd class="txt Rcheck">
                    <div class="kz_select menu required">
                        <input type="text" class="inpt_scale" style="width:326px;" datatype="z" nullmsg="请选择公司规模！" errormsg="公司规模不对！" value="请选择" readonly><span class="arrow"><i></i></span>
                        <input name="scale" type="hidden">
                        <div class="layer_option">
                            <i class="arrow_up"></i>
                            <ul>

                                <li data-val="301">0-20人</li>

                                <li data-val="302">20-99人</li>

                                <li data-val="303">100-499人</li>

                                <li data-val="304">500-999人</li>

                                <li data-val="305">1000-9999人</li>

                                <li data-val="306">10000人以上</li>

                            </ul>
                        </div>
                    </div>
                </dd>
                <dd class="tips"></dd>
            </dl>
        </div>
        <div class="vali_btn"><input name="" type="button" class="kz_btn btn_a btn_a3 save disabled" value="提交"></div>
    </form>
</div>
<!--/公司基本信息弹层-->
<div class="company_base_layer_tip">
    <i></i>
    <b>公司简称是您的公司名称关键字或您的品牌名</b>
    <p>例如：<span>腾讯</span>为<span>腾讯科技（深圳）有限公司</span> 的公司简称</p>
    <p>例如：<span>美团</span>为<span>北京三快在线科技有限公司</span> 的公司简称</p>
    <p>例如：<span>百度</span>为<span>百度在线网络技术（北京）有限公司</span> 的公司简称</p>
    <p>例如：<span>新浪微博</span>为<span>微梦创科网络科技（中国）有限公司</span> 的公司简称</p>
    <p>例如：<span>京东</span>为<span>北京京东世纪贸易有限公司</span> 的公司简称</p>
    <a href="#" class="btn_next">查看下一个案例</a>
</div>
<!--/公司基本信息弹层-->
<div class="zw_form company_base company_base_info">
    <a class="delete" href="javascript:void(0)"></a>
    <div class="ctop">
        <i></i>
        <h3>公司基本信息</h3>
        <p>公司信息填写后本页面不可修改且将被审核，请确保您的信息真实有效<br>同一公司简称及行业的Boss讲进入同公司主页</p>
    </div>
    <div class="detail">
        <div class="item item_logo"><span>公司logo：</span><img ></div>
        <div class="item item_fullname"><span>公司全称：</span><p>北京蓝光汇智网络科技有限公司</p></div>
        <div class="item item_name"><span>公司简称：</span><p></p></div>
        <div class="item item_industryName"><span>所在行业：</span><p></p></div>
        <div class="item item_scaleName"><span>人员规模：</span><p></p></div>
        <div class="item item_stageName"><span>融资阶段：</span><p></p></div>
        <div class="item item_homePage"><span>公司官网：</span><p></p></div>
    </div>
    <div class="btns">
        <a href="#" class="btn_back">返回</a>
        <a href="#" class="btn_submit">提交</a>
    </div>
</div>
<!-- 发布确认弹窗 -->
<div class="l_tips" id="fb_confirm" style="display:none;">
    <div class="head"> <a class="delete"></a> <span>温馨提示</span> </div>
    <div class="cont">
        <p class="tip tc f18">职位提交后，职位名称、职位类型和<br>工作城市将不可修改，请谨慎操作</p>
        <div class="btns"> <a class="kz_btn btn_a btn_a3 cancle" href="javascript:void(0)">返回修改</a> <a class="kz_btn btn_a btn_a3 sure" href="javascript:void(0)">发布</a> </div>
    </div>
</div>
<div class="l_tips layer_zhiwei_create">
    <div class="head">
        <a class="delete"></a>
        <span>温馨提示</span>
    </div>
    <div class="cont">
        <h3>职位发布成功！</h3>
        <p class="tip tc f18 mt_20">系统为你找到<span></span>位匹配该职位的牛人</p>
        <div class="btns">
            <a ka="job-edit-geek-later" class="kz_btn btn_a btn_a3 cancle" href="#">稍候查看</a>
            <a ka="job-edit-geek-now" class="kz_btn btn_a btn_a3 sure" href="#">立即查看</a>
        </div>
    </div>
</div>
<input type="hidden" id="page_key_name" value="bpc_job_create_v1" />

</body>
</html>
