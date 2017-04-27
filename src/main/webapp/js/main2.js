function loadCss(e)
{
    var t = document.createElement("link");
    t.type = "text/css", t.rel = "stylesheet", t.href = e, document.getElementsByTagName("head")[0].appendChild(t)
}
function seriesLoadScripts(e, t)
{
    if ("object" != typeof e) {
        var e = [e];
    }
    var i = document.getElementsByTagName("head").item(0) || document.documentElement, n = new Array, 
    s = e.length - 1, a = function (o)
    {
        n[o] = document.createElement("script"), n[o].setAttribute("type", "text/javascript"), n[o].onload = n[o].onreadystatechange = function ()
        {
            this.onload = this.onreadystatechange = null, this.parentNode.removeChild(this), o != s ? a(o + 1) : "function" == typeof t && t();
        },
        n[o].setAttribute("src", e[o]), i.appendChild(n[o])
    };
    a(0)
}
function isVisiable(e)
{
    if (e)
    {
        var t = e.getBoundingClientRect();
        return t.top > 0 && window.innerHeight - t.top > 0 || t.top <= 0 && t.bottom >= 0;
    }
}
function isEmptyObject(e)
{
    var t;
    for (t in e) {
        return!1;
    }
    return!0
}
function getQueryString(e)
{
    var t = new RegExp("(^|&)" + e + "=([^&]*)(&|$)"), i = window.location.search.substr(1).match(t);
    return null != i ? unescape(i[2]) : null
}
function localStorageInstance(e, t)
{
    if (window.localStorage) if ("" === t) window.localStorage.removeItem(e);
    else {
        if (0 != t && !t) {
            return window.localStorage[e];
        }
        window.localStorage[e] = t
    }
    else if ("" === t) {
        cookie.clearcookie(e);
    }
    else {
        if (0 != t && !t) {
            return cookie.get(e);
        }
        cookie.set(e, t, 1e4)
    }
}
function getUuid(e, t)
{
    var i, n = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split(""), s = [];
    if (t = t || n.length, e) {
        for (i = 0; i < e; i++) {
            s[i] = n[0 | Math.random() * t];
        }
    }
    else
    {
        var a;
        for (s[8] = s[13] = s[18] = s[23] = "-", s[14] = "4", i = 0; i < 36; i++) {
            s[i] || (a = 0 | 16 * Math.random(), s[i] = n[19 == i ? 3 & a | 8 : a]);
        }
    }
    return s.join("")
}
function filterXss(e)
{
    return e ? e.replace(/\</g, "&lt;").replace(/\>/g, "&gt;") : e
}
function placeholderSupport()
{
    return "placeholder"in document.createElement("input")
}
var DEBUG = !0, UA = window.navigator.userAgent, isIE, isWebkit, isTouch = !1;
if ((UA.indexOf("Edge/") > -1 || UA.indexOf("MSIE ") > -1 || UA.indexOf("Trident/") > -1) && (isIE = !0), 
"ontouchstart"in window) {
    var isTouch = !0;
    document.addEventListener("touchstart", function () {}, !1)
}
var loadScript = function (e)
{
    var t, i;
    if (e && "" != e) {
        for (t = e.split(","), i = 0; i < t.length; i++) {
            $.getScript(t[i]);
        }
    }
},
cookie = 
{
    get : function (e)
    {
        var t, i = new RegExp("(^| )" + e + "=([^;]*)(;|$)");
        return (t = document.cookie.match(i)) ? unescape(t[2]) : null;
    },
    set : function (e, t, i)
    {
        if (i)
        {
            var n = new Date;
            n.setMinutes(i), document.cookie = e + "=" + encodeURIComponent(t) + ";expires=" + n.toGMTString()
        }
        else {
            document.cookie = e + "=" + encodeURIComponent(t);
        }
    },
    clearcookie : function (e)
    {
        document.cookie = e + "=;expires=" + new Date(0).toGMTString();
    }
},
PAGE_ACTIVITY = !0;
if (function ()
{
    function e(e)
    {
        var i = {
            focus :!0, focusin :!0, pageshow :!0, blur :!1, focusout :!1, pagehide :!1
        };
        e = e || window.event, PAGE_ACTIVITY = e.type in i ? i[e.type] :!this [t]
    }
    var t = "hidden";
    t in document ? document.addEventListener("visibilitychange", e) : (t = "mozHidden") in document ? document.addEventListener("mozvisibilitychange", 
    e) : (t = "webkitHidden") in document ? document.addEventListener("webkitvisibilitychange", e) : (t = "msHidden") in document ? document.addEventListener("msvisibilitychange", 
    e) : "onfocusin"in document ? document.onfocusin = document.onfocusout = e : window.onpageshow = window.onpagehide = window.onfocus = window.onblur = e
}(),
window.INTERFACE_URLS = {
    homeUrl : "/", logoutUrl : "/logout/", chatProtoUrl : "/v2/web/boss/js/module/chat.proto"
},
$(function ()
{
    $(".standard").length && $(".nav-figure").length ? seriesLoadScripts(["/v2/web/geek/js/chat.js"], 
    function ()
    {
        Chat.init()
    }) : $(".nav-figure").length && ($(".user-nav a").eq(0).attr("disabled", "disabled"), $(".user-nav a").eq(0).on("click", 
    function (e)
    {
        alert("请升级您的浏览器才能使用聊天功能"), e.preventDefault()
    }), $(".chat-list").length && ($(".chat-list").html('<div class="data-tips"><div class="data-blank"><i class="tip-errordata"></i><b>请升级您的浏览器才能使用聊天功能</b></div></div>'), 
    $(".chat-editor").hide()), $(".boss-list").length && $(".boss-list .data-tips").html('<div class="data-blank"><i class="tip-errordata"></i><b>请升级您的浏览器才能使用聊天功能</b></div>').show()), 
    $("#resume-userinfo").length && loadScript("/v2/web/geek/js/user-info.js")
}), function (e)
{
    function t()
    {
        return new Date(Date.UTC.apply(Date, arguments))
    }
    var i = function (t, i)
    {
        var a = this;
        this.element = e(t), this.container = i.container || "body", this.language = i.language || this.element.data("date-language") || "en", 
        this.language = this.language in n ? this.language : "en", this.isRTL = n[this.language].rtl || !1, 
        this.formatType = i.formatType || this.element.data("format-type") || "standard", this.format = s.parseFormat(i.format || this.element.data("date-format") || n[this.language].format || s.getDefaultFormat(this.formatType, 
        "input"), this.formatType), this.isInline = !1, this.isVisible = !1, this.isInput = this.element.is("input"), 
        this.bootcssVer = this.isInput ? this.element.is(".form-control") ? 3 : 2 : this.bootcssVer = this.element.is(".input-group") ? 3 : 2, 
        this.component = !!this.element.is(".date") && (3 == this.bootcssVer ? this.element.find(".input-group-addon .glyphicon-th, .input-group-addon .glyphicon-time, .input-group-addon .glyphicon-calendar").parent() : this.element.find(".add-on .icon-th, .add-on .icon-time, .add-on .icon-calendar").parent()), 
        this.componentReset = !!this.element.is(".date") && (3 == this.bootcssVer ? this.element.find(".input-group-addon .glyphicon-remove").parent() : this.element.find(".add-on .icon-remove").parent()), 
        this.hasInput = this.component && this.element.find("input").length, this.component && 0 === this.component.length && (this.component = !1), 
        this.linkField = i.linkField || this.element.data("link-field") || !1, this.linkFormat = s.parseFormat(i.linkFormat || this.element.data("link-format") || s.getDefaultFormat(this.formatType, 
        "link"), this.formatType), this.minuteStep = i.minuteStep || this.element.data("minute-step") || 5, 
        this.pickerPosition = i.pickerPosition || this.element.data("picker-position") || "bottom-right", 
        this.showMeridian = i.showMeridian || this.element.data("show-meridian") || !1, this.initialDate = i.initialDate || new Date, 
        this._attachEvents(), this.formatViewType = "datetime", "formatViewType"in i ? this.formatViewType = i.formatViewType : "formatViewType"in this.element.data() && (this.formatViewType = this.element.data("formatViewType")), 
        this.minView = 0, "minView"in i ? this.minView = i.minView : "minView"in this.element.data() && (this.minView = this.element.data("min-view")), 
        this.minView = s.convertViewMode(this.minView), this.maxView = s.modes.length - 1, "maxView"in i ? this.maxView = i.maxView : "maxView"in this.element.data() && (this.maxView = this.element.data("max-view")), 
        this.maxView = s.convertViewMode(this.maxView), this.wheelViewModeNavigation = !1, "wheelViewModeNavigation"in i ? this.wheelViewModeNavigation = i.wheelViewModeNavigation : "wheelViewModeNavigation"in this.element.data() && (this.wheelViewModeNavigation = this.element.data("view-mode-wheel-navigation")), 
        this.wheelViewModeNavigationInverseDirection = !1, "wheelViewModeNavigationInverseDirection"in i ? this.wheelViewModeNavigationInverseDirection = i.wheelViewModeNavigationInverseDirection : "wheelViewModeNavigationInverseDirection"in this.element.data() && (this.wheelViewModeNavigationInverseDirection = this.element.data("view-mode-wheel-navigation-inverse-dir")), 
        this.wheelViewModeNavigationDelay = 100, "wheelViewModeNavigationDelay"in i ? this.wheelViewModeNavigationDelay = i.wheelViewModeNavigationDelay : "wheelViewModeNavigationDelay"in this.element.data() && (this.wheelViewModeNavigationDelay = this.element.data("view-mode-wheel-navigation-delay")), 
        this.startViewMode = 2, "startView"in i ? this.startViewMode = i.startView : "startView"in this.element.data() && (this.startViewMode = this.element.data("start-view")), 
        this.startViewMode = s.convertViewMode(this.startViewMode), this.viewMode = this.startViewMode, 
        this.viewSelect = this.minView, "viewSelect"in i ? this.viewSelect = i.viewSelect : "viewSelect"in this.element.data() && (this.viewSelect = this.element.data("view-select")), 
        this.viewSelect = s.convertViewMode(this.viewSelect), this.forceParse = !0, "forceParse"in i ? this.forceParse = i.forceParse : "dateForceParse"in this.element.data() && (this.forceParse = this.element.data("date-force-parse")), 
        this.picker = e(3 == this.bootcssVer ? s.templateV3 : s.template).appendTo(this.isInline ? this.element : this.container).on({
            click : e.proxy(this.click, this), mousedown : e.proxy(this.mousedown, this)
        }), this.wheelViewModeNavigation && (e.fn.mousewheel ? this.picker.on({
            mousewheel : e.proxy(this.mousewheel, this)
        }) : console.log("Mouse Wheel event is not supported. Please include the jQuery Mouse Wheel plugin before enabling this option")), 
        this.isInline ? this.picker.addClass("datetimepicker-inline") : this.picker.addClass("datetimepicker-dropdown-" + this.pickerPosition), 
        this.isRTL && (this.picker.addClass("datetimepicker-rtl"), 3 == this.bootcssVer ? this.picker.find(".prev span, .next span").toggleClass("glyphicon-arrow-left glyphicon-arrow-right") : this.picker.find(".prev i, .next i").toggleClass("icon-arrow-left icon-arrow-right")), 
        e(document).on("click", function (t)
        {
            0 === e(t.target).closest(".datetimepicker").length && a.hide()
        }), this.autoclose = !1, "autoclose"in i ? this.autoclose = i.autoclose : "dateAutoclose"in this.element.data() && (this.autoclose = this.element.data("date-autoclose")), 
        this.keyboardNavigation = !0, "keyboardNavigation"in i ? this.keyboardNavigation = i.keyboardNavigation : "dateKeyboardNavigation"in this.element.data() && (this.keyboardNavigation = this.element.data("date-keyboard-navigation")), 
        this.todayBtn = i.todayBtn || this.element.data("date-today-btn") || !1, this.todayHighlight = i.todayHighlight || this.element.data("date-today-highlight") || !1, 
        this.weekStart = (i.weekStart || this.element.data("date-weekstart") || n[this.language].weekStart || 0) % 7, 
        this.weekEnd = (this.weekStart + 6) % 7, this.startDate =- (1 / 0), this.endDate = 1 / 0, this.daysOfWeekDisabled = [], 
        this.setStartDate(i.startDate || this.element.data("date-startdate")), this.setEndDate(i.endDate || this.element.data("date-enddate")), 
        this.setDaysOfWeekDisabled(i.daysOfWeekDisabled || this.element.data("date-days-of-week-disabled")), 
        this.fillDow(), this.fillMonths(), this.update(), this.showMode(), this.isInline && this.show();
    };
    i.prototype = 
    {
        constructor : i, _events : [],
        _attachEvents : function ()
        {
            this._detachEvents(), this.isInput ? this._events = [[this.element, 
            {
                click : e.proxy(this.show, this), keyup : e.proxy(this.update, this), keydown : e.proxy(this.keydown, 
                this)
            }]] : this.component && this.hasInput ? (this._events = [[this.element.find("input"), 
            {
                click : e.proxy(this.show, this), keyup : e.proxy(this.update, this), keydown : e.proxy(this.keydown, 
                this)
            }], [this.component, {
                click : e.proxy(this.show, this)
            }]], this.componentReset && this._events.push([this.componentReset, {
                click : e.proxy(this.reset, this)
            }])) : this.element.is("div") ? this.isInline = !0 : this._events = [[this.element, {
                click : e.proxy(this.show, this)
            }]];
            for (var t, i, n = 0; n < this._events.length; n++) {
                t = this._events[n][0], i = this._events[n][1], t.on(i);
            }
        },
        _detachEvents : function ()
        {
            for (var e, t, i = 0; i < this._events.length; i++) {
                e = this._events[i][0], t = this._events[i][1], e.off(t);
            }
            this._events = [];
        },
        show : function (t)
        {
            if (this.picker.is(":visible")) {
                return void this.picker.hide();
            }
            e(".datetimepicker").hide(), e(".dropdown-select-open").removeClass("dropdown-select-open"), 
            e(".dropdown-menu-open").removeClass("dropdown-menu-open"), this.element.closest(".dropdown-select").addClass("dropdown-select-open"), 
            this.picker.show(), this.height = this.component ? this.component.outerHeight() : this.element.outerHeight(), 
            this.forceParse && this.update(), this.place(), e(window).on("resize", e.proxy(this.place, 
            this)), t && (t.stopPropagation(), t.preventDefault()), this.isVisible = !0, this.element.trigger({
                type : "show", date : this.date
            })
        },
        hide : function (t)
        {
            this.isVisible && (this.isInline || (this.element.closest(".dropdown-select").removeClass("dropdown-select-open"), 
            this.picker.hide(), e(window).off("resize", this.place), this.viewMode = this.startViewMode, 
            this.showMode(), this.isInput || e(document).off("mousedown", this.hide), this.forceParse && (this.isInput && this.element.val() || this.hasInput && this.element.find("input").val()) && this.setValue(), 
            this.isVisible = !1, this.element.trigger({
                type : "hide", date : this.date
            })))
        },
        remove : function ()
        {
            this._detachEvents(), this.picker.remove(), delete this.picker, delete this.element.data().datetimepicker
        },
        getDate : function ()
        {
            var e = this.getUTCDate();
            return new Date(e.getTime() + 6e4 * e.getTimezoneOffset());
        },
        getUTCDate : function ()
        {
            return this.date;
        },
        setDate : function (e)
        {
            this.setUTCDate(new Date(e.getTime() - 6e4 * e.getTimezoneOffset()))
        },
        setUTCDate : function (e)
        {
            e >= this.startDate && e <= this.endDate ? (this.date = e, this.setValue(), this.viewDate = this.date, 
            this.fill()) : this.element.trigger({
                type : "outOfRange", date : e, startDate : this.startDate, endDate : this.endDate
            })
        },
        setFormat : function (e)
        {
            this.format = s.parseFormat(e, this.formatType);
            var t;
            this.isInput ? t = this.element : this.component && (t = this.element.find("input")), t && t.val() && this.setValue();
        },
        setValue : function ()
        {
            var t = this.getFormattedDate();
            this.isInput ? this.element.val(t) : (this.component && this.element.find("input").val(t), 
            this.element.data("date", t)), this.linkField && e("#" + this.linkField).val(this.getFormattedDate(this.linkFormat))
        },
        getFormattedDate : function (e)
        {
            return void 0 == e && (e = this.format), s.formatDate(this.date, e, this.language, this.formatType);
        },
        setStartDate : function (e)
        {
            this.startDate = e ||- (1 / 0), this.startDate !==- (1 / 0) && (this.startDate = s.parseDate(this.startDate, 
            this.format, this.language, this.formatType)), this.update(), this.updateNavArrows();
        },
        setEndDate : function (e)
        {
            this.endDate = e || 1 / 0, this.endDate !== 1 / 0 && (this.endDate = s.parseDate(this.endDate, 
            this.format, this.language, this.formatType)), this.update(), this.updateNavArrows();
        },
        setDaysOfWeekDisabled : function (t)
        {
            this.daysOfWeekDisabled = t || [], e.isArray(this.daysOfWeekDisabled) || (this.daysOfWeekDisabled = this.daysOfWeekDisabled.split(/,\s*/)), 
            this.daysOfWeekDisabled = e.map(this.daysOfWeekDisabled, function (e)
            {
                return parseInt(e, 10);
            }), this.update(), this.updateNavArrows()
        },
        place : function ()
        {
            if (!this.isInline)
            {
                var t = 0;
                e("div").each(function ()
                {
                    var i = parseInt(e(this).css("zIndex"), 10);
                    i > t && (t = i);
                });
                var i, n, s, a, o = t + 10;
                a = this.container instanceof e ? this.container.offset() : e(this.container).offset(), 
                this.component ? (i = this.component.offset(), s = i.left, "bottom-left" != this.pickerPosition && "top-left" != this.pickerPosition || (s += this.component.outerWidth() - this.picker.outerWidth())) : (i = this.element.offset(), 
                s = i.left), s + 220 > document.body.clientWidth && (s = document.body.clientWidth - 220), 
                n = "top-left" == this.pickerPosition || "top-right" == this.pickerPosition ? i.top - this.picker.outerHeight() : i.top + this.height, 
                n -= a.top, s -= a.left, this.picker.css({
                    top : n, left : s, zIndex : o
                })
            }
        },
        update : function ()
        {
            var e, t = !1;
            arguments && arguments.length && ("string" == typeof arguments[0] || arguments[0]instanceof Date) ? (e = arguments[0], 
            t = !0) : ("string" == typeof (e = (this.isInput ? this.element.val() : this.element.find("input").val()) || this.element.data("date") || this.initialDate) || e instanceof String) && (e = e.replace(/^\s+|\s+$/g, 
            "")), e || (e = new Date, t = !1), this.date = s.parseDate(e, this.format, this.language, 
            this.formatType), t && this.setValue(), this.date < this.startDate ? this.viewDate = new Date(this.startDate) : this.date > this.endDate ? this.viewDate = new Date(this.endDate) : this.viewDate = new Date(this.date), 
            this.fill();
        },
        fillDow : function ()
        {
            for (var e = this.weekStart, t = "<tr>"; e < this.weekStart + 7; ) {
                t += '<th class="dow">' + n[this.language].daysMin[e++% 7] + "</th>";
            }
            t += "</tr>", this.picker.find(".datetimepicker-days thead").append(t)
        },
        fillMonths : function ()
        {
            for (var e = "", t = 0; t < 12; ) {
                e += '<span class="month">' + n[this.language].monthsShort[t++] + "</span>";
            }
            this.picker.find(".datetimepicker-months td").html(e)
        },
        fill : function ()
        {
            if (null != this.date && null != this.viewDate)
            {
                var i = new Date(this.viewDate), a = i.getUTCFullYear(), o = i.getUTCMonth(), r = i.getUTCDate(), 
                l = i.getUTCHours(), d = i.getUTCMinutes(), c = this.startDate !==- (1 / 0) ? this.startDate.getUTCFullYear() :- (1 / 0), 
                h = this.startDate !==- (1 / 0) ? this.startDate.getUTCMonth() :- (1 / 0), u = this.endDate !== 1 / 0 ? this.endDate.getUTCFullYear() : 1 / 0, 
                p = this.endDate !== 1 / 0 ? this.endDate.getUTCMonth() : 1 / 0, f = new t(this.date.getUTCFullYear(), 
                this.date.getUTCMonth(), this.date.getUTCDate()).valueOf(), m = new Date;
                if (this.picker.find(".datetimepicker-days thead th:eq(1)").text(n[this.language].months[o] + " " + a), 
                "time" == this.formatViewType)
                {
                    var v = l % 12 ? l % 12 : 12, g = (v < 10 ? "0" : "") + v, w = (d < 10 ? "0" : "") + d, 
                    b = n[this.language].meridiem[l < 12 ? 0 : 1];
                    this.picker.find(".datetimepicker-hours thead th:eq(1)").text(g + ":" + w + " " + (b ? b.toUpperCase() : "")), 
                    this.picker.find(".datetimepicker-minutes thead th:eq(1)").text(g + ":" + w + " " + (b ? b.toUpperCase() : ""))
                }
                else
                {
                    this.picker.find(".datetimepicker-hours thead th:eq(1)").text(r + " " + n[this.language].months[o] + " " + a), 
                    this.picker.find(".datetimepicker-minutes thead th:eq(1)").text(r + " " + n[this.language].months[o] + " " + a);
                }
                this.picker.find("tfoot th.today").html('<div class="today-btn">' + n[this.language].today + "</div>").toggle(this.todayBtn !== !1), 
                this.updateNavArrows(), this.fillMonths();
                var y = t(a, o - 1, 28, 0, 0, 0, 0), C = s.getDaysInMonth(y.getUTCFullYear(), y.getUTCMonth());
                y.setUTCDate(C), y.setUTCDate(C - (y.getUTCDay() - this.weekStart + 7) % 7);
                var D = new Date(y);
                D.setUTCDate(D.getUTCDate() + 42), D = D.valueOf();
                for (var $, T = [], k = ""; y.valueOf() < D; )
                {
                    y.getUTCDay() == this.weekStart && T.push("<tr>"), $ = "", k = y.getUTCDate(), y.getUTCFullYear() < a || y.getUTCFullYear() == a && y.getUTCMonth() < o ? $ += " old" : (y.getUTCFullYear() > a || y.getUTCFullYear() == a && y.getUTCMonth() > o) && ($ += " new"), 
                    this.todayHighlight && y.getUTCFullYear() == m.getFullYear() && y.getUTCMonth() == m.getMonth() && k == m.getDate() && ($ += " today", 
                    k = "今日"), y.valueOf() == f && ($ += " active"), (y.valueOf() + 864e5 <= this.startDate || y.valueOf() > this.endDate || e.inArray(y.getUTCDay(), 
                    this.daysOfWeekDisabled) !==- 1) && ($ += " disabled"), T.push('<td class="day' + $ + '"><em>' + y.getUTCDate() + "</em></td>"), 
                    y.getUTCDay() == this.weekEnd && T.push("</tr>"), y.setUTCDate(y.getUTCDate() + 1);
                }
                this.picker.find(".datetimepicker-days tbody").empty().append(T.join("")), T = [];
                for (var _ = "", S = "", x = "", U = 0; U < 24; U++)
                {
                    var M = t(a, o, r, U);
                    $ = "", M.valueOf() + 36e5 <= this.startDate || M.valueOf() > this.endDate ? $ += " disabled" : l == U && ($ += " active"), 
                    this.showMeridian && 2 == n[this.language].meridiem.length ? (S = U < 12 ? n[this.language].meridiem[0] : n[this.language].meridiem[1], 
                    S != x && ("" != x && T.push("</fieldset>"), T.push('<fieldset class="hour"><legend>' + S.toUpperCase() + "</legend>")), 
                    x = S, _ = U % 12 ? U % 12 : 12, T.push('<span class="hour' + $ + " hour_" + (U < 12 ? "am" : "pm") + '">' + _ + "</span>"), 
                    23 == U && T.push("</fieldset>")) : (_ = U + ":00", T.push('<span class="hour' + $ + '">' + _ + "</span>"))
                }
                this.picker.find(".datetimepicker-hours td").html(T.join("")), T = [], _ = "", S = "", 
                x = "";
                for (var U = 0; U < 60; U += this.minuteStep)
                {
                    var M = t(a, o, r, l, U, 0);
                    $ = "", M.valueOf() < this.startDate || M.valueOf() > this.endDate ? $ += " disabled" : Math.floor(d / this.minuteStep) == Math.floor(U / this.minuteStep) && ($ += " active"), 
                    this.showMeridian && 2 == n[this.language].meridiem.length ? (S = l < 12 ? n[this.language].meridiem[0] : n[this.language].meridiem[1], 
                    S != x && ("" != x && T.push("</fieldset>"), T.push('<fieldset class="minute"><legend>' + S.toUpperCase() + "</legend>")), 
                    x = S, _ = l % 12 ? l % 12 : 12, T.push('<span class="minute' + $ + '">' + _ + ":" + (U < 10 ? "0" + U : U) + "</span>"), 
                    59 == U && T.push("</fieldset>")) : (_ = U + ":00", T.push('<span class="minute' + $ + '">' + l + ":" + (U < 10 ? "0" + U : U) + "</span>"))
                }
                this.picker.find(".datetimepicker-minutes td").html(T.join(""));
                var E = this.date.getUTCFullYear(), I = this.picker.find(".datetimepicker-months").find("th:eq(1)").text(a).end().find("span").removeClass("active");
                E == a && I.eq(this.date.getUTCMonth()).addClass("active"), (a < c || a > u) && I.addClass("disabled"), 
                a == c && I.slice(0, h).addClass("disabled"), a == u && I.slice(p + 1).addClass("disabled"), 
                T = "", a = 10 * parseInt(a / 10, 10);
                var j = this.picker.find(".datetimepicker-years").find("th:eq(1)").text(a + "-" + (a + 9)).end().find("td");
                a -= 1;
                for (var U =- 1; U < 11; U++)
                {
                    T += '<span class="year' + (U ==- 1 || 10 == U ? " old" : "") + (E == a ? " active" : "") + (a < c || a > u ? " disabled" : "") + '">' + a + "</span>", 
                    a += 1;
                }
                j.html(T), this.place()
            }
        },
        updateNavArrows : function ()
        {
            var e = new Date(this.viewDate), t = e.getUTCFullYear(), i = e.getUTCMonth(), n = e.getUTCDate(), 
            s = e.getUTCHours();
            switch (this.viewMode)
            {
                case 0:
                    this.startDate !==- (1 / 0) && t <= this.startDate.getUTCFullYear() && i <= this.startDate.getUTCMonth() && n <= this.startDate.getUTCDate() && s <= this.startDate.getUTCHours() ? this.picker.find(".prev").css({
                        visibility : "hidden"
                    }) : this.picker.find(".prev").css({
                        visibility : "visible"
                    }), this.endDate !== 1 / 0 && t >= this.endDate.getUTCFullYear() && i >= this.endDate.getUTCMonth() && n >= this.endDate.getUTCDate() && s >= this.endDate.getUTCHours() ? this.picker.find(".next").css({
                        visibility : "hidden"
                    }) : this.picker.find(".next").css({
                        visibility : "visible"
                    });
                    break;
                case 1:
                    this.startDate !==- (1 / 0) && t <= this.startDate.getUTCFullYear() && i <= this.startDate.getUTCMonth() && n <= this.startDate.getUTCDate() ? this.picker.find(".prev").css({
                        visibility : "hidden"
                    }) : this.picker.find(".prev").css({
                        visibility : "visible"
                    }), this.endDate !== 1 / 0 && t >= this.endDate.getUTCFullYear() && i >= this.endDate.getUTCMonth() && n >= this.endDate.getUTCDate() ? this.picker.find(".next").css({
                        visibility : "hidden"
                    }) : this.picker.find(".next").css({
                        visibility : "visible"
                    });
                    break;
                case 2:
                    this.startDate !==- (1 / 0) && t <= this.startDate.getUTCFullYear() && i <= this.startDate.getUTCMonth() ? this.picker.find(".prev").css({
                        visibility : "hidden"
                    }) : this.picker.find(".prev").css({
                        visibility : "visible"
                    }), this.endDate !== 1 / 0 && t >= this.endDate.getUTCFullYear() && i >= this.endDate.getUTCMonth() ? this.picker.find(".next").css({
                        visibility : "hidden"
                    }) : this.picker.find(".next").css({
                        visibility : "visible"
                    });
                    break;
                case 3:
                case 4:
                    this.startDate !==- (1 / 0) && t <= this.startDate.getUTCFullYear() ? this.picker.find(".prev").css({
                        visibility : "hidden"
                    }) : this.picker.find(".prev").css({
                        visibility : "visible"
                    }), this.endDate !== 1 / 0 && t >= this.endDate.getUTCFullYear() ? this.picker.find(".next").css({
                        visibility : "hidden"
                    }) : this.picker.find(".next").css({
                        visibility : "visible"
                    })
            }
        },
        mousewheel : function (t)
        {
            if (t.preventDefault(), t.stopPropagation(), !this.wheelPause)
            {
                this.wheelPause = !0;
                var i = t.originalEvent, n = i.wheelDelta, s = n > 0 ? 1 : 0 === n ? 0 :- 1;
                this.wheelViewModeNavigationInverseDirection && (s =- s), this.showMode(s), setTimeout(e.proxy(function ()
                {
                    this.wheelPause = !1
                }, this), this.wheelViewModeNavigationDelay)
            }
        },
        click : function (i)
        {
            i.stopPropagation(), i.preventDefault();
            var n = e(i.target).closest("span, td, th, legend");
            if (n.is(".glyphicon") && (n = e(n).parent().closest("span, td, th, legend")), 1 == n.length)
            {
                if (n.is(".disabled"))
                {
                    return void this.element.trigger( 
                    {
                        type : "outOfRange", date : this.viewDate, startDate : this.startDate, endDate : this.endDate 
                    });
                }
                switch (n[0].nodeName.toLowerCase())
                {
                    case "th":
                        switch (n[0].className)
                        {
                            case "switch":
                                this.showMode(1);
                                break;
                            case "prev":
                            case "next":
                                var a = s.modes[this.viewMode].navStep * ("prev" == n[0].className ?- 1 : 1);
                                switch (this.viewMode)
                                {
                                    case 0:
                                        this.viewDate = this.moveHour(this.viewDate, a);
                                        break;
                                    case 1:
                                        this.viewDate = this.moveDate(this.viewDate, a);
                                        break;
                                    case 2:
                                        this.viewDate = this.moveMonth(this.viewDate, a);
                                        break;
                                    case 3:
                                    case 4:
                                        this.viewDate = this.moveYear(this.viewDate, a)
                                }
                                this.fill(), this.element.trigger(
                                {
                                    type : n[0].className + ":" + this.convertViewModeText(this.viewMode), date : this.viewDate, 
                                    startDate : this.startDate, endDate : this.endDate
                                });
                                break;
                            case "today":
                                var o = new Date;
                                o = t(o.getFullYear(), o.getMonth(), o.getDate(), o.getHours(), o.getMinutes(), 
                                o.getSeconds(), 0), o < this.startDate ? o = this.startDate : o > this.endDate && (o = this.endDate), 
                                this.viewMode = this.startViewMode, this.showMode(0), this._setDate(o), this.fill(), 
                                this.autoclose && this.hide()
                        }
                        break;
                    case "span":
                        if (!n.is(".disabled"))
                        {
                            var r = this.viewDate.getUTCFullYear(), l = this.viewDate.getUTCMonth(), d = this.viewDate.getUTCDate(), 
                            c = this.viewDate.getUTCHours(), h = this.viewDate.getUTCMinutes(), u = this.viewDate.getUTCSeconds();
                            if (n.is(".month") ? (this.viewDate.setUTCDate(1), l = n.parent().find("span").index(n), 
                            d = this.viewDate.getUTCDate(), this.viewDate.setUTCMonth(l), this.element.trigger({
                                type : "changeMonth", date : this.viewDate
                            }), this.viewSelect >= 3 && this._setDate(t(r, l, d, c, h, u, 0))) : n.is(".year") ? (this.viewDate.setUTCDate(1), 
                            r = parseInt(n.text(), 10) || 0, this.viewDate.setUTCFullYear(r), this.element.trigger({
                                type : "changeYear", date : this.viewDate
                            }), this.viewSelect >= 4 && this._setDate(t(r, l, d, c, h, u, 0))) : n.is(".hour") ? (c = parseInt(n.text(), 
                            10) || 0, (n.hasClass("hour_am") || n.hasClass("hour_pm")) && (12 == c && n.hasClass("hour_am") ? c = 0 : 12 != c && n.hasClass("hour_pm") && (c += 12)), 
                            this.viewDate.setUTCHours(c), this.element.trigger({
                                type : "changeHour", date : this.viewDate
                            }), this.viewSelect >= 1 && this._setDate(t(r, l, d, c, h, u, 0))) : n.is(".minute") && (h = parseInt(n.text().substr(n.text().indexOf(":") + 1), 
                            10) || 0, this.viewDate.setUTCMinutes(h), this.element.trigger({
                                type : "changeMinute", date : this.viewDate
                            }), this.viewSelect >= 0 && this._setDate(t(r, l, d, c, h, u, 0))), 0 != this.viewMode)
                            {
                                var p = this.viewMode;
                                this.showMode(-1), this.fill(), p == this.viewMode && this.autoclose && this.hide()
                            }
                            else {
                                this.fill(), this.autoclose && this.hide();
                            }
                        }
                        break;
                    case "td":
                        if (n.is(".day") && !n.is(".disabled"))
                        {
                            var d = parseInt(n.text(), 10) || 1, r = this.viewDate.getUTCFullYear(), l = this.viewDate.getUTCMonth(), 
                            c = this.viewDate.getUTCHours(), h = this.viewDate.getUTCMinutes(), u = this.viewDate.getUTCSeconds();
                            n.is(".old") ? 0 === l ? (l = 11, r -= 1) : l -= 1 : n.is(".new") && (11 == l ? (l = 0, 
                            r += 1) : l += 1), this.viewDate.setUTCFullYear(r), this.viewDate.setUTCMonth(l, 
                            d), this.element.trigger({
                                type : "changeDay", date : this.viewDate
                            }), this.viewSelect >= 2 && this._setDate(t(r, l, d, c, h, u, 0))
                        }
                        var p = this.viewMode;
                        this.showMode(-1), this.fill(), p == this.viewMode && this.autoclose && this.hide()
                }
            }
        },
        _setDate : function (e, t)
        {
            t && "date" != t || (this.date = e), t && "view" != t || (this.viewDate = e), this.fill(), 
            this.setValue();
            var i;
            this.isInput ? i = this.element : this.component && (i = this.element.find("input")), i && (i.change(), 
            this.autoclose), this.element.trigger({
                type : "changeDate", date : this.date
            })
        },
        moveMinute : function (e, t)
        {
            if (!t) {
                return e;
            }
            var i = new Date(e.valueOf());
            return i.setUTCMinutes(i.getUTCMinutes() + t * this.minuteStep), i;
        },
        moveHour : function (e, t)
        {
            if (!t) {
                return e;
            }
            var i = new Date(e.valueOf());
            return i.setUTCHours(i.getUTCHours() + t), i;
        },
        moveDate : function (e, t)
        {
            if (!t) {
                return e;
            }
            var i = new Date(e.valueOf());
            return i.setUTCDate(i.getUTCDate() + t), i;
        },
        moveMonth : function (e, t)
        {
            if (!t) {
                return e;
            }
            var i, n, s = new Date(e.valueOf()), a = s.getUTCDate(), o = s.getUTCMonth(), r = Math.abs(t);
            if (t = t > 0 ? 1 :- 1, 1 == r)
            {
                n = t ==- 1 ? function () 
                {
                    return s.getUTCMonth() == o 
                }
                 : function () 
                {
                    return s.getUTCMonth() != i;
                },
                i = o + t, s.setUTCMonth(i), (i < 0 || i > 11) && (i = (i + 12) % 12);
            }
            else
            {
                for (var l = 0; l < r; l++) {
                    s = this.moveMonth(s, t);
                }
                i = s.getUTCMonth(), s.setUTCDate(a), n = function ()
                {
                    return i != s.getUTCMonth();
                }
            }
            for (; n(); ) {
                s.setUTCDate(--a), s.setUTCMonth(i);
            }
            return s;
        },
        moveYear : function (e, t)
        {
            return this.moveMonth(e, 12 * t);
        },
        dateWithinRange : function (e)
        {
            return e >= this.startDate && e <= this.endDate;
        },
        keydown : function (e)
        {
            if (this.picker.is(":not(:visible)")) {
                return void (27 == e.keyCode && this.show());
            }
            var t, i, n, s = !1;
            switch (e.keyCode)
            {
                case 27:
                    this.hide(), e.preventDefault();
                    break;
                case 37:
                case 39:
                    if (!this.keyboardNavigation) {
                        break;
                    }
                    t = 37 == e.keyCode ?- 1 : 1, viewMode = this.viewMode, e.ctrlKey ? viewMode += 2 : e.shiftKey && (viewMode += 1), 
                    4 == viewMode ? (i = this.moveYear(this.date, t), n = this.moveYear(this.viewDate, t)) : 3 == viewMode ? (i = this.moveMonth(this.date, 
                    t), n = this.moveMonth(this.viewDate, t)) : 2 == viewMode ? (i = this.moveDate(this.date, 
                    t), n = this.moveDate(this.viewDate, t)) : 1 == viewMode ? (i = this.moveHour(this.date, 
                    t), n = this.moveHour(this.viewDate, t)) : 0 == viewMode && (i = this.moveMinute(this.date, 
                    t), n = this.moveMinute(this.viewDate, t)), this.dateWithinRange(i) && (this.date = i, 
                    this.viewDate = n, this.setValue(), this.update(), e.preventDefault(), s = !0);
                    break;
                case 38:
                case 40:
                    if (!this.keyboardNavigation) {
                        break;
                    }
                    t = 38 == e.keyCode ?- 1 : 1, viewMode = this.viewMode, e.ctrlKey ? viewMode += 2 : e.shiftKey && (viewMode += 1), 
                    4 == viewMode ? (i = this.moveYear(this.date, t), n = this.moveYear(this.viewDate, t)) : 3 == viewMode ? (i = this.moveMonth(this.date, 
                    t), n = this.moveMonth(this.viewDate, t)) : 2 == viewMode ? (i = this.moveDate(this.date, 
                    7 * t), n = this.moveDate(this.viewDate, 7 * t)) : 1 == viewMode ? this.showMeridian ? (i = this.moveHour(this.date, 
                    6 * t), n = this.moveHour(this.viewDate, 6 * t)) : (i = this.moveHour(this.date, 4 * t), 
                    n = this.moveHour(this.viewDate, 4 * t)) : 0 == viewMode && (i = this.moveMinute(this.date, 
                    4 * t), n = this.moveMinute(this.viewDate, 4 * t)), this.dateWithinRange(i) && (this.date = i, 
                    this.viewDate = n, this.setValue(), this.update(), e.preventDefault(), s = !0);
                    break;
                case 13:
                    if (0 != this.viewMode)
                    {
                        var a = this.viewMode;
                        this.showMode(-1), this.fill(), a == this.viewMode && this.autoclose && this.hide()
                    }
                    else {
                        this.fill(), this.autoclose && this.hide();
                    }
                    e.preventDefault();
                    break;
                case 9:
                    this.hide()
            }
            if (s)
            {
                var o;
                this.isInput ? o = this.element : this.component && (o = this.element.find("input")), 
                o && o.change(), this.element.trigger({
                    type : "changeDate", date : this.date
                })
            }
        },
        showMode : function (e)
        {
            if (e)
            {
                var t = Math.max(0, Math.min(s.modes.length - 1, this.viewMode + e));
                t >= this.minView && t <= this.maxView && (this.element.trigger({
                    type : "changeMode", date : this.viewDate, oldViewMode : this.viewMode, newViewMode : t
                }), this.viewMode = t)
            }
            this.picker.find(">div").hide().filter(".datetimepicker-" + s.modes[this.viewMode].clsName).css("display", 
            "block"), this.updateNavArrows();
        },
        reset : function (e)
        {
            this._setDate(null, "date")
        },
        convertViewModeText : function (e)
        {
            switch (e)
            {
                case 4:
                    return "decade";
                case 3:
                    return "year";
                case 2:
                    return "month";
                case 1:
                    return "day";
                case 0:
                    return "hour";
            }
        }
    },
    e.fn.datetimepicker = function (t)
    {
        var n = Array.apply(null, arguments);
        n.shift();
        var s;
        return this.each(function ()
        {
            var a = e(this), o = a.data("datetimepicker"), r = "object" == typeof t && t;
            if (o || a.data("datetimepicker", o = new i(this, e.extend({}, e.fn.datetimepicker.defaults, 
            r))), "string" == typeof t && "function" == typeof o[t] && void 0 !== (s = o[t].apply(o, n))) return!1;
        }), void 0 !== s ? s : this
    },
    e.fn.datetimepicker.defaults = {}, e.fn.datetimepicker.Constructor = i;
    var n = e.fn.datetimepicker.dates = 
    {
        en : 
        {
            days : ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"], daysShort : ["周日", "周一", 
            "周二", "周三", "周四", "周五", "周六", "周日"], daysMin : ["日", "一", "二", "三", "四", "五", "六", "日"], months : ["一月", 
            "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"], monthsShort : ["一月", 
            "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"], today : "至今", suffix : [], 
            meridiem : ["上午", "下午"]
        }
    },
    s = 
    {
        modes : [ {
            clsName : "minutes", navFnc : "Hours", navStep : 1
        },
        {
            clsName : "hours", navFnc : "Date", navStep : 1
        },
        {
            clsName : "days", navFnc : "Month", navStep : 1
        },
        {
            clsName : "months", navFnc : "FullYear", navStep : 1
        },
        {
            clsName : "years", navFnc : "FullYear", navStep : 10
        }],
        isLeapYear : function (e)
        {
            return e % 4 == 0 && e % 100 != 0 || e % 400 == 0;
        },
        getDaysInMonth : function (e, t)
        {
            return [31, s.isLeapYear(e) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][t];
        },
        getDefaultFormat : function (e, t)
        {
            if ("standard" == e) {
                return "input" == t ? "yyyy-mm-dd hh:ii" : "yyyy-mm-dd hh:ii:ss";
            }
            if ("php" == e) {
                return "input" == t ? "Y-m-d H:i" : "Y-m-d H:i:s";
            }
            throw new Error("Invalid format type.")
        },
        validParts : function (e)
        {
            if ("standard" == e)
            {
                return  / hh ?| HH ?| p | P | ii ?| ss ?| dd ?| DD ?| mm ?| MM ?| yy(?: yy) ?/g;if("php"==e)return/[dDjlNwzFmMnStyYaABgGhHis]  / g;
            }
            throw new Error("Invalid format type.")
        },
        nonpunctuation : /[^ -\/:-@\[-`{-~\t\n\rTZ]+/g,
        parseFormat : function (e, t)
        {
            var i = e.replace(this.validParts(t), "\0").split("\0"), n = e.match(this.validParts(t));
            if (!i || !i.length || !n || 0 == n.length) {
                throw new Error("Invalid date format.");
            }
            return {
                separators : i, parts : n
            }
        },
        parseDate : function (s, a, o, r)
        {
            if (s instanceof Date) {
                var l = new Date(s.valueOf() - 6e4 * s.getTimezoneOffset());
                return l.setMilliseconds(0), l
            }
            if (/^\d{4}\-\d{1,2}\-\d{1,2}$/.test(s) && (a = this.parseFormat("yyyy-mm-dd", r)), /^\d{4}\-\d{1,2}\-\d{1,2}[T ]\d{1,2}\:\d{1,2}$/.test(s) && (a = this.parseFormat("yyyy-mm-dd hh:ii", 
            r)), /^\d{4}\-\d{1,2}\-\d{1,2}[T ]\d{1,2}\:\d{1,2}\:\d{1,2}[Z]{0,1}$/.test(s) && (a = this.parseFormat("yyyy-mm-dd hh:ii:ss", 
            r)), /^[-+]\d+[dmwy]([\s,]+[-+]\d+[dmwy])*$/.test(s))
            {
                var d, c, h = /([-+]\d+)([dmwy])/, u = s.match(/([-+]\d+)([dmwy])/g);
                s = new Date;
                for (var p = 0; p < u.length; p++)
                {
                    switch (d = h.exec(u[p]), c = parseInt(d[1]), d[2]) 
                    {
                        case "d":
                            s.setUTCDate(s.getUTCDate() + c);
                            break;
                        case "m":
                            s = i.prototype.moveMonth.call(i.prototype, s, c);
                            break;
                        case "w":
                            s.setUTCDate(s.getUTCDate() + 7 * c);
                            break;
                        case "y":
                            s = i.prototype.moveYear.call(i.prototype, s, c) ;
                    }
                }
                return t(s.getUTCFullYear(), s.getUTCMonth(), s.getUTCDate(), s.getUTCHours(), s.getUTCMinutes(), 
                s.getUTCSeconds(), 0)
            }
            var f, m, d, u = s && s.match(this.nonpunctuation) || [], s = new Date(0, 0, 0, 0, 0, 0, 0), 
            v = {}, g = ["hh", "h", "ii", "i", "ss", "s", "yyyy", "yy", "M", "MM", "m", "mm", "D", "DD", 
            "d", "dd", "H", "HH", "p", "P"], w = 
            {
                hh : function (e, t)
                {
                    return e.setUTCHours(t);
                },
                h : function (e, t)
                {
                    return e.setUTCHours(t);
                },
                HH : function (e, t)
                {
                    return e.setUTCHours(12 == t ? 0 : t);
                },
                H : function (e, t)
                {
                    return e.setUTCHours(12 == t ? 0 : t);
                },
                ii : function (e, t)
                {
                    return e.setUTCMinutes(t);
                },
                i : function (e, t)
                {
                    return e.setUTCMinutes(t);
                },
                ss : function (e, t)
                {
                    return e.setUTCSeconds(t);
                },
                s : function (e, t)
                {
                    return e.setUTCSeconds(t);
                },
                yyyy : function (e, t)
                {
                    return e.setUTCFullYear(t);
                },
                yy : function (e, t)
                {
                    return e.setUTCFullYear(2e3 + t);
                },
                m : function (e, t)
                {
                    for (t -= 1; t < 0; ) {
                        t += 12;
                    }
                    for (t %= 12, e.setUTCMonth(t); e.getUTCMonth() != t; ) {
                        if (isNaN(e.getUTCMonth())) {
                            return e;
                        }
                        e.setUTCDate(e.getUTCDate() - 1)
                    }
                    return e;
                },
                d : function (e, t)
                {
                    return e.setUTCDate(t);
                },
                p : function (e, t)
                {
                    return e.setUTCHours(1 == t ? e.getUTCHours() + 12 : e.getUTCHours());
                }
            };
            if (w.M = w.MM = w.mm = w.m, w.dd = w.d, w.P = w.p, s = t(s.getFullYear(), s.getMonth(), s.getDate(), 
            s.getHours(), s.getMinutes(), s.getSeconds()), u.length == a.parts.length)
            {
                for (var p = 0, b = a.parts.length; p < b; p++)
                {
                    if (f = parseInt(u[p], 10), d = a.parts[p], isNaN(f))
                    {
                        switch (d) 
                        {
                            case "MM":
                                m = e(n[o].months).filter(function () 
                                {
                                    var e = this.slice(0, u[p].length);
                                    return e == u[p].slice(0, e.length);
                                }), f = e.inArray(m[0], n[o].months) + 1;
                                break;
                            case "M":
                                m = e(n[o].monthsShort).filter(function () 
                                {
                                    var e = this.slice(0, u[p].length), t = u[p].slice(0, e.length);
                                    return e.toLowerCase() == t.toLowerCase();
                                }), f = e.inArray(m[0], n[o].monthsShort) + 1;
                                break;
                            case "p":
                            case "P":
                                f = e.inArray(u[p].toLowerCase(), n[o].meridiem) ;
                        }
                    }
                    v[d] = f
                }
                for (var y, p = 0; p < g.length; p++) {
                    (y = g[p]) in v && !isNaN(v[y]) && w[y](s, v[y]);
                }
            }
            return s;
        },
        formatDate : function (t, i, a, o)
        {
            if (null == t) {
                return "";
            }
            var r;
            if ("standard" == o)
            {
                r = 
                {
                    yy : t.getUTCFullYear().toString().substring(2), yyyy : t.getUTCFullYear(), m : t.getUTCMonth() + 1, 
                    M : n[a].monthsShort[t.getUTCMonth()], MM : n[a].months[t.getUTCMonth()], d : t.getUTCDate(), 
                    D : n[a].daysShort[t.getUTCDay()], DD : n[a].days[t.getUTCDay()], p : 2 == n[a].meridiem.length ? n[a].meridiem[t.getUTCHours() < 12 ? 0 : 1] : "", 
                    h : t.getUTCHours(), i : t.getUTCMinutes(), s : t.getUTCSeconds() 
                },
                2 == n[a].meridiem.length ? r.H = r.h % 12 == 0 ? 12 : r.h % 12 : r.H = r.h, r.HH = (r.H < 10 ? "0" : "") + r.H, 
                r.P = r.p.toUpperCase(), r.hh = (r.h < 10 ? "0" : "") + r.h, r.ii = (r.i < 10 ? "0" : "") + r.i, 
                r.ss = (r.s < 10 ? "0" : "") + r.s, r.dd = (r.d < 10 ? "0" : "") + r.d, r.mm = (r.m < 10 ? "0" : "") + r.m;
            }
            else
            {
                if ("php" != o) {
                    throw new Error("Invalid format type.");
                }
                r = 
                {
                    y : t.getUTCFullYear().toString().substring(2), Y : t.getUTCFullYear(), F : n[a].months[t.getUTCMonth()], 
                    M : n[a].monthsShort[t.getUTCMonth()], n : t.getUTCMonth() + 1, t : s.getDaysInMonth(t.getUTCFullYear(), 
                    t.getUTCMonth()), j : t.getUTCDate(), l : n[a].days[t.getUTCDay()], D : n[a].daysShort[t.getUTCDay()], 
                    w : t.getUTCDay(), N : 0 == t.getUTCDay() ? 7 : t.getUTCDay(), S : t.getUTCDate() % 10 <= n[a].suffix.length ? n[a].suffix[t.getUTCDate() % 10 - 1] : "", 
                    a : 2 == n[a].meridiem.length ? n[a].meridiem[t.getUTCHours() < 12 ? 0 : 1] : "", 
                    g : t.getUTCHours() % 12 == 0 ? 12 : t.getUTCHours() % 12, G : t.getUTCHours(), i : t.getUTCMinutes(), 
                    s : t.getUTCSeconds()
                },
                r.m = (r.n < 10 ? "0" : "") + r.n, r.d = (r.j < 10 ? "0" : "") + r.j, r.A = r.a.toString().toUpperCase(), 
                r.h = (r.g < 10 ? "0" : "") + r.g, r.H = (r.G < 10 ? "0" : "") + r.G, r.i = (r.i < 10 ? "0" : "") + r.i, 
                r.s = (r.s < 10 ? "0" : "") + r.s
            }
            for (var t = [], l = e.extend([], i.separators), d = 0, c = i.parts.length; d < c; d++) {
                l.length && t.push(l.shift()), t.push(r[i.parts[d]]);
            }
            return l.length && t.push(l.shift()), t.join("");
        },
        convertViewMode : function (e)
        {
            switch (e)
            {
                case 4:
                case "decade":
                    e = 4;
                    break;
                case 3:
                case "year":
                    e = 3;
                    break;
                case 2:
                case "month":
                    e = 2;
                    break;
                case 1:
                case "day":
                    e = 1;
                    break;
                case 0:
                case "hour":
                    e = 0
            }
            return e;
        },
        headTemplate : '<thead><tr><th class="prev"><i class="fz fz-arrow-left"></i></th><th colspan="5" class="switch"></th><th class="next"><i class="fz fz-arrow-right"></i></th></tr></thead>', 
        headTemplateV3 : '<thead><tr><th class="prev"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch"></th><th class="next"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead>', 
        contTemplate : '<tbody><tr><td colspan="7"></td></tr></tbody>', footTemplate : '<tfoot class="tfoot"><tr><th colspan="7" class="today"></th></tr></tfoot>'
    };
    s.template = '<div class="datetimepicker"><div class="datetimepicker-minutes"><table class="table-condensed">' + s.headTemplate + s.contTemplate + s.footTemplate + '</table></div><div class="datetimepicker-hours"><table class="table-condensed">' + s.headTemplate + s.contTemplate + s.footTemplate + '</table></div><div class="datetimepicker-days"><table class="table-condensed">' + s.headTemplate + "<tbody></tbody>" + s.footTemplate + '</table></div><div class="datetimepicker-months"><table class="table-condensed">' + s.headTemplate + s.contTemplate + s.footTemplate + '</table></div><div class="datetimepicker-years"><table class="table-condensed">' + s.headTemplate + s.contTemplate + s.footTemplate + "</table></div></div>", 
    s.templateV3 = '<div class="datetimepicker"><div class="datetimepicker-minutes"><table class=" table-condensed">' + s.headTemplateV3 + s.contTemplate + s.footTemplate + '</table></div><div class="datetimepicker-hours"><table class=" table-condensed">' + s.headTemplateV3 + s.contTemplate + s.footTemplate + '</table></div><div class="datetimepicker-days"><table class=" table-condensed">' + s.headTemplateV3 + "<tbody></tbody>" + s.footTemplate + '</table></div><div class="datetimepicker-months"><table class="table-condensed">' + s.headTemplateV3 + s.contTemplate + s.footTemplate + '</table></div><div class="datetimepicker-years"><table class="table-condensed">' + s.headTemplateV3 + s.contTemplate + s.footTemplate + "</table></div></div>", 
    e.fn.datetimepicker.DPGlobal = s, e.fn.datetimepicker.noConflict = function ()
    {
        return e.fn.datetimepicker = old, this;
    },
    e(document).on("focus.datetimepicker.data-api click.datetimepicker.data-api", '[data-provide="datetimepicker"]', 
    function (t)
    {
        var i = e(this);
        i.data("datetimepicker") || (t.preventDefault(), i.datetimepicker("show"))
    }), e(function ()
    {
        e('[data-provide="datetimepicker-inline"]').datetimepicker()
    })
}
(window.jQuery), function (e)
{
    var t = 0, i = Array.prototype.slice;
    e.cleanData = function (t)
    {
        return function (i)
        {
            var n, s, a;
            for (a = 0; null != (s = i[a]); a++) {
                try {
                    (n = e._data(s, "events")) && n.remove && e(s).triggerHandler("remove") 
                }
                catch (e) {}
            }
            t(i)
        }
    }
    (e.cleanData), e.widget = function (t, i, n)
    {
        var s, a, o, r, l = {}, d = t.split(".")[0];
        return t = t.split(".")[1], s = d + "-" + t, n || (n = i, i = e.Widget), e.expr[":"][s.toLowerCase()] = function (t)
        {
            return!!e.data(t, s)
        },
        e[d] = e[d] || {}, a = e[d][t], o = e[d][t] = function (e, t)
        {
            return this._createWidget ? void (arguments.length && this._createWidget(e, t)) : new o(e, 
            t)
        },
        e.extend(o, a, {
            version : n.version, _proto : e.extend({}, n), _childConstructors : []
        }), r = new i, r.options = e.widget.extend({}, r.options), e.each(n, function (t, n)
        {
            return e.isFunction(n) ? void (l[t] = function ()
            {
                var e = function ()
                {
                    return i.prototype[t].apply(this, arguments);
                },
                s = function (e)
                {
                    return i.prototype[t].apply(this, e);
                };
                return function ()
                {
                    var t, i = this._super, a = this._superApply;
                    return this._super = e, this._superApply = s, t = n.apply(this, arguments), this._super = i, 
                    this._superApply = a, t;
                }
            }
            ()) : void (l[t] = n);
        }), o.prototype = e.widget.extend(r, {
            widgetEventPrefix : a ? r.widgetEventPrefix || t : t
        },
        l, {
            constructor : o, namespace : d, widgetName : t, widgetFullName : s
        }), a ? (e.each(a._childConstructors, function (t, i)
        {
            var n = i.prototype;
            e.widget(n.namespace + "." + n.widgetName, o, i._proto)
        }), delete a._childConstructors) : i._childConstructors.push(o), e.widget.bridge(t, o), o
    },
    e.widget.extend = function (t)
    {
        for (var n, s, a = i.call(arguments, 1), o = 0, r = a.length; r > o; o++)
        {
            for (n in a[o])
            {
                s = a[o][n], a[o].hasOwnProperty(n) && void 0 !== s && (t[n] = e.isPlainObject(s) ? e.isPlainObject(t[n]) ? e.widget.extend({},
                t[n], s) : e.widget.extend({}, s) : s);
            }
        }
        return t;
    },
    e.widget.bridge = function (t, n)
    {
        var s = n.prototype.widgetFullName || t;
        e.fn[t] = function (a)
        {
            var o = "string" == typeof a, r = i.call(arguments, 1), l = this;
            return o ? this.each(function ()
            {
                var i, n = e.data(this, s);
                return "instance" === a ? (l = n, !1) : n ? e.isFunction(n[a]) && "_" !== a.charAt(0) ? (i = n[a].apply(n, 
                r), i !== n && void 0 !== i ? (l = i && i.jquery ? l.pushStack(i.get()) : i, !1) : void 0) : e.error("no such method '" + a + "' for " + t + " widget instance") : e.error("cannot call methods on " + t + " prior to initialization; attempted to call method '" + a + "'");
            }) : (r.length && (a = e.widget.extend.apply(null, [a].concat(r))), this.each(function ()
            {
                var t = e.data(this, s);
                t ? (t.option(a || {}), t._init && t._init()) : e.data(this, s, new n(a, this))
            })), l
        }
    },
    e.Widget = function () {}, e.Widget._childConstructors = [], e.Widget.prototype = 
    {
        widgetName : "widget", widgetEventPrefix : "", defaultElement : "<div>", options : {
            disabled :!1, create : null
        },
        _createWidget : function (i, n)
        {
            n = e(n || this.defaultElement || this)[0], this.element = e(n), this.uuid = t++, this.eventNamespace = "." + this.widgetName + this.uuid, 
            this.bindings = e(), this.hoverable = e(), this.focusable = e(), n !== this && (e.data(n, 
            this.widgetFullName, this), this._on(!0, this.element, {
                remove : function (e)
                {
                    e.target === n && this.destroy()
                }
            }), this.document = e(n.style ? n.ownerDocument : n.document || n), this.window = e(this.document[0].defaultView || this.document[0].parentWindow)), 
            this.options = e.widget.extend({}, this.options, this._getCreateOptions(), i), this._create(), 
            this._trigger("create", null, this._getCreateEventData()), this._init()
        },
        _getCreateOptions : e.noop, _getCreateEventData : e.noop, _create : e.noop, _init : e.noop,
        destroy : function ()
        {
            this._destroy(), this.element.unbind(this.eventNamespace).removeData(this.widgetFullName).removeData(e.camelCase(this.widgetFullName)), 
            this.widget().unbind(this.eventNamespace).removeAttr("aria-disabled").removeClass(this.widgetFullName + "-disabled ui-state-disabled"), 
            this.bindings.unbind(this.eventNamespace), this.hoverable.removeClass("ui-state-hover"), this.focusable.removeClass("ui-state-focus")
        },
        _destroy : e.noop,
        widget : function ()
        {
            return this.element;
        },
        option : function (t, i)
        {
            var n, s, a, o = t;
            if (0 === arguments.length) {
                return e.widget.extend({}, this.options);
            }
            if ("string" == typeof t)
            {
                if (o = {}, n = t.split("."), t = n.shift(), n.length) 
                {
                    for (s = o[t] = e.widget.extend({}, this.options[t]), a = 0; a < n.length - 1; a++) s[n[a]] = s[n[a]] || {},
                    s = s[n[a]];
                    if (t = n.pop(), 1 === arguments.length) {
                        return void 0 === s[t] ? null : s[t];
                    }
                    s[t] = i 
                }
                else 
                {
                    if (1 === arguments.length) {
                        return void 0 === this.options[t] ? null : this.options[t];
                    }
                    o[t] = i 
                }
                return this._setOptions(o), this;
            }
        },
        _setOptions : function (e)
        {
            var t;
            for (t in e) {
                this._setOption(t, e[t]);
            }
            return this;
        },
        _setOption : function (e, t)
        {
            return this.options[e] = t, "disabled" === e && (this.widget().toggleClass(this.widgetFullName + "-disabled", 
            !!t), t && (this.hoverable.removeClass("ui-state-hover"), this.focusable.removeClass("ui-state-focus"))), 
            this;
        },
        enable : function ()
        {
            return this._setOptions(
            {
                disabled :!1
            })
        },
        disable : function ()
        {
            return this._setOptions(
            {
                disabled :!0
            })
        },
        _on : function (t, i, n)
        {
            var s, a = this;
            "boolean" != typeof t && (n = i, i = t, t = !1), n ? (i = s = e(i), this.bindings = this.bindings.add(i)) : (n = i, 
            i = this.element, s = this.widget()), e.each(n, function (n, o)
            {
                function r()
                {
                    return t || a.options.disabled !== !0 && !e(this).hasClass("ui-state-disabled") ? ("string" == typeof o ? a[o] : o).apply(a, 
                    arguments) : void 0
                }
                "string" != typeof o && (r.guid = o.guid = o.guid || r.guid || e.guid++);
                var l = n.match(/^([\w:-]*)\s*(.*)$/), d = l[1] + a.eventNamespace, c = l[2];
                c ? s.delegate(c, d, r) : i.bind(d, r)
            })
        },
        _off : function (t, i)
        {
            i = (i || "").split(" ").join(this.eventNamespace + " ") + this.eventNamespace, t.unbind(i).undelegate(i), 
            this.bindings = e(this.bindings.not(t).get()), this.focusable = e(this.focusable.not(t).get()), 
            this.hoverable = e(this.hoverable.not(t).get());
        },
        _delay : function (e, t)
        {
            function i()
            {
                return ("string" == typeof e ? n[e] : e).apply(n, arguments)
            }
            var n = this;
            return setTimeout(i, t || 0);
        },
        _hoverable : function (t)
        {
            this.hoverable = this.hoverable.add(t), this._on(t, 
            {
                mouseenter : function (t)
                {
                    e(t.currentTarget).addClass("ui-state-hover")
                },
                mouseleave : function (t)
                {
                    e(t.currentTarget).removeClass("ui-state-hover")
                }
            })
        },
        _focusable : function (t)
        {
            this.focusable = this.focusable.add(t), this._on(t, 
            {
                focusin : function (t)
                {
                    e(t.currentTarget).addClass("ui-state-focus")
                },
                focusout : function (t)
                {
                    e(t.currentTarget).removeClass("ui-state-focus")
                }
            })
        },
        _trigger : function (t, i, n)
        {
            var s, a, o = this.options[t];
            if (n = n || {}, i = e.Event(i), i.type = (t === this.widgetEventPrefix ? t : this.widgetEventPrefix + t).toLowerCase(), 
            i.target = this.element[0], a = i.originalEvent) for (s in a) s in i || (i[s] = a[s]);
            return this.element.trigger(i, n), !(e.isFunction(o) && o.apply(this.element[0], [i].concat(n)) === !1 || i.isDefaultPrevented());
        }
    },
    e.each({
        show : "fadeIn", hide : "fadeOut"
    },
    function (t, i)
    {
        e.Widget.prototype["_" + t] = function (n, s, a)
        {
            "string" == typeof s && (s = {
                effect : s
            });
            var o, r = s ? s === !0 || "number" == typeof s ? i : s.effect || i : t;
            s = s || {}, "number" == typeof s && (s = {
                duration : s
            }), o = !e.isEmptyObject(s), s.complete = a, s.delay && n.delay(s.delay), o && e.effects && e.effects.effect[r] ? n[t](s) : r !== t && n[r] ? n[r](s.duration, 
            s.easing, a) : n.queue(function (i)
            {
                e(this)[t](), a && a.call(n[0]), i()
            })
        }
    }), e.widget
}
(jQuery), function (e)
{
    "use strict";
    var t = 0;
    e.ajaxTransport("iframe", function (i)
    {
        if (i.async)
        {
            var n, s, a, o = i.initialIframeSrc || "javascript:false;";
            return {
                send : function (r, l)
                {
                    n = e('<form style="display:none;"></form>'), n.attr("accept-charset", i.formAcceptCharset), 
                    a = /\?/.test(i.url) ? "&" : "?", "DELETE" === i.type ? (i.url = i.url + a + "_method=DELETE", 
                    i.type = "POST") : "PUT" === i.type ? (i.url = i.url + a + "_method=PUT", i.type = "POST") : "PATCH" === i.type && (i.url = i.url + a + "_method=PATCH", 
                    i.type = "POST"), t += 1, s = e('<iframe src="' + o + '" name="iframe-transport-' + t + '"></iframe>').bind("load", 
                    function ()
                    {
                        var t, a = e.isArray(i.paramName) ? i.paramName : [i.paramName];
                        s.unbind("load").bind("load", function ()
                        {
                            var t;
                            try {
                                if (t = s.contents(), !t.length || !t[0].firstChild) {
                                    throw new Error;
                                }
                            }
                            catch (e) {
                                t = void 0
                            }
                            l(200, "success", {
                                iframe : t
                            }), e('<iframe src="' + o + '"></iframe>').appendTo(n), window.setTimeout(function ()
                            {
                                n.remove()
                            }, 0)
                        }), n.prop("target", s.prop("name")).prop("action", i.url).prop("method", i.type), 
                        i.formData && e.each(i.formData, function (t, i)
                        {
                            e('<input type="hidden"/>').prop("name", i.name).val(i.value).appendTo(n)
                        }), i.fileInput && i.fileInput.length && "POST" === i.type && (t = i.fileInput.clone(), 
                        i.fileInput.after(function (e)
                        {
                            return t[e];
                        }), i.paramName && i.fileInput.each(function (t)
                        {
                            e(this).prop("name", a[t] || i.paramName)
                        }), n.append(i.fileInput).prop("enctype", "multipart/form-data").prop("encoding", 
                        "multipart/form-data"), i.fileInput.removeAttr("form")), n.submit(), t && t.length && i.fileInput.each(function (i, 
                        n)
                        {
                            var s = e(t[i]);
                            e(n).prop("name", s.prop("name")).attr("form", s.attr("form")), s.replaceWith(n)
                        })
                    }), n.append(s).appendTo(document.body)
                },
                abort : function ()
                {
                    s && s.unbind("load").prop("src", o), n && n.remove()
                }
            }
        }
    }), e.ajaxSetup(
    {
        converters : 
        {
            "iframe text" : function (t)
            {
                return t && e(t[0].body).text();
            },
            "iframe json" : function (t)
            {
                return t && e.parseJSON(e(t[0].body).text());
            },
            "iframe html" : function (t)
            {
                return t && e(t[0].body).html();
            },
            "iframe xml" : function (t)
            {
                var i = t && t[0];
                return i && e.isXMLDoc(i) ? i : e.parseXML(i.XMLDocument && i.XMLDocument.xml || e(i.body).html());
            },
            "iframe script" : function (t)
            {
                return t && e.globalEval(e(t[0].body).text());
            }
        }
    })
}
(jQuery), function (e)
{
    "use strict";
    function t(t)
    {
        var i = "dragover" === t;
        return function (n)
        {
            n.dataTransfer = n.originalEvent && n.originalEvent.dataTransfer;
            var s = n.dataTransfer;
            s &&- 1 !== e.inArray("Files", s.types) && this._trigger(t, e.Event(t, {
                delegatedEvent : n
            })) !== !1 && (n.preventDefault(), i && (s.dropEffect = "copy"));
        }
    }
    e.support.fileInput = !(new RegExp("(Android (1\\.[0156]|2\\.[01]))|(Windows Phone (OS 7|8\\.0))|(XBLWP)|(ZuneWP)|(WPDesktop)|(w(eb)?OSBrowser)|(webOS)|(Kindle/(1\\.0|2\\.[05]|3\\.0))").test(window.navigator.userAgent) || e('<input type="file">').prop("disabled")), 
    e.support.xhrFileUpload = !(!window.ProgressEvent || !window.FileReader), e.support.xhrFormDataFileUpload = !!window.FormData, 
    e.support.blobSlice = window.Blob && (Blob.prototype.slice || Blob.prototype.webkitSlice || Blob.prototype.mozSlice), 
    e.widget("blueimp.fileupload", 
    {
        options : 
        {
            dropZone : e(document), pasteZone : void 0, fileInput : void 0, replaceFileInput :!0, paramName : void 0, 
            singleFileUploads :!0, limitMultiFileUploads : void 0, limitMultiFileUploadSize : void 0, 
            limitMultiFileUploadSizeOverhead : 512, sequentialUploads :!1, limitConcurrentUploads : void 0, 
            forceIframeTransport :!1, redirect : void 0, redirectParamName : void 0, postMessage : void 0, 
            multipart :!0, maxChunkSize : void 0, uploadedBytes : void 0, recalculateProgress :!0, progressInterval : 100, 
            bitrateInterval : 500, autoUpload :!0, messages : {
                uploadedBytes : "Uploaded bytes exceed file size"
            },
            i18n : function (t, i)
            {
                return t = this.messages[t] || t.toString(), i && e.each(i, function (e, i)
                {
                    t = t.replace("{" + e + "}", i);
                }), t
            },
            formData : function (e)
            {
                return e.serializeArray();
            },
            add : function (t, i)
            {
                return!t.isDefaultPrevented() && void ((i.autoUpload || i.autoUpload !== !1 && e(this).fileupload("option", 
                "autoUpload")) && i.process().done(function ()
                {
                    i.submit()
                }))
            },
            processData :!1, contentType :!1, cache :!1, timeout : 0
        },
        _specialOptions : ["fileInput", "dropZone", "pasteZone", "multipart", "forceIframeTransport"], 
        _blobSlice : e.support.blobSlice && function ()
        {
            return (this.slice || this.webkitSlice || this.mozSlice).apply(this, arguments);
        },
        _BitrateTimer : function ()
        {
            this.timestamp = Date.now ? Date.now() : (new Date).getTime(), this.loaded = 0, this.bitrate = 0, 
            this.getBitrate = function (e, t, i)
            {
                var n = e - this.timestamp;
                return (!this.bitrate || !i || n > i) && (this.bitrate = 8 * (t - this.loaded) * (1e3 / n), 
                this.loaded = t, this.timestamp = e), this.bitrate;
            }
        },
        _isXHRUpload : function (t)
        {
            return!t.forceIframeTransport && (!t.multipart && e.support.xhrFileUpload || e.support.xhrFormDataFileUpload)
        },
        _getFormData : function (t)
        {
            var i;
            return "function" === e.type(t.formData) ? t.formData(t.form) : e.isArray(t.formData) ? t.formData : "object" === e.type(t.formData) ? (i = [], 
            e.each(t.formData, function (e, t)
            {
                i.push({
                    name : e, value : t
                })
            }), i) : []
        },
        _getTotal : function (t)
        {
            var i = 0;
            return e.each(t, function (e, t)
            {
                i += t.size || 1
            }), i
        },
        _initProgressObject : function (t)
        {
            var i = {
                loaded : 0, total : 0, bitrate : 0
            };
            t._progress ? e.extend(t._progress, i) : t._progress = i;
        },
        _initResponseObject : function (e)
        {
            var t;
            if (e._response) {
                for (t in e._response) {
                    e._response.hasOwnProperty(t) && delete e._response[t];
                }
            }
            else e._response = {}
        },
        _onProgress : function (t, i)
        {
            if (t.lengthComputable)
            {
                var n, s = Date.now ? Date.now() : (new Date).getTime();
                if (i._time && i.progressInterval && s - i._time < i.progressInterval && t.loaded !== t.total) {
                    return;
                }
                i._time = s, n = Math.floor(t.loaded / t.total * (i.chunkSize || i._progress.total)) + (i.uploadedBytes || 0), 
                this._progress.loaded += n - i._progress.loaded, this._progress.bitrate = this._bitrateTimer.getBitrate(s, 
                this._progress.loaded, i.bitrateInterval), i._progress.loaded = i.loaded = n, i._progress.bitrate = i.bitrate = i._bitrateTimer.getBitrate(s, 
                n, i.bitrateInterval), this._trigger("progress", e.Event("progress", {
                    delegatedEvent : t
                }), i), this._trigger("progressall", e.Event("progressall", {
                    delegatedEvent : t
                }), this._progress)
            }
        },
        _initProgressListener : function (t)
        {
            var i = this, n = t.xhr ? t.xhr() : e.ajaxSettings.xhr();
            n.upload && (e(n.upload).bind("progress", function (e)
            {
                var n = e.originalEvent;
                e.lengthComputable = n.lengthComputable, e.loaded = n.loaded, e.total = n.total, i._onProgress(e, 
                t);
            }), t.xhr = function ()
            {
                return n;
            })
        },
        _isInstanceOf : function (e, t)
        {
            return Object.prototype.toString.call(t) === "[object " + e + "]";
        },
        _initXHRData : function (t)
        {
            var i, n = this, s = t.files[0], a = t.multipart || !e.support.xhrFileUpload, o = "array" === e.type(t.paramName) ? t.paramName[0] : t.paramName;
            t.headers = e.extend({}, t.headers), t.contentRange && (t.headers["Content-Range"] = t.contentRange), 
            a && !t.blob && this._isInstanceOf("File", s) || (t.headers["Content-Disposition"] = 'attachment; filename="' + encodeURI(s.name) + '"'), 
            a ? e.support.xhrFormDataFileUpload && (t.postMessage ? (i = this._getFormData(t), t.blob ? i.push({
                name : o, value : t.blob
            }) : e.each(t.files, function (n, s)
            {
                i.push({
                    name : "array" === e.type(t.paramName) && t.paramName[n] || o, value : s
                })
            })) : (n._isInstanceOf("FormData", t.formData) ? i = t.formData : (i = new FormData, e.each(this._getFormData(t), 
            function (e, t)
            {
                i.append(t.name, t.value)
            })), t.blob ? i.append(o, t.blob, s.name) : e.each(t.files, function (s, a)
            {
                (n._isInstanceOf("File", a) || n._isInstanceOf("Blob", a)) && i.append("array" === e.type(t.paramName) && t.paramName[s] || o, 
                a, a.uploadName || a.name)
            })), t.data = i) : (t.contentType = s.type || "application/octet-stream", t.data = t.blob || s), 
            t.blob = null;
        },
        _initIframeSettings : function (t)
        {
            var i = e("<a></a>").prop("href", t.url).prop("host");
            t.dataType = "iframe " + (t.dataType || ""), t.formData = this._getFormData(t), t.redirect && i && i !== location.host && t.formData.push({
                name : t.redirectParamName || "redirect", value : t.redirect
            })
        },
        _initDataSettings : function (e)
        {
            this._isXHRUpload(e) ? (this._chunkedUpload(e, !0) || (e.data || this._initXHRData(e), this._initProgressListener(e)), 
            e.postMessage && (e.dataType = "postmessage " + (e.dataType || ""))) : this._initIframeSettings(e);
        },
        _getParamName : function (t)
        {
            var i = e(t.fileInput), n = t.paramName;
            return n ? e.isArray(n) || (n = [n]) : (n = [], i.each(function ()
            {
                for (var t = e(this), i = t.prop("name") || "files[]", s = (t.prop("files") || [1]).length; s; ) {
                    n.push(i), s -= 1;
                }
            }), n.length || (n = [i.prop("name") || "files[]"])), n;
        },
        _initFormSettings : function (t)
        {
            t.form && t.form.length || (t.form = e(t.fileInput.prop("form")), t.form.length || (t.form = e(this.options.fileInput.prop("form")))), 
            t.paramName = this._getParamName(t), t.url || (t.url = t.form.prop("action") || location.href), 
            t.type = (t.type || "string" === e.type(t.form.prop("method")) && t.form.prop("method") || "").toUpperCase(), 
            "POST" !== t.type && "PUT" !== t.type && "PATCH" !== t.type && (t.type = "POST"), t.formAcceptCharset || (t.formAcceptCharset = t.form.attr("accept-charset"));
        },
        _getAJAXSettings : function (t)
        {
            var i = e.extend({}, this.options, t);
            return this._initFormSettings(i), this._initDataSettings(i), i;
        },
        _getDeferredState : function (e)
        {
            return e.state ? e.state() : e.isResolved() ? "resolved" : e.isRejected() ? "rejected" : "pending";
        },
        _enhancePromise : function (e)
        {
            return e.success = e.done, e.error = e.fail, e.complete = e.always, e;
        },
        _getXHRPromise : function (t, i, n)
        {
            var s = e.Deferred(), a = s.promise();
            return i = i || this.options.context || a, t === !0 ? s.resolveWith(i, n) : t === !1 && s.rejectWith(i, 
            n), a.abort = s.promise, this._enhancePromise(a);
        },
        _addConvenienceMethods : function (t, i)
        {
            var n = this, s = function (t)
            {
                return e.Deferred().resolveWith(n, t).promise();
            };
            i.process = function (t, a)
            {
                return (t || a) && (i._processQueue = this._processQueue = (this._processQueue || s([this])).then(function () {
                    return i.errorThrown ? e.Deferred().rejectWith(n, [i]).promise() : s(arguments);
                }).then(t, a)), this._processQueue || s([this])
            },
            i.submit = function ()
            {
                return "pending" !== this.state() && (i.jqXHR = this.jqXHR = n._trigger("submit", e.Event("submit", 
                {
                    delegatedEvent : t
                }), this) !== !1 && n._onSend(t, this)), this.jqXHR || n._getXHRPromise()
            },
            i.abort = function ()
            {
                return this.jqXHR ? this.jqXHR.abort() : (this.errorThrown = "abort", n._trigger("fail", 
                null, this), n._getXHRPromise(!1));
            },
            i.state = function ()
            {
                return this.jqXHR ? n._getDeferredState(this.jqXHR) : this._processQueue ? n._getDeferredState(this._processQueue) : void 0;
            },
            i.processing = function ()
            {
                return!this.jqXHR && this._processQueue && "pending" === n._getDeferredState(this._processQueue)
            },
            i.progress = function ()
            {
                return this._progress;
            },
            i.response = function ()
            {
                return this._response;
            }
        },
        _getUploadedBytes : function (e)
        {
            var t = e.getResponseHeader("Range"), i = t && t.split("-"), n = i && i.length > 1 && parseInt(i[1], 
            10);
            return n && n + 1;
        },
        _chunkedUpload : function (t, i)
        {
            t.uploadedBytes = t.uploadedBytes || 0;
            var n, s, a = this, o = t.files[0], r = o.size, l = t.uploadedBytes, d = t.maxChunkSize || r, 
            c = this._blobSlice, h = e.Deferred(), u = h.promise();
            return!(!(this._isXHRUpload(t) && c && (l || r > d)) || t.data) && (!!i || (l >= r ? (o.error = t.i18n("uploadedBytes"), 
            this._getXHRPromise(!1, t.context, [null, "error", o.error])) : (s = function ()
            {
                var i = e.extend({}, t), u = i._progress.loaded;
                i.blob = c.call(o, l, l + d, o.type), i.chunkSize = i.blob.size, i.contentRange = "bytes " + l + "-" + (l + i.chunkSize - 1) + "/" + r, 
                a._initXHRData(i), a._initProgressListener(i), n = (a._trigger("chunksend", null, i) !== !1 && e.ajax(i) || a._getXHRPromise(!1, 
                i.context)).done(function (n, o, d)
                {
                    l = a._getUploadedBytes(d) || l + i.chunkSize, u + i.chunkSize - i._progress.loaded && a._onProgress(e.Event("progress", 
                    {
                        lengthComputable :!0, loaded : l - i.uploadedBytes, total : l - i.uploadedBytes
                    }), i), t.uploadedBytes = i.uploadedBytes = l, i.result = n, i.textStatus = o, i.jqXHR = d, 
                    a._trigger("chunkdone", null, i), a._trigger("chunkalways", null, i), r > l ? s() : h.resolveWith(i.context, 
                    [n, o, d]);
                }).fail(function (e, t, n)
                {
                    i.jqXHR = e, i.textStatus = t, i.errorThrown = n, a._trigger("chunkfail", null, i), 
                    a._trigger("chunkalways", null, i), h.rejectWith(i.context, [e, t, n]);
                })
            },
            this._enhancePromise(u), u.abort = function ()
            {
                return n.abort();
            },
            s(), u)))
        },
        _beforeSend : function (e, t)
        {
            0 === this._active && (this._trigger("start"), this._bitrateTimer = new this._BitrateTimer, 
            this._progress.loaded = this._progress.total = 0, this._progress.bitrate = 0), this._initResponseObject(t), 
            this._initProgressObject(t), t._progress.loaded = t.loaded = t.uploadedBytes || 0, t._progress.total = t.total = this._getTotal(t.files) || 1, 
            t._progress.bitrate = t.bitrate = 0, this._active += 1, this._progress.loaded += t.loaded, 
            this._progress.total += t.total;
        },
        _onDone : function (t, i, n, s)
        {
            var a = s._progress.total, o = s._response;
            s._progress.loaded < a && this._onProgress(e.Event("progress", {
                lengthComputable :!0, loaded : a, total : a
            }), s), o.result = s.result = t, o.textStatus = s.textStatus = i, o.jqXHR = s.jqXHR = n, this._trigger("done", 
            null, s);
        },
        _onFail : function (e, t, i, n)
        {
            var s = n._response;
            n.recalculateProgress && (this._progress.loaded -= n._progress.loaded, this._progress.total -= n._progress.total), 
            s.jqXHR = n.jqXHR = e, s.textStatus = n.textStatus = t, s.errorThrown = n.errorThrown = i, 
            this._trigger("fail", null, n);
        },
        _onAlways : function (e, t, i, n)
        {
            this._trigger("always", null, n)
        },
        _onSend : function (t, i)
        {
            i.submit || this._addConvenienceMethods(t, i);
            var n, s, a, o, r = this, l = r._getAJAXSettings(i), d = function ()
            {
                return r._sending += 1, l._bitrateTimer = new r._BitrateTimer, n = n || ((s || r._trigger("send", 
                e.Event("send", {
                    delegatedEvent : t
                }), l) === !1) && r._getXHRPromise(!1, l.context, s) || r._chunkedUpload(l) || e.ajax(l)).done(function (e, 
                t, i) {
                    r._onDone(e, t, i, l)
                }).fail(function (e, t, i)
                {
                    r._onFail(e, t, i, l)
                }).always(function (e, t, i)
                {
                    if (r._onAlways(e, t, i, l), r._sending -= 1, r._active -= 1, l.limitConcurrentUploads && l.limitConcurrentUploads > r._sending)
                    {
                        for (var n = r._slots.shift(); n; ) {
                            if ("pending" === r._getDeferredState(n)) {
                                n.resolve();
                                break 
                            }
                            n = r._slots.shift() 
                        }
                        0 === r._active && r._trigger("stop");
                    }
                })
            };
            return this._beforeSend(t, l), this.options.sequentialUploads || this.options.limitConcurrentUploads && this.options.limitConcurrentUploads <= this._sending ? (this.options.limitConcurrentUploads > 1 ? (a = e.Deferred(), 
            this._slots.push(a), o = a.then(d)) : (this._sequence = this._sequence.then(d, d), o = this._sequence), 
            o.abort = function ()
            {
                return s = [void 0, "abort", "abort"], n ? n.abort() : (a && a.rejectWith(l.context, s), 
                d());
            },
            this._enhancePromise(o)) : d()
        },
        _onAdd : function (t, i)
        {
            var n, s, a, o, r = this, l = !0, d = e.extend({}, this.options, i), c = i.files, h = c.length, 
            u = d.limitMultiFileUploads, p = d.limitMultiFileUploadSize, f = d.limitMultiFileUploadSizeOverhead, 
            m = 0, v = this._getParamName(d), g = 0;
            if (!h) {
                return!1;
            }
            if (p && void 0 === c[0].size && (p = void 0), (d.singleFileUploads || u || p) && this._isXHRUpload(d))
            {
                if (d.singleFileUploads || p || !u)
                {
                    if (!d.singleFileUploads && p)
                    {
                        for (a = [], n = [], o = 0; h > o; o += 1)
                        {
                            m += c[o].size + f, (o + 1 === h || m + c[o + 1].size + f > p || u && o + 1 - g >= u) && (a.push(c.slice(g, 
                            o + 1)), s = v.slice(g, o + 1), s.length || (s = v), n.push(s), g = o + 1, 
                            m = 0);
                        }
                    }
                    else {
                        n = v;
                    }
                    else
                    {
                        for (a = [], n = [], o = 0; h > o; o += u) {
                            a.push(c.slice(o, o + u)), s = v.slice(o, o + u), s.length || (s = v), n.push(s);
                        }
                    }
                    else {
                        a = [c], n = [v];
                    }
                    return i.originalFiles = c, e.each(a || c, function (s, o) 
                    {
                        var d = e.extend({}, i);
                        return d.files = a ? o : [o], d.paramName = n[s], r._initResponseObject(d), r._initProgressObject(d), 
                        r._addConvenienceMethods(t, d), l = r._trigger("add", e.Event("add", {
                            delegatedEvent : t 
                        }), d) 
                    }), l;;
                }
            }
        },
        _replaceFileInput : function (t)
        {
            var i = t.fileInput, n = i.clone(!0), s = i.is(document.activeElement);
            t.fileInputClone = n, e("<form></form>").append(n)[0].reset(), i.after(n).detach(), s && n.focus(), 
            e.cleanData(i.unbind("remove")), this.options.fileInput = this.options.fileInput.map(function (e, 
            t) {
                return t === i[0] ? n[0] : t;
            }), i[0] === this.element[0] && (this.element = n);
        },
        _handleFileTreeEntry : function (t, i)
        {
            var n, s = this, a = e.Deferred(), o = function (e)
            {
                e && !e.entry && (e.entry = t), a.resolve([e]);
            },
            r = function (e)
            {
                s._handleFileTreeEntries(e, i + t.name + "/").done(function (e)
                {
                    a.resolve(e)
                }).fail(o)
            },
            l = function ()
            {
                n.readEntries(function (e)
                {
                    e.length ? (d = d.concat(e), l()) : r(d);
                }, o)
            },
            d = [];
            return i = i || "", t.isFile ? t._file ? (t._file.relativePath = i, a.resolve(t._file)) : t.file(function (e)
            {
                e.relativePath = i, a.resolve(e);
            }, o) : t.isDirectory ? (n = t.createReader(), l()) : a.resolve([]), a.promise();
        },
        _handleFileTreeEntries : function (t, i)
        {
            var n = this;
            return e.when.apply(e, e.map(t, function (e)
            {
                return n._handleFileTreeEntry(e, i);
            })).then(function ()
            {
                return Array.prototype.concat.apply([], arguments);
            })
        },
        _getDroppedFiles : function (t)
        {
            t = t || {};
            var i = t.items;
            return i && i.length && (i[0].webkitGetAsEntry || i[0].getAsEntry) ? this._handleFileTreeEntries(e.map(i, 
            function (e)
            {
                var t;
                return e.webkitGetAsEntry ? (t = e.webkitGetAsEntry(), t && (t._file = e.getAsFile()), 
                t) : e.getAsEntry();
            })) : e.Deferred().resolve(e.makeArray(t.files)).promise()
        },
        _getSingleFileInputFiles : function (t)
        {
            t = e(t);
            var i, n, s = t.prop("webkitEntries") || t.prop("entries");
            if (s && s.length) {
                return this._handleFileTreeEntries(s);
            }
            if (i = e.makeArray(t.prop("files")), i.length)
            {
                void 0 === i[0].name && i[0].fileName && e.each(i, function (e, t) 
                {
                    t.name = t.fileName, t.size = t.fileSize;
                });
            }
            else
            {
                if (!(n = t.prop("value"))) {
                    return e.Deferred().resolve([]).promise();
                }
                i = [ {
                    name : n.replace(/^.*\\/, "")
                }]
            }
            return e.Deferred().resolve(i).promise();
        },
        _getFileInputFiles : function (t)
        {
            return t instanceof e && 1 !== t.length ? e.when.apply(e, e.map(t, this._getSingleFileInputFiles)).then(function ()
            {
                return Array.prototype.concat.apply([], arguments);
            }) : this._getSingleFileInputFiles(t)
        },
        _onChange : function (t)
        {
            var i = this, n = {
                fileInput : e(t.target), form : e(t.target.form)
            };
            this._getFileInputFiles(n.fileInput).always(function (s)
            {
                n.files = s, i.options.replaceFileInput && i._replaceFileInput(n), i._trigger("change", 
                e.Event("change", {
                    delegatedEvent : t
                }), n) !== !1 && i._onAdd(t, n)
            })
        },
        _onPaste : function (t)
        {
            var i = t.originalEvent && t.originalEvent.clipboardData && t.originalEvent.clipboardData.items, 
            n = {
                files : []
            };
            i && i.length && (e.each(i, function (e, t)
            {
                var i = t.getAsFile && t.getAsFile();
                i && n.files.push(i)
            }), this._trigger("paste", e.Event("paste", {
                delegatedEvent : t
            }), n) !== !1 && this._onAdd(t, n))
        },
        _onDrop : function (t)
        {
            t.dataTransfer = t.originalEvent && t.originalEvent.dataTransfer;
            var i = this, n = t.dataTransfer, s = {};
            n && n.files && n.files.length && (t.preventDefault(), this._getDroppedFiles(n).always(function (n)
            {
                s.files = n, i._trigger("drop", e.Event("drop", {
                    delegatedEvent : t
                }), s) !== !1 && i._onAdd(t, s)
            }))
        },
        _onDragOver : t("dragover"), _onDragEnter : t("dragenter"), _onDragLeave : t("dragleave"),
        _initEventHandlers : function ()
        {
            this._isXHRUpload(this.options) && (this._on(this.options.dropZone, 
            {
                dragover : this._onDragOver, drop : this._onDrop, dragenter : this._onDragEnter, dragleave : this._onDragLeave
            }), this._on(this.options.pasteZone, {
                paste : this._onPaste
            })), e.support.fileInput && this._on(this.options.fileInput, {
                change : this._onChange
            })
        },
        _destroyEventHandlers : function ()
        {
            this._off(this.options.dropZone, "dragenter dragleave dragover drop"), this._off(this.options.pasteZone, 
            "paste"), this._off(this.options.fileInput, "change")
        },
        _setOption : function (t, i)
        {
            var n =- 1 !== e.inArray(t, this._specialOptions);
            n && this._destroyEventHandlers(), this._super(t, i), n && (this._initSpecialOptions(), this._initEventHandlers())
        },
        _initSpecialOptions : function ()
        {
            var t = this.options;
            void 0 === t.fileInput ? t.fileInput = this.element.is('input[type="file"]') ? this.element : this.element.find('input[type="file"]') : t.fileInput instanceof e || (t.fileInput = e(t.fileInput)), 
            t.dropZone instanceof e || (t.dropZone = e(t.dropZone)), t.pasteZone instanceof e || (t.pasteZone = e(t.pasteZone));
        },
        _getRegExp : function (e)
        {
            var t = e.split("/"), i = t.pop();
            return t.shift(), new RegExp(t.join("/"), i);
        },
        _isRegExpOption : function (t, i)
        {
            return "url" !== t && "string" === e.type(i) &&/^\/.*\/[igm]{0,3}$/.test(i);
        },
        _initDataAttributes : function ()
        {
            var t = this, i = this.options, n = this.element.data();
            e.each(this.element[0].attributes, function (e, s)
            {
                var a, o = s.name.toLowerCase();
                /^data-/.test(o) && (o = o.slice(5).replace(/-[a-z]/g, function (e)
                {
                    return e.charAt(1).toUpperCase();
                }), a = n[o], t._isRegExpOption(o, a) && (a = t._getRegExp(a)), i[o] = a);
            })
        },
        _create : function ()
        {
            this._initDataAttributes(), this._initSpecialOptions(), this._slots = [], this._sequence = this._getXHRPromise(!0), 
            this._sending = this._active = 0, this._initProgressObject(this), this._initEventHandlers();
        },
        active : function ()
        {
            return this._active;
        },
        progress : function ()
        {
            return this._progress;
        },
        add : function (t)
        {
            var i = this;
            t && !this.options.disabled && (t.fileInput && !t.files ? this._getFileInputFiles(t.fileInput).always(function (e)
            {
                t.files = e, i._onAdd(null, t);
            }) : (t.files = e.makeArray(t.files), this._onAdd(null, t)));
        },
        send : function (t)
        {
            if (t && !this.options.disabled)
            {
                if (t.fileInput && !t.files)
                {
                    var i, n, s = this, a = e.Deferred(), o = a.promise();
                    return o.abort = function ()
                    {
                        return n = !0, i ? i.abort() : (a.reject(null, "abort", "abort"), o);
                    },
                    this._getFileInputFiles(t.fileInput).always(function (e)
                    {
                        if (!n)
                        {
                            if (!e.length) {
                                return void a.reject();
                            }
                            t.files = e, i = s._onSend(null, t), i.then(function (e, t, i)
                            {
                                a.resolve(e, t, i)
                            },
                            function (e, t, i)
                            {
                                a.reject(e, t, i)
                            })
                        }
                    }), this._enhancePromise(o)
                }
                if (t.files = e.makeArray(t.files), t.files.length) {
                    return this._onSend(null, t);
                }
            }
            return this._getXHRPromise(!1, t && t.context);
        }
    })
}
(jQuery), "undefined" == typeof jQuery) throw new Error("jquery-confirm requires jQuery");
var jconfirm, Jconfirm;
!function (e)
{
    "use strict";
    e.fn.confirm = function (t, i)
    {
        return void 0 === t && (t = {}), "string" == typeof t && (t = 
        {
            content : t, title :!!i && i
        }), e(this).each(function ()
        {
            var i = e(this);
            i.on("click", function (n)
            {
                n.preventDefault();
                var s = e.extend({}, t);
                i.attr("data-title") && (s.title = i.attr("data-title")), i.attr("data-content") && (s.content = i.attr("data-content")), 
                s.$target = i, i.attr("href") && !t.confirm && (s.confirm = function ()
                {
                    location.href = i.attr("href");
                }), e.confirm(s)
            })
        }), e(this)
    },
    e.confirm = function (e, t)
    {
        return void 0 === e && (e = {}), "string" == typeof e && (e = 
        {
            content : e, title :!!t && t
        }), jconfirm(e)
    },
    e.alert = function (e, t)
    {
        return void 0 === e && (e = {}), "string" == typeof e && (e = 
        {
            content : e, title :!!t && t
        }), e.cancelButton = !1, jconfirm(e)
    },
    e.dialog = function (e, t)
    {
        return void 0 === e && (e = {}), "string" == typeof e && (e = 
        {
            content : e, title :!!t && t
        }), e.cancelButton = !1, e.confirmButton = !1, e.confirmKeys = [13], jconfirm(e);
    },
    jconfirm = function (t)
    {
        void 0 === t && (t = {}), jconfirm.defaults && e.extend(jconfirm.pluginDefaults, jconfirm.defaults);
        var t = e.extend({}, jconfirm.pluginDefaults, t);
        return new Jconfirm(t);
    },
    Jconfirm = function (t)
    {
        e.extend(this, t), this._init()
    },
    Jconfirm.prototype = 
    {
        _init : function ()
        {
            var e = this;
            this._rand = Math.round(99999 * Math.random()), this._buildHTML(), this._bindEvents(), setTimeout(function ()
            {
                e.open(), e._watchContent()
            }, 0)
        },
        _buildHTML : function ()
        {
            var t = this;
            this.animation = "anim-" + this.animation.toLowerCase(), this.closeAnimation = "anim-" + this.closeAnimation.toLowerCase(), 
            this.theme = "jconfirm-" + this.theme.toLowerCase(), "anim-none" == this.animation && (this.animationSpeed = 0), 
            this._lastFocused = e("body").find(":focus"), this.$el = e(this.template).appendTo(this.container).addClass(this.theme), 
            this.$el.find(".jconfirm-box-container").addClass(this.columnClass), this.$el.find(".jconfirm-bg").css(this._getCSS(this.animationSpeed, 
            1)), this.$el.find(".jconfirm-bg").css("opacity", this.opacity), this.$b = this.$el.find(".jconfirm-box").css(this._getCSS(this.animationSpeed, 
            this.animationBounce)).addClass(this.animation), this.$body = this.$b, this.rtl && this.$el.addClass("rtl"), 
            this._contentReady = e.Deferred(), this._modalReady = e.Deferred(), this.$title = this.$el.find(".title"), 
            this.contentDiv = this.$el.find("div.content"), this.$content = this.contentDiv, this.$contentPane = this.$el.find(".content-pane"), 
            this.$icon = this.$el.find(".icon-c"), this.$closeIcon = this.$el.find(".closeIcon"), this.$contentPane.css(this._getCSS(this.animationSpeed, 
            1)), this.setTitle(), this.setIcon(), this._setButtons(), this.closeIconClass && this.$closeIcon.html('<i class="' + this.closeIconClass + '"></i>'), 
            t._contentHash = this._hash(t.$content.html()), e.when(this._contentReady, this._modalReady).then(function ()
            {
                t.setContent(), t.setTitle(), t.setIcon()
            }), this._getContent(), this._imagesLoaded(), this.autoClose && this._startCountDown()
        },
        _unwatchContent : function ()
        {
            clearInterval(this._timer)
        },
        _hash : function ()
        {
            if ("function" == typeof btoa)
            {
                return btoa(encodeURIComponent(this.$content.html()));
            }
        },
        _watchContent : function ()
        {
            var e = this;
            this._timer = setInterval(function ()
            {
                var t = e._hash(e.$content.html());
                e._contentHash != t && (e._contentHash = t, e.setDialogCenter(), e._imagesLoaded());
            },
            this.watchInterval)
        },
        _bindEvents : function ()
        {
            var t = this, i = !1;
            this.$el.find(".jconfirm-scrollpane").click(function (e)
            {
                i || (t.backgroundDismiss ? (t.cancel(), t.close()) : (t.$b.addClass("hilight"), setTimeout(function ()
                {
                    t.$b.removeClass("hilight")
                }, 800))), i = !1
            }), this.$el.find(".jconfirm-box").click(function (e)
            {
                i = !0
            }), this.$confirmButton && this.$confirmButton.click(function (e)
            {
                e.preventDefault();
                var i = t.confirm(t.$b);
                t._stopCountDown(), t.onAction("confirm"), (void 0 === i || i) && t.close()
            }), this.$cancelButton && this.$cancelButton.click(function (e)
            {
                e.preventDefault();
                var i = t.cancel(t.$b);
                t._stopCountDown(), t.onAction("cancel"), (void 0 === i || i) && t.close()
            }), this.$closeButton && this.$closeButton.click(function (e)
            {
                e.preventDefault(), t._stopCountDown(), t.cancel(), t.onAction("close"), t.close()
            }), this.keyboardEnabled && setTimeout(function ()
            {
                e(window).on("keyup." + this._rand, function (e)
                {
                    t.reactOnKey(e)
                })
            }, 500), e(window).on("resize." + this._rand, function ()
            {
                t.setDialogCenter(!0)
            })
        },
        _getCSS : function (e, t)
        {
            return {
                "-webkit-transition-duration" : e / 1e3 + "s", "transition-duration" : e / 1e3 + "s", 
                "-webkit-transition-timing-function" : "cubic-bezier(.36,1.1,.2, " + t + ")", "transition-timing-function" : "cubic-bezier(.36,1.1,.2, " + t + ")"
            }
        },
        _imagesLoaded : function ()
        {
            var t = this;
            e.each(this.$content.find("img:not(.loaded)"), function (i, n)
            {
                var s = setInterval(function ()
                {
                    "0px" !== e(n).css("height") && (e(n).addClass("loaded"), t.setDialogCenter(), clearInterval(s))
                }, 40)
            })
        },
        _setButtons : function ()
        {
            this.$btnc = this.$el.find(".buttons"), this.confirmButton && "" !== e.trim(this.confirmButton) && (this.$confirmButton = e('<button type="button" class="btn">' + this.confirmButton + "</button>").appendTo(this.$btnc).addClass(this.confirmButtonClass)), 
            this.cancelButton && "" !== e.trim(this.cancelButton) && (this.buttonsReverse ? this.$cancelButton = e('<button type="button" class="btn">' + this.cancelButton + "</button>").prependTo(this.$btnc).addClass(this.cancelButtonClass) : this.$cancelButton = e('<button type="button" class="btn">' + this.cancelButton + "</button>").appendTo(this.$btnc).addClass(this.cancelButtonClass)), 
            this.buttonOther && "" !== e.trim(this.buttonOther) && e(this.buttonOther).prependTo(this.$btnc), 
            this.confirmButton || this.cancelButton || this.$btnc.hide(), this.confirmButton || this.cancelButton || null !== this.closeIcon || (this.$closeButton = this.$b.find(".closeIcon").show()), 
            this.closeIcon === !0 && (this.$closeButton = this.$b.find(".closeIcon").show());
        },
        setTitle : function (e)
        {
            this.title = void 0 !== e ? e : this.title, this.$title.html(this.title || "");
        },
        setIcon : function (e)
        {
            this.title = "undefined" != typeof string ? e : this.title, this.$icon.html(this.icon ? '<i class="' + this.icon + '"></i>' : "");
        },
        setContent : function (e)
        {
            this.content = void 0 === e ? this.content : e, "" == this.content ? (this.$content.html(this.content), 
            this.$contentPane.hide()) : (this.$content.html(this.content), this.$contentPane.show()), 
            this.$content.hasClass("loading") && (this.$content.removeClass("loading"), this.$btnc.find("button").prop("disabled", 
            !1));
        },
        _getContent : function (t)
        {
            var i = this;
            if (t = t ? t : this.content, this._isAjax = !1, this.content)
            {
                if ("string" == typeof this.content)
                {
                    if ("url:" === this.content.substr(0, 4).toLowerCase()) 
                    {
                        this._isAjax = !0, this.$content.addClass("loading"), this.$btnc.find("button").prop("disabled", 
                        !0);
                        var n = this.content.substring(4, this.content.length);
                        e.get(n).done(function (e) 
                        {
                            i.content = e, i._contentReady.resolve();
                        }).always(function (e, t, n) 
                        {
                            "function" == typeof i.contentLoaded && i.contentLoaded(e, t, n) 
                        }) 
                    }
                    else {
                        this.setContent(this.content), this._contentReady.reject();
                    }
                    else if ("function" == typeof this.content) 
                    {
                        this.$content.addClass("loading"), this.$btnc.find("button").attr("disabled", 
                        "disabled");
                        var s = this.content(this);
                        "object" != typeof s ? console.error("The content function must return jquery promise.") : "function" != typeof s.always ? console.error("The object returned is not a jquery promise.") : (this._isAjax = !0, 
                        s.always(function (e, t) 
                        {
                            i._contentReady.resolve() 
                        })) 
                    }
                    else {
                        console.error("Invalid option for property content, passed: " + typeof this.content);
                    }
                    else {
                        this.content = "", this.setContent(this.content), this._contentReady.reject();
                    }
                    this.setDialogCenter();;
                }
            }
        },
        _stopCountDown : function ()
        {
            clearInterval(this.timerInterval), this.$cd && this.$cd.remove()
        },
        _startCountDown : function ()
        {
            var t = this.autoClose.split("|");
            if (/cancel/.test(t[0]) && "alert" === this.type) {
                return!1;
            }
            if (/confirm|cancel/.test(t[0]))
            {
                this.$cd = e('<span class="countdown"></span>').appendTo(this ["$" + t[0] + "Button"]);
                var i = this;
                i.$cd.parent().click();
                var n = t[1] / 1e3;
                this.timerInterval = setInterval(function ()
                {
                    i.$cd.html(" (" + (n -= 1) + ")"), 0 === n && (i.$cd.html(""), i.$cd.parent().trigger("click"), 
                    clearInterval(i.timerInterval))
                }, 1e3)
            }
            else {
                console.error("Invalid option " + t[0] + ", must be confirm/cancel");
            }
        },
        reactOnKey : function t(i)
        {
            var n = e(".jconfirm");
            if (n.eq(n.length - 1)[0] !== this.$el[0]) {
                return!1;
            }
            var t = i.which;
            if (this.contentDiv.find(":input").is(":focus") &&/13|32/.test(t)) {
                return!1;
            }
            e.inArray(t, this.cancelKeys) !==- 1 && (this.$cancelButton ? this.$cancelButton.click() : this.close()), 
            e.inArray(t, this.confirmKeys) !==- 1 && this.$confirmButton && this.$confirmButton.click()
        },
        setDialogCenter : function ()
        {
            if ("none" == this.$contentPane.css("display")) {
                var t = 0, i = 0;
            }
            else {
                var t = this.$content.outerHeight(), i = this.$contentPane.height();
                0 == i && (i = t)
            }
            var n = this.$content.outerWidth();
            this.$content.css({
                clip : "rect(0px " + (100 + n) + "px " + t + "px -100px)"
            }), this.$contentPane.css({
                height : t
            });
            var s = e(window).height(), a = this.$b.outerHeight() - i + t, o = (s - a) / 2;
            if (a > s - 100) {
                var r = {
                    "margin-top" : 50, "margin-bottom" : 50
                };
                e("body").addClass("jconfirm-noscroll")
            }
            else {
                var r = {
                    "margin-top" : o
                };
                e("body").removeClass("jconfirm-noscroll")
            }
            this.$b.css(r)
        },
        close : function ()
        {
            var t = this;
            if (this.isClosed()) {
                return!1;
            }
            "function" == typeof this.onClose && this.onClose(), this._unwatchContent(), t._lastFocused.focus(), 
            e(window).unbind("resize." + this._rand), this.keyboardEnabled && e(window).unbind("keyup." + this._rand), 
            t.$el.find(".jconfirm-bg").removeClass("seen"), e("body").removeClass("jconfirm-noscroll"), 
            this.$b.addClass(this.closeAnimation);
            var i = "anim-none" == this.closeAnimation ? 0 : this.animationSpeed;
            return setTimeout(function ()
            {
                t.$el.remove()
            },
            25 * i / 100), jconfirm.record.closed += 1, jconfirm.record.currentlyOpen -= 1, !0
        },
        open : function ()
        {
            var e = this;
            if (this.isClosed()) {
                return!1;
            }
            e.$el.find(".jconfirm-bg").addClass("seen"), this.$b.removeClass(this.animation), this.$b.find("input[autofocus]:visible:first").focus(), 
            jconfirm.record.opened += 1, jconfirm.record.currentlyOpen += 1, "function" == typeof this.onOpen && this.onOpen();
            var t = "jconfirm-box" + this._rand;
            return this.$b.attr("aria-labelledby", t).attr("tabindex", - 1).focus(), this.$title ? this.$title.attr("id", 
            t) : this.$content && this.$content.attr("id", t), setTimeout(function ()
            {
                e.$b.css({
                    "transition-property" : e.$b.css("transition-property") + ", margin"
                }), e._modalReady.resolve()
            },
            this.animationSpeed), !0
        },
        isClosed : function ()
        {
            return "" === this.$el.css("display");
        }
    },
    jconfirm.pluginDefaults = 
    {
        template : '<div class="jconfirm"><div class="jconfirm-bg"></div><div class="jconfirm-scrollpane"><div class="container"><div class="row"><div class="jconfirm-box-container"><div class="jconfirm-box" role="dialog" aria-labelledby="labelled" tabindex="-1"><div class="closeIcon">&times;</div><div class="title-c"><span class="icon-c"></span><span class="title"></span></div><div class="content-pane"><div class="content"></div></div><div class="buttons"></div><div class="jquery-clear"></div></div></div></div></div></div></div>', 
        title : "提示", content : "确定吗", contentLoaded : function () {}, icon : "", opacity : null, confirmButton : "确定", 
        cancelButton : "取消", confirmButtonClass : "btn", cancelButtonClass : "btn btn-slight", buttonsReverse :!1, 
        theme : "white", animation : "scale", closeAnimation : "scale", animationSpeed : 500, animationBounce : 1.2, 
        keyboardEnabled :!1, rtl :!1, confirmKeys : [13], cancelKeys : [27], container : "body", confirm : function () {},
        cancel : function () {}, backgroundDismiss :!0, autoClose :!1, closeIcon : null, closeIconClass :!1, 
        watchInterval : 100, columnClass : "pop-container", onOpen : function () {},
        onClose : function () {}, onAction : function () {}
    },
    jconfirm.record = {
        opened : 0, closed : 0, currentlyOpen : 0
    }
}
(jQuery), function (e, t, n, s)
{
    var a = function (t, i)
    {
        var n = this;
        n.$element = t, n.defaults = 
        {
            width : 840, height : 256, start : 1, speed : 400, interval : 3e3, autoPlay :!1, dotShow :!0, 
            navShow :!0, arrShow :!0, touch :!0, effect : "slide", fadeOut :!0, afterSlider : function () {}
        },
        n.clickable = !0, n.options = e.extend({}, n.defaults, i)
    };
    a.prototype = 
    {
        init : function ()
        {
            var n = this, s = n.$element, a = s.children("ul"), o = a.children("li"), r = o.length, l = n.options.start, 
            d = 0, c = 0;
            if (n.options.arrShow)
            {
                s.append('<a href="javascript:;" class="btn-direction btn-prev"></a><a href="javascript:;" class="btn-direction btn-next"></a>')
            }
            for (i = 1; i <= r; i++) {
                l == i && o.eq(l - 1).addClass("cur");
            }
            if (n.options.dotShow)
            {
                var h = "";
                for (i = 1; i <= r; i++) {
                    l == i ? h += '<i data-index="' + i + '" class="cur"></i>' : h += '<i data-index="' + i + '"></i>';
                }
                var u = '<div class="slider-dot">' + h + "</div>";
                s.append(u)
            }
            var p = function ()
            {
                var e = s.width(), t = n.options.height / n.options.width * e;
                s.css("height", t)
            };
            if (s.css("height", n.options.height), p(), e(t).resize(function ()
            {
                p()
            }), n.options.arrShow && (s.find(".next").on("click", function (e)
            {
                e.preventDefault(), n.clickable && (l >= r ? l = 1 : l += 1, n.moveTo(l, "next"));
            }), s.find(".prev").on("click", function (e)
            {
                e.preventDefault(), n.clickable && (1 == l ? l = r : l -= 1, n.moveTo(l, "prev"));
            })), n.options.dotShow && s.find(".slider-dot i").on("mouseover", function (t)
            {
                if (t.preventDefault(), n.clickable) {
                    var i = e(this).data("index");
                    dir = i > l ? "next" : "prev", i != l && (l = i, n.moveTo(l, dir));
                }
            }), n.options.navShow && s.parent().find(".slider-nav a").on("mouseover", function (t)
            {
                if (t.preventDefault(), n.clickable) {
                    var i = e(this).data("index");
                    dir = i > l ? "next" : "prev", i != l && (l = i, n.moveTo(l, dir));
                }
            }), n.options.autoPlay)
            {
                var f, m = function ()
                {
                    l++, l > r && (l = 1), n.moveTo(l, "next");
                };
                f = setInterval(m, n.options.interval), s.hover(function ()
                {
                    f = clearInterval(f);
                },
                function ()
                {
                    f = setInterval(m, n.options.interval);
                })
            }
            n.options.touch && o.on(
            {
                touchstart : function (e)
                {
                    d = e.originalEvent.touches[0].clientY, c = e.originalEvent.touches[0].clientX;
                },
                touchend : function (e)
                {
                    var t = e.originalEvent.changedTouches[0].clientY, i = e.originalEvent.changedTouches[0].clientX, 
                    s = d - t, a = c - i;
                    Math.abs(a) > Math.abs(s) && (a > 5 ? (l >= r ? l = 1 : l += 1, n.moveTo(l, "next")) : (1 == l ? l = r : l -= 1, 
                    n.moveTo(l, "prev"))), d = null, c = null;
                },
                touchmove : function (e)
                {
                    e.preventDefault && e.preventDefault()
                }
            })
        },
        moveTo : function (t, i)
        {
            var n = this, s = n.$element, a = n.clickable, o = s.find(".slider-dot i"), r = s.parent().find(".slider-nav a"), 
            l = s.children("ul"), d = l.children("li");
            if (!a) {
                return!1;
            }
            if (n.clickable = !1, "fade" == n.options.effect)
            {
                1 == n.options.fadeOut ? l.children(".cur").fadeOut(function () 
                {
                    e(this).removeClass("cur") 
                }) : l.children(".cur").hide().removeClass("cur"), d.eq(t - 1).fadeIn(function () 
                {
                    e(this).addClass("cur"), n.clickable = !0 
                });
            }
            else
            {
                var c = s.width();
                "prev" == i && (c *=- 1), l.children(".cur").stop().animate({
                    left :- c
                },
                n.options.speed, function ()
                {
                    e(this).removeClass("cur")
                }), d.eq(t - 1).css("left", c + "px").addClass("cur").stop().animate({
                    left : 0
                },
                n.options.speed, function ()
                {
                    n.clickable = !0
                })
            }
            n.options.afterSlider.call(n), o.removeClass("cur"), o.eq(t - 1).addClass("cur"), r.removeClass("cur"), 
            r.eq(t - 1).addClass("cur")
        }
    },
    e.fn.hwSlider = function (e)
    {
        var t = new a(this, e);
        return this.each(function ()
        {
            t.init()
        })
    }
}
(jQuery, window, document);
var PlaceholderCheck = 
{
    init : function (e)
    {
        if (!placeholderSupport())
        {
            var t;
            t = e ? e.find("[placeholder]") : $("[placeholder]"), t.focus(function ()
            {
                var e = $(this);
                e.val() == e.attr("placeholder") && (e.val(""), e.removeClass("placeholder"))
            }).blur(function ()
            {
                var e = $(this);
                "" != e.val() && e.val() != e.attr("placeholder") || (e.addClass("placeholder"), e.val(e.attr("placeholder")))
            }).blur()
        }
    }
};
$(function ()
{
    PlaceholderCheck.init()
}), $(function ()
{
    function e()
    {
        var e = arguments;
        a <= s - 1 && (n.eq(a).stop(!0).animate({
            width : "300px"
        }, 500).siblings().stop(!0).animate({
            width : "98px"
        }, 500), ++a == s && (a = 0)), i = setTimeout(e.callee, 5e3)
    }
    function t()
    {
        var e = (o.offset().top, $(window).scrollTop(), $("body").outerHeight(), d.height(), $(window).height() - ($("#footer").offset().top - $(document).scrollTop()));
        e > 0 ? r.css("bottom", e) : r.css("bottom", 0)
    }
    if ($.fn.hoverDelay = function (e)
    {
        var t, i, n = 
        {
            hoverDuring : 200, outDuring : 200,
            hoverEvent : function ()
            {
                $.noop()
            },
            outEvent : function ()
            {
                $.noop()
            }
        },
        s = $.extend(n, e || {});
        return $(this).each(function () {
            $(this).hover(function ()
            {
                clearTimeout(i), t = setTimeout(s.hoverEvent, s.hoverDuring);
            },
            function ()
            {
                clearTimeout(t), i = setTimeout(s.outEvent, s.outDuring);
            })
        })
    },
    $(".home-box .slider-main").length && ($(".home-box .slider-main").hwSlider(
    {
        autoPlay :!0, arrShow :!0, dotShow :!0, navShow :!0, touch :!0, height : 240, interval : 5e3, 
        effect : "fade"
    }), $(".slider-box .pic-all").length))
    {
        var i, n = $(".slider-box .pic-all a"), s = n.length, a = 0;
        n.hover(function ()
        {
            clearTimeout(i), 300 != $(this).width() && $(this).stop(!0).animate({
                width : "300px"
            }, 500).siblings().stop(!0).animate({
                width : "98px"
            }, 500)
        },
        function ()
        {
            a = $(this).index(), e()
        }), e()
    }
    if ($(".semwrap .slider-main").length && $(".slider-main").hwSlider(
    {
        autoPlay :!0, arrShow :!0, dotShow :!1, navShow :!0, touch :!0, interval : 5e3, width : 582, speed : 1e3, 
        height : 426
    }), $(".manager-list .manager-inner").length && $(".manager-list li").length > 1 && ($(".manager-list h3").css("background", 
    "none"), $(".manager-list .manager-inner").hwSlider(
    {
        autoPlay :!0, arrShow :!1, dotShow :!0, interval : 5e3, speed : 500, width : 330, height : 163, 
        navShow :!0, touch :!0, effect : "fade", fadeOut :!1,
        afterSlider : function ()
        {
            $(".manager-list .fold-text").removeAttr("style"), $(".manager-list .more-view").html('...展开<i class="fz fz-slidedown"></i></a>').show()
        }
    })), $(".picture-list .slider-main").length && $(".picture-list li").length > 1 && $(".picture-list .slider-main").hwSlider(
    {
        autoPlay :!0, arrShow :!1, dotShow :!0, interval : 5e3, speed : 500, width : 330, height : 165, 
        navShow :!0, touch :!0
    }), $(".job-menu dl").each(function (e)
    {
        var t = $(this);
        t.hoverDelay(
        {
            hoverDuring : 200,
            hoverEvent : function ()
            {
                switch (t.addClass("cur"), e)
                {
                    case 0:
                        break;
                    case 1:
                        t.children(".menu-sub").css({
                            top : "-50px"
                        });
                        break;
                    case 10:
                        t.children(".menu-sub").css({
                            top : "auto", bottom : "-1px"
                        })
                }
                if (0 != e && 1 != e && 10 != e || 10 == e && $(".ie7").length)
                {
                    var i = t.get(0).getBoundingClientRect().top, n = t.find(".menu-sub");
                    n.height() < i ? n.css({
                        "margin-top" : 65 - n.height() + "px"
                    }) : i < 70 && i > 0 ? n.css({
                        "margin-top" : "-1px"
                    }) : i < 0 ? n.css({
                        "margin-top" : i + "px"
                    }) : n.css({
                        "margin-top" : 59 - i + "px"
                    })
                }
            },
            outEvent : function ()
            {
                t.removeClass("cur").children(".menu-sub")
            }
        })
    }), $(".menu-all .sub-tab li").eq(0).css({
        "border-top-color" : "#fff", "padding-top" : "15px", "padding-bottom" : "14px"
    }), $(".menu-all .sub-tab li").eq(1).css({
        "margin-top" : "-1px"
    }), $(".menu-all .sub-tab li").on("click", function ()
    {
        var e = $(this).index(), t = $(this).parent().find("li"), i = $(this).closest(".menu-sub").find(".sub-content ul");
        t.removeClass("cur"), $(this).addClass("cur"), i.removeClass("show"), i.eq(e).addClass("show"), 
        0 == e && $(this).css("border-top-color", "#fff"), e == t.length - 1 ? $(this).css({
            "border-bottom-color" : "#fff", "margin-top" : "-1px", "padding-top" : "1px"
        }) : t.eq(t.length - 1).css({
            "border-bottom-color" : "#FDFDFE", "margin-top" : "0", "padding-top" : "0"
        })
    }), $(".condition-insdustry .btn-all").on("click", function ()
    {
        $(this).parent().toggleClass("show-all-insdustry")
    }), $(".condition-city .link-district").on("click", function ()
    {
        $(".condition-district").toggleClass("show-condition-district"), $(".condition-area").removeClass("show-condition-area")
    }), $(".condition-city .link-area").on("click", function ()
    {
        $(".condition-area").toggleClass("show-condition-area"), $(".condition-district").removeClass("show-condition-district")
    }), $(".siderbar-top").on("click", function ()
    {
        $("html,body").animate({
            scrollTop : "0px"
        }, 400)
    }), $(window).on("scroll", function ()
    {
        $(this).scrollTop() > 600 ? $("#siderbar").fadeIn() : $("#siderbar").hide()
    }), $(".footer-scan").length)
    {
        $("#siderbar").css({
            bottom : "304px", transition : "all 0.2s"
        });
        var o = $("#footer"), r = $(".footer-scan"), l = $(".home-box .job-list"), d = $(window);
        l.css("margin-bottom", "105px"), t(), $(window).scroll(function ()
        {
            t()
        }), r.find(".footer-scan-close").click(function ()
        {
            r.fadeOut(300, function ()
            {
                l.css({
                    "margin-bottom" : "15px", transition : "all 0.2s"
                }), $("#siderbar").css({
                    bottom : "214px", transition : "all 0.2s"
                })
            })
        })
    }
    $(window).width() < 1348 && $(".footer-scan .btns").css("margin-right", "84px"), $(window).resize(function ()
    {
        $(window).width() < 1348 ? $(".footer-scan .btns").css("margin-right", "84px") : $(".footer-scan .btns").css("margin-right", 
        "0")
    }), "cpc_job_index" == $("#page_key_name").val() && setTimeout(function ()
    {
        if (window._T)
        {
            var e = window.screen.width, t = window.screen.height, i = window.innerWidth, n = window.innerHeight;
            _T.sendEvent("screen-" + e + "-" + t + "|avail-" + i + "-" + n)
        }
    }, 1e3)
});
var Search = 
{
    init : function ()
    {
        Search.searchBox = $(".search-box"), Search.isLoading = !1, Search.searchBox.find(".city-sel").on("click", 
        function (e)
        {
            if ($(e.target).closest(".city-box").length)
            {
                return void ($(e.target).attr("data-val") && ($(this).find(".label-text b").attr("data-val", 
                $(e.target).attr("data-val")).text($(e.target).text()), Search.searchBox.removeClass("show-city")));
            }
            Search.searchBox.toggleClass("show-city")
        }), Search.searchBox.find(".dorpdown-province li").on("mouseover", function ()
        {
            var e = $(this).index(), t = $(this).parent().find("li"), i = Search.searchBox.find(".dorpdown-city ul");
            t.removeClass("cur"), $(this).addClass("cur"), i.removeClass("show"), i.eq(e).addClass("show");
            var n = i.eq(e).find("li");
            n.length > 0 && i.eq(e).find("li.cur").length < 1 && n.eq(0).addClass("cur")
        }), Search.searchBox.find(".dorpdown-province li").on("click", function ()
        {
            var e = $(this).index(), t = Search.searchBox.find(".dorpdown-city ul"), i = t.eq(e);
            i.find("li").length > 0 && i.find("li").eq(0).trigger("click")
        }), Search.searchBox.find(".dorpdown-city li").on("click", function ()
        {
            var e = Search.searchBox.find(".city-sel").find(".label-text b"), t = Search.searchBox.find(".city-code"), 
            i = Search.searchBox.find(".city-name");
            e.text($(this).text()), t.val($(this).attr("data-val")), i.val($(this).text()), Search.searchBox.find(".dorpdown-city ul .cur").removeClass("cur"), 
            $(this).addClass("cur")
        }), Search.searchBox.find("form").on("submit", function (e)
        {
            var t = $(this), i = t.find(".ipt-search");
            "搜索职位、公司" == i.val() && i.val("")
        }), $(document).on("click", function (e)
        {
            $(e.target).closest(".city-sel").length || $(e.target).closest(".dorpdown-province").length || Search.searchBox.removeClass("show-city"), 
            $(e.target).closest(".suggest-result").length || Search.searchBox.find(".suggest-result").hide()
        }), Search.searchBox.find(".ipt-search").on("paste keyup", function (e)
        {
            if (13 != e.which && 27 != e.which && 38 != e.which && 40 != e.which)
            {
                Search.suggestTimer && clearTimeout(Search.suggestTimer);
                var t = $(this);
                Search.suggestTimer = setTimeout(function ()
                {
                    Search.suggest(t)
                }, 200)
            }
        }), Search.searchBox.find(".ipt-search").focus(function ()
        {
            $(this).closest("form").addClass("search-form-shadow"), $(this).closest(".ipt-wrap").addClass("ipt-wrap-hover"), 
            $(this).closest("form").find(".city-sel").addClass("city-sel-hover")
        }), Search.searchBox.find(".ipt-search").blur(function ()
        {
            $(this).closest("form").removeClass("search-form-shadow"), $(this).closest(".ipt-wrap").removeClass("ipt-wrap-hover"), 
            $(this).closest("form").find(".city-sel").removeClass("city-sel-hover")
        }), Search.searchBox.find(".suggest-result").on("click", "li", function ()
        {
            Search.addInput($(this))
        });
        var e =- 1;
        Search.searchBox.find(".ipt-search").keydown(function (t)
        {
            var i = Search.searchBox.find(".suggest-result li");
            switch (t.which)
            {
                case 38:
                    i.removeClass("selected"), e ==- 1 ? (e =- 1, e = i.length - 1) : e--, i.eq(e).addClass("selected"), 
                    Search.addInput(i.eq(e), !0), Search.scrollVisiable(i.eq(e), "up");
                    break;
                case 40:
                    t.preventDefault(), i.removeClass("selected"), e > i.length - 2 && (e =- 1), e++, i.eq(e).addClass("selected"), 
                    Search.addInput(i.eq(e), !0), Search.scrollVisiable(i.eq(e), "down");
                    break;
                case 13:
                    e =- 1;
                    break;
                case 27:
                    e =- 1, Search.searchBox.find(".ipt-search").val("")
            }
        }), Search.searchBox.length && $(".job-list li a").on("click", function ()
        {
            var e = $(this), t = e.closest(".job-list");
            $.ajax(
            {
                type : "POST", url : "/actionLog/search.json", dataType : "JSON", data : 
                {
                    keyword : t.attr("data-keyword"), l3code : t.attr("data-l3code"), filter : t.attr("data-filter"), 
                    rescount : t.attr("data-rescount"), page : t.attr("data-page"), index : e.attr("data-index"), 
                    lid : e.attr("data-lid"), itemid : e.attr("data-itemid"), jobid : e.attr("data-jobid"), 
                    source : t.attr("data-source")
                }
            })
        })
    },
    suggest : function (e)
    {
        var e = e, t = e.val().replace(/(^\s*)|(\s*$)/g, ""), i = e.closest(".search-box").find(".suggest-result"), 
        n = i.find("ul");
        if ("" == t) {
            return void i.hide();
        }
        $.ajax(
        {
            type : "GET", url : "/autocomplete/query.json", dataType : "JSON", cache :!1, data : {
                query : t
            },
            success : function (e)
            {
                var t, s, e = e, a = "";
                if (e.data && e.data.length) {
                    for (t = e.data, s = 0; s < t.length; s++) {
                        a += "<li>" + t[s].hlname + "</li>";
                    }
                    n.html(a), i.show()
                }
                else {
                    n.html('<li class="blank-data">暂无匹配结果</li>');
                }
                Search.isLoading = !1
            },
            error : function (e)
            {
                Search.isLoading = !1
            }
        })
    },
    hightLight : function (e, t)
    {
        var t = t.replace(/(^\s*)|(\s*$)/g, "");
        if ("" == t) {
            return e;
        }
        var i = t;
        return e.replace(t.toLowerCase(), '<em class="text-blue">' + i + "</em>").replace(t.toUpperCase(), 
        '<em class="text-blue">' + i + "</em>")
    },
    addInput : function (e, t)
    {
        var e = e, i = e.text().replace('<u class="h">', "").replace("</u>", "");
        Search.searchBox.find(".ipt-search").val(i), t || (Search.searchBox.find(".suggest-result").hide(), 
        Search.searchBox.find("form").submit())
    },
    scrollVisiable : function (e, t)
    {
        var e = e, i = Search.searchBox.find(".suggest-result ul");
        if (!e) {
            return!1;
        }
        var n = i.find("li").length, s = $(e).index(), a = s > 4 ? s - 4 : 0, o = "down" == t && (a < n - 4 || 0 === s), 
        r = "up" == t && (s < n - 5 || s == n - 1);
        "up" == t && (a = s), (r || o) && i.scrollTop(a * $(e).height());
    }
};
$(function ()
{
    Search.init()
});
var Detail = 
{
    init : function (e)
    {
        function t()
        {
            $(this).scrollTop() >= $(".job-box").offset().top - 80 ? r || (r = !0, o.slideDown(300, function ()
            {
                r = !1
            })) : o.hide()
        }
        var i = $(".links label");
        if (Detail.firstIn = !0, 0 != i.length)
        {
            var n = !1, s = $(".links");
            i.click(function ()
            {
                n ? (s.css("height", "70px"), n = !1, i.html('<span>展开</span><i class="fz fz-slidedown"></i>')) : (s.css("height", 
                "auto"), n = !0, i.html('<span>收起</span><i class="fz fz-slideup"></i>'))
            })
        }
        if ($(".btn-signup").on("click", function ()
        {
            Detail.showSign(1)
        }), $(".fold-text .more-view").on("click", function ()
        {
            $(this).find(".fz-slidedown").length ? ($(this).parent().css({
                "max-height" : "none", overflow : "visible"
            }), $(this).css("bottom", "-20px"), $(this).html('收起<i class="fz fz-slideup"></i></a>').show()) : ($(this).parent().removeAttr("style"), 
            $(this).removeAttr("style"), $(this).html('...展开<i class="fz fz-slidedown"></i></a>').show())
        }), $(".company-card").on("click", function (e)
        {
            $(e.target).hasClass("btn") || (window.location.href = $(this).find(".btn").eq(0).attr("href"))
        }), $(".detail-content .job-sec .fold-text").text().length > 275 && $(".detail-content .job-sec .more-view").show(), 
        $(".manager-list .fold-text").each(function ()
        {
            $(this).text().length > 69 ? $(this).find(".more-view").show() : $(this).find(".more-view").remove()
        }), $(".detail-op").on("click", ".btn", function (e)
        {
            var t = $(this);
            t.hasClass("btn-outline") ? (Detail.deliveResume(t), e.preventDefault()) : t.hasClass("btn-startchat") && (Detail.startChat(t), 
            e.preventDefault())
        }), "undefined" != typeof _userInfo)
        {
            this.showMes();
            var a = this;
            if (_userInfo.isLogin)
            {
                if (!_userInfo.isPerfect)
                {
                    $(".container-tip");
                    setTimeout(function ()
                    {
                        Detail.canClick = !0, $(".avatar img").on("click", function ()
                        {
                            a.showGuide()
                        })
                    }, 4e3), $(".tip-box a").attr("href", "/niurenweb/complete/guide.html")
                }
            }
            else
            {
                $(".container-tip");
                setTimeout(function ()
                {
                    Detail.canClick = !0, $(".avatar img").on("click", function ()
                    {
                        $(".jconfirm").length && $(".jconfirm").remove(), Detail.canClick && a.showGuide()
                    })
                }, 4e3), $(".container-tip .tip-box>a").on("click", function ()
                {
                    if ($(".jconfirm").length && $(".jconfirm").remove(), 1 != $(this).data("load"))
                    {
                        var e = $(this);
                        e.data("load", !0), $(".container-tip").fadeOut(function ()
                        {
                            $.confirm(
                            {
                                content : $("#pop-hide-container").html(), title :!1, confirmButton :!1, 
                                cancelButton :!1, closeIcon :!0, columnClass : "pop-sign-box",
                                onOpen : function ()
                                {
                                    Singup.init()
                                },
                                onClose : function ()
                                {
                                    Singup.cdAni && (clearInterval(Singup.cdAni), Singup.cdAni = null), 
                                    a.showMes();
                                }
                            }), e.data("load", !1)
                        })
                    }
                })
            }
            if (_userInfo.hasKaAnotherS) {
                try {
                    _T.sendEvent("detail_with_another_s_from_same_boss") 
                }
                catch (e) {}
            }
        }
        var o = ($(".job-banner"), $(".smallbanner")), r = !1;
        if (!($(document).height() - $(window).height() < 260)) {
            return 0 != $(".job-banner").length && (t(), void $(window).scroll(function () 
            {
                t() 
            }));
        }
    },
    deliveResume : function (e)
    {
        var t = e.attr("data-url");
        e.attr("redirect-url");
        e.hasClass("btn-loading") || e.hasClass("btn-disabled") || (e.html('<i class="icon-loading"></i>投递中').addClass("btn-loading"), 
        $.ajax(
        {
            url : t, type : "post", dataType : "json", data : {},
            success : function (t)
            {
                var t = t;
                t.rescode ? 1 == t.rescode ? $.confirm(
                {
                    content : '<div class="deliver-pop"><p class="text">您的附件简历已经发送给Boss，请静候佳音。</p></div>', 
                    title : "投递成功", confirmButton : "确定", cancelButton :!1, closeIcon :!0, autoClose : "confirm|3000", 
                    columnClass : "pop-tip-box pop-detail",
                    onOpen : function ()
                    {
                        var e = this;
                        $(".btn-sendresume").text("已投递"), e.$content.find(".btn").on("click", function ()
                        {
                            $(".btn-sendresume").removeClass("btn-loading").addClass("btn-disabled"), 
                            e.close()
                        })
                    },
                    onClose : function () {}
                }) : 3 == t.rescode || 4 == t.rescode ? (Detail.showSign(t.rescode), e.text("投递简历").removeClass("btn-loading")) : 5 == t.rescode ? e.text("已投递").removeClass("btn-loading").addClass("btn-disabled") : 6 == t.rescode ? ($.confirm(
                {
                    content : '<div class="deliver-pop"><p class="text">请您上传附件简历，即可完成投递。</p><div class="resume-attachment"></div><div class="btns"><input id="fileupload" type="file" name="file" class="file" /><button type="button" class="btn">立即上传</button><button type="button" class="btn btn-outline">先聊聊</button></div></div>', 
                    title : "上传附件简历", confirmButton :!1, cancelButton :!1, closeIcon :!0, columnClass : "pop-tip-box pop-detail", 
                    onOpen : function ()
                    {
                        var e = this;
                        e.$content.find(".btn").on("click", function ()
                        {
                            "确定" == $(this).text() && ($(".job-detail .btn-sendresume").click(), e.close()), 
                            "先聊聊" == $(this).text() && ($(".job-detail .btn-startchat").click(), e.close())
                        }), Resume.setUpload()
                    },
                    onClose : function () {}
                }), e.text("投递简历").removeClass("btn-loading")) : 7 == t.rescode ? ($.confirm(
                {
                    content : '<div class="deliver-pop"><p class="text">' + t.resmsg + '</p><div class="btns"><button type="button" class="btn">再看看</button><button type="button" class="btn btn-outline" data-url="' + e.attr("data-url") + '&isSureSend=1" redirect-url="' + e.attr("redirect-url") + '">继续投递</button></div></div>', 
                    title : "您不太符合该boss的要求", confirmButton :!1, cancelButton :!1, closeIcon :!0, columnClass : "pop-tip-box pop-detail", 
                    onOpen : function ()
                    {
                        var e = this;
                        e.$content.find(".btn").on("click", function ()
                        {
                            "再看看" == $(this).text() && e.close(), "继续投递" == $(this).text() && (Detail.deliveResume($(this)), 
                            e.close())
                        })
                    },
                    onClose : function () {}
                }), e.text("投递简历").removeClass("btn-loading")) : 8 == t.rescode && ($.confirm(
                {
                    content : '<div class="deliver-pop"><p class="text">此职位不支持投递，请与Boss直接沟通</p><div class="btns"><button type="button" class="btn">确定</button></div></div>', 
                    title : "提示", confirmButton :!1, cancelButton :!1, closeIcon :!0, columnClass : "pop-tip-box pop-detail", 
                    onOpen : function ()
                    {
                        var e = this;
                        e.$content.find(".btn").on("click", function ()
                        {
                            "确定" == $(this).text() && e.close()
                        })
                    },
                    onClose : function () {}
                }), e.text("投递简历").removeClass("btn-loading")) : 1011 == t.code ? (Detail.showSign(1011), 
                e.text("投递简历").removeClass("btn-loading")) : (alert(t.resmsg), e.text("投递简历").removeClass("btn-loading"))
            },
            error : function (t)
            {
                e.text("投递简历").removeClass("btn-loading")
            }
        }))
    },
    startChat : function (e)
    {
        var e = e, t = e.attr("data-url");
        "javascript:;" == e.attr("href") && (e.addClass("btn-disabled"), $.ajax(
        {
            type : "POST", url : t, dataType : "JSON", data : null,
            success : function (t)
            {
                t.rescode ? 1 == t.rescode ? (window.location.href = e.attr("redirect-url"), e.attr("href", 
                e.attr("redirect-url")).text("继续沟通"), e.removeClass("btn-disabled")) : 3 != t.rescode && 4 != t.rescode || (Detail.showSign(t.rescode), 
                e.removeClass("btn-disabled")) : 1011 == t.code ? (Detail.showSign(1011), e.removeClass("btn-disabled")) : (alert(t.resmsg), 
                e.removeClass("btn-disabled"));
            },
            error : function (t)
            {
                e.removeClass("btn-disabled")
            }
        }))
    },
    showSign : function (e)
    {
        $.confirm(
        {
            content : $(".sign-wrap").html(), title :!1, confirmButton :!1, cancelButton :!1, closeIcon :!0, 
            columnClass : "pop-sign-box",
            onOpen : function ()
            {
                var t = this;
                Sign.init(t.$content), 4 == e ? (t.$content.find(".sign-welcome").show(), Sign.countDown(t.$content.find(".sign-welcome .welcome-box .count-down"), 
                function ()
                {
                    window.location.href = t.$content.find(".sign-welcome .welcome-box .btn").attr("href");
                })) : t.$content.find(".sign-pwd").show()
            },
            onClose : function ()
            {
                Sign.interCount && (clearInterval(Sign.interCount), Sign.interCount = null);
            }
        })
    },
    showMes : function ()
    {
        if (!_userInfo.isLogin || !_userInfo.isPerfect)
        {
            var e = $(".message");
            Detail.canClick = !1, $.each(_userInfo.text, function (t, i)
            {
                e.find(".text").eq(t).html(i)
            }), Detail.firstIn ? (setTimeout(function ()
            {
                $(".container-mes").fadeIn(), $(".container-mes").find(".avatar").css("display", "block")
            }, 1e3), setTimeout(function ()
            {
                e.css("top", "40px"), e.fadeIn(), e.find("li").eq(0).fadeIn()
            }, 1800), setTimeout(function ()
            {
                e.find("li").eq(1).fadeIn()
            }, 2600), setTimeout(function ()
            {
                e.find("li").eq(2).fadeIn(), Detail.canClick = !0
            }, 3400), Detail.firstIn = !1) : (e.css("top", "40px"), e.fadeIn(200), $(".container-mes").find(".avatar").fadeIn(200), 
            Detail.canClick = !0)
        }
    },
    showTip : function ()
    {
        if ((!_userInfo.isLogin || !_userInfo.isPerfect) && _userInfo.showTip)
        {
            var e = $(".avatar img");
            Detail.canClick = !1, setTimeout(function ()
            {
                $(".message").css("z-index", "101"), $(".aladingtip").fadeIn(), e.addClass("avatar-ani"), 
                e.mouseover(function ()
                {
                    $(this).removeClass("avatar-ani")
                }), e.mouseout(function ()
                {
                    $(this).addClass("avatar-ani")
                })
            }, 3400), $(".aladingtip").click(function ()
            {
                $(this).fadeOut(function ()
                {
                    e.removeClass("avatar-ani"), e.unbind("mouseover mouseout")
                })
            })
        }
    },
    showGuide : function ()
    {
        var e = $(".container-tip"), t = $(".container-mes"), i = this;
        t.find(".message").css({
            top : "20px", "-webkit-transition" : "all linear .2s", transition : "all linear .2s"
        }).fadeOut(), t.find(".avatar").fadeOut(), $(".aladingtip").fadeOut(), e.fadeIn(200), e.find(".tip-box").css(
        {
            "margin-bottom" : "35px", "-webkit-transition" : "all linear .2s", transition : "all linear .2s"
        }), e.find(".trangle").css({
            bottom : "69px", "-webkit-transition" : "all linear .2s", transition : "all linear .2s"
        }), e.find("a.close").click(function ()
        {
            e.find(".tip-box").css(
            {
                "margin-bottom" : "15px", "-webkit-transition" : "all linear .2s", transition : "all linear .2s"
            }), e.find(".trangle").css({
                bottom : "49px", "-webkit-transition" : "all linear .2s", transition : "all linear .2s"
            }), $(".message").css("top", "160px"), e.fadeOut(function ()
            {
                i.showMes()
            }), $(".jconfirm").length && $(".jconfirm").remove()
        })
    }
};
$(function ()
{
    Detail.init()
});
var Deliver = 
{
    init : function ()
    {
        0 != $(".deliver-list").length && (Deliver.isLoading = !1, Deliver.type = "list", Deliver.listContainer = $(".job-box"), 
        Deliver.listWrap = Deliver.listContainer.find(".deliver-list"), Deliver.tipsContainer = Deliver.listWrap.find(".data-tips"), 
        Deliver.listCon = Deliver.listWrap.find("ul"), Deliver.listMoreEl = Deliver.listWrap.find(".loadmore"), 
        Deliver.para = {
            page : 0
        },
        Deliver.getData(1, !0), Deliver.listMoreEl.on("click", function ()
        {
            Deliver.isLoading || Deliver.listMoreEl.hasClass("disabled") || Deliver.getData()
        }), Deliver.listCon.on("click", ".btn", function (e)
        {
            var t = $(this);
            Detail.startChat(t), e.preventDefault()
        }))
    },
    getData : function (e, t)
    {
        e && (Deliver.para.page = 0, Deliver.listCon.html(""), Deliver.listWrap.find(".user-list").hide(), 
        Deliver.listWrap.find(".detail-box").hide()), Deliver.para.page++, Deliver.isLoading = !0, Deliver.para.page > 1 && (Deliver.listMoreEl.addClass("disabled"), 
        Deliver.listMoreEl.text("正在加载中...")), $.ajax(
        {
            type : "GET", url : "/geek/deliveryinfo.json", dataType : "JSON", cache :!1, data : Deliver.para, 
            success : function (t)
            {
                var t = t, i = "";
                1 == t.rescode && (1 == t.hasMore ? Deliver.listMoreEl.removeClass("disabled").text("加载更多").show() : Deliver.para.page > 1 && Deliver.listMoreEl.addClass("disabled").text("没有更多了").show(), 
                "" == t.html ? e && Deliver.tipsContainer.html('<div class="data-blank"><i class="tip-nodata"></i><b>没有相关数据</b></div>').show() : (i += t.html, 
                Deliver.listCon.append(i), Deliver.tipsContainer.html("").hide()), e && Deliver.listCon.find("li").length < 10 && Deliver.listMoreEl.text("没有更多了").addClass("disabled").hide()), 
                Deliver.isLoading = !1
            },
            error : function (t)
            {
                Deliver.para.page > 1 && Deliver.listMoreEl.removeClass("disabled").text("数据加载出错").show(), 
                Deliver.isLoading = !1, e && (Deliver.listMoreEl.hide(), Deliver.tipsContainer.html('<div class="data-blank"><i class="tip-errordata"></i><b>数据加载出错</b></div>').show())
            }
        })
    }
};
$(function ()
{
    Deliver.init()
});
var Validate = 
{
    init : function (e, t)
    {
        var i = e, n = i.find("input,textarea");
        i.on("submit", function (e)
        {
            var t = !1;
            n.each(function ()
            {
                if ($(this).hasClass("required") && !Validate.check($(this), !0)) {
                    return t = !1, !1;
                }
                t = !0
            }), t && Resume.postData(i), e.preventDefault()
        }), n.each(function ()
        {
            var e = $(this).closest("dd").find(".count-num");
            ($(this).hasClass("required") || $(this).attr("data-range")) && (t || Validate.check($(this), 
            !1, e), $(this).bind("input keyup", function ()
            {
                Validate.check($(this), !1, e)
            }))
        }), i.find(".form-btns .btn-back").on("click", function ()
        {
            i.closest(".resume-item").removeClass("resume-item-open")
        }), i.find('input[name="locationName"]').on("blur", function ()
        {
            "" != $(this).val() && "" == $(this).parent().find('input[name="location"]').val() && ($(this).val(""), 
            Validate.showError($(this), "请输入正确的城市"))
        })
    },
    getLength : function (e)
    {
        var t = 0, e = e;
        len = e.length, charCode =- 1;
        for (var i = 0; i < len; i++)
        {
            charCode = e.charCodeAt(i), charCode >= 0 && charCode <= 128 || charCode >= 65248 && charCode <= 65373 || 12288 == charCode || 12289 == charCode || 12290 == charCode ? t += .5 : t += 1;
        }
        return Math.round(t);
    },
    check : function (e, t, i)
    {
        var e = e, n = e.attr("data-range"), s = Validate.getLength(e.val()), a = e.val().replace(/(\s*$)/g, 
        "");
        if ("" == a) {
            if (t) {
                return Validate.showError(e, e.attr("data-blank")), !1;
            }
            Validate.hideError(e)
        }
        else {
            Validate.hideError(e);
        }
        if ("locationName" == e.attr("name") && "" != a && "" == e.parent().find('input[name="location"]').val()) {
            return Validate.showError(e, "请输入正确的城市"), !1;
        }
        if (n)
        {
            if (n = n.split(","), i && i.length && i.html("<em" + (s > n[1] ? ' class="red"' : "") + ">" + s + "</em>/" + n[1]), 
            s > n[1] || s < n[0]) return Validate.showError(e, "请输入" + n[0] + "-" + n[1] + "个字"), !1;
            Validate.hideError(e)
        }
        return!0
    },
    showError : function (e, t)
    {
        var i = '<div class="tip-text">' + t + "</div>";
        Validate.hideError(e), e.closest("dd").find(".tip-text").remove(), $(i).appendTo(e.closest("dd")), 
        e.addClass("ipt-error")
    },
    hideError : function (e)
    {
        e.closest("dd").find(".tip-text").remove(), e.removeClass("ipt-error")
    }
};
$(function ()
{
    $(".form-resume").each(function ()
    {
        Validate.init($(this))
    })
});
var FormsUI = 
{
    init : function (e)
    {
        var t = e || $(document);
        if (this.dropSelect(t), this.prettyRadio(t), t.find(".ipt-datetimepicker").length)
        {
            var i = new Date;
            nowYear = i.getFullYear(), nowMonth = i.getMonth() + 1, nowThisDate = i.getDate(), t.find(".ipt-datetimepicker").each(function (e)
            {
                var t = $(this), i = t.attr("data-format") || "yyyy-mm-dd", n = t.hasClass("date-range"), 
                s = t.attr("data-today"), a = t.attr("data-type"), o = 2, r = 2;
                (a && "y-m-d" == a || "y-m" == a) && (o = 4), "yyyy-mm" == i && (r = 3), t.datetimepicker(
                {
                    format : i, startView : o, minView : r, autoclose : 1, weekStart : 1, todayHighlight :!0, 
                    endDate : nowYear + "-" + nowMonth + "-" + nowThisDate, todayBtn : s ? 1 : 0
                }).on("changeDate", function (e)
                {
                    if (s)
                    {
                        var i = t.closest(".form-row").find(".date-range").eq(0);
                        if (new Date(e.date) < new Date(i.val())) {
                            return alert("结束时间不能小于开始时间"), !1;
                        }
                    }
                    else if (n && "startDate" == t.attr("name"))
                    {
                        var a = t.closest(".form-row").find(".date-range").eq(1);
                        new Date(e.date).getFullYear() == (new Date).getFullYear() && new Date(e.date).getMonth() == (new Date).getMonth() ? (a.parent().addClass("show-prefix-today"), 
                        a.parent().find('input[name="now"]').val("1"), a.removeClass("required")) : (a.parent().removeClass("show-prefix-today"), 
                        a.parent().find('input[name="now"]').val(""), a.addClass("required")), a.val(t.val()), 
                        a.datetimepicker("setStartDate", t.val())
                    }
                    n && "endDate" == t.attr("name") && (new Date(e.date).getFullYear() == (new Date).getFullYear() && new Date(e.date).getMonth() == (new Date).getMonth() ? (t.parent().addClass("show-prefix-today"), 
                    t.parent().find('input[name="now"]').val("1"), t.removeClass("required")) : (t.parent().removeClass("show-prefix-today"), 
                    t.parent().find('input[name="now"]').val(""), t.addClass("required")))
                }), "birthday" == t.attr("name") && (t.datetimepicker("setStartDate", "1966-01"), t.datetimepicker("setEndDate", 
                "2000-12")), n && "startDate" == t.attr("name") && t.datetimepicker("setStartDate", "1996-01"), 
                n && "endDate" == t.attr("name") && ("" == t.val() && "" == t.closest(".form-row").find(".date-range").eq(0).val() ? t.datetimepicker("setStartDate", 
                "1996-01") : t.datetimepicker("setStartDate", t.closest(".form-row").find(".date-range").eq(0).val()))
            })
        }
        t.find(".start-salary").on("click", "li", function ()
        {
            FormsUI.changeSalary($(this).attr("data-val"))
        }), t.find(".select-industry .industry-cells").on("click", "span", function ()
        {
            var e = $(this).closest("dd");
            if ($(this).hasClass("selected"))
            {
                $(this).removeClass("selected"), e.find(".select-industry .industry-title h3").removeClass("red"), 
                e.find(".select-industry .industry-title p.gray").removeClass("red").text("最多可选 3 个技能标签");
            }
            else
            {
                if (e.find(".select-industry .industry-cells .selected").length > 2)
                {
                    return e.find(".select-industry .industry-title h3").addClass("red"), void e.find(".select-industry .industry-title p.gray").addClass("red").text("最多可选 3 个技能标签");
                }
                $(this).addClass("selected")
            }
        }), t.find(".select-industry .industry-title").on("click", ".btn", function (e)
        {
            e.preventDefault();
            var t = $(this).closest("dd"), i = t.find(".industry-title .ipt"), n = !1;
            if ("确定" == $(this).text())
            {
                var s = [], a = [];
                t.find(".select-industry .industry-cells .selected").each(function ()
                {
                    s.push($(this).text()), a.push($(this).attr("data-val") || $(this).text())
                }), s.length || (s.push("不限"), a.push("0")), t.find(".select-industry").closest("dd").find(".dropdown-select .ipt").val(s.join("·")), 
                t.find(".select-industry").closest("dd").find('.dropdown-select input[type="hidden"]').val(a.join("·")), 
                t.find(".select-industry").closest("dd").find(".dropdown-select").removeClass("dropdown-select-open"), 
                t.find(".select-industry").closest("dd").find(".dropdown-menu").removeClass("dropdown-menu-open")
            }
            else if ("取消" == $(this).text())
            {
                t.find(".select-industry").closest("dd").find(".dropdown-select").removeClass("dropdown-select-open"), 
                t.find(".select-industry").closest("dd").find(".dropdown-menu").removeClass("dropdown-menu-open");
            }
            else if ($(this).hasClass("btn-addtag"))
            {
                var o = Validate.getLength(i.val()), r = t.find(".select-industry .industry-title p.gray");
                if ("" == i.val().replace(/(\s*$)/g, "")) {
                    return r.text("请输入标签名称").addClass("red"), void curIpt.val("");
                }
                if (o > 6) {
                    return void r.text("请输入不超过6个字的标签名称").addClass("red");
                }
                if (t.find(".select-industry .industry-cells span").each(function ()
                {
                    if ($(this).text() == i.val()) {
                        return void (n = !0);
                    }
                    n = !1
                }), n) r.addClass("red").text("该标签已存在");
                else
                {
                    if (t.find(".industry-cells .blank-tag").remove(), r.text("最多可选 3 个技能标签"), t.find(".select-industry .industry-cells .selected").length > 2) {
                        return void r.addClass("red");
                    }
                    r.removeClass("red"), t.find(".industry-cells").prepend('<span class="selected">' + i.val() + "</span>"), 
                    i.val("")
                }
            }
        }), t.find(".ipt-autocomplete").on("input keyup", function ()
        {
            var e = $(this);
            FormsUI.suggestTimer && clearTimeout(FormsUI.suggestTimer), FormsUI.suggestTimer = setTimeout(function ()
            {
                e.parent().find('input[type="hidden"]').val(""), FormsUI.getSuggest(e)
            }, 200)
        }), t.find(".suggest-complete").on("click", "li", function ()
        {
            FormsUI.setSuggest($(this))
        })
    },
    prettyRadio : function (e)
    {
        var e = e || $(document);
        e && e.find(".radio-list").each(function ()
        {
            var e = $(this), t = e.find('input[type="hidden"]');
            e.on("click", "label", function ()
            {
                e.find("label").removeClass("radio-checked"), $(this).addClass("radio-checked"), t.val($(this).attr("data-val"))
            })
        })
    },
    dropSelect : function (e)
    {
        function t(e, t, i)
        {
            if (t.hasClass("ipt-range") && "start" == t.attr("data-range"))
            {
                var n = t.closest(".form-row"), s = t.closest("dd").find(".dropdown-menu ul"), a = n.find('.ipt-range[data-range="end"]'), 
                o = a.parent().find('input[type="hidden"]'), r = a.closest("dd").find(".dropdown-menu ul"), 
                l = e.attr("data-val") || e.val(), d = '<li data-val="-1">至今</li>', c = (new Date).getFullYear(), 
                h = parseInt(l) + 4;
                s.find("li").each(function ()
                {
                    $(this).attr("data-val") >= l && l != c && (d += $(this).prop("outerHTML"))
                }), r.html(d), i || (h < c ? (a.val(h), o.val(h)) : (a.val(r.find("li").eq(0).text()), 
                o.val(r.find("li").eq(0).attr("data-val"))))
            }
        }
        var e = e || $(document);
        e && (e.find(".dropdown-select").each(function ()
        {
            var i = $(this), n = i.find('.ipt-range[data-range="start"]'), s = i.find('input[name="highSalary"]');
            i.on("click", function ()
            {
                $(this).hasClass("dropdown-disabled") || ($(this).hasClass("dropdown-select-open") || (e.find(".dropdown-select-open").removeClass("dropdown-select-open"), 
                e.find(".dropdown-menu-open").removeClass("dropdown-menu-open")), $(this).toggleClass("dropdown-select-open"), 
                i.next(".dropdown-menu").toggleClass("dropdown-menu-open"))
            }), i.find('.ipt-range[data-range="end"]') && t(n, n, !0), "" == s.val() && (s.closest(".dropdown-select").addClass("dropdown-disabled"), 
            s.closest(".dropdown-select").find(".ipt").attr("disabled", "disabled")), s.length && "" != s.val() && ("请选择" == s.val() ? s.parent().hide() : (s.val(s.parent().find(".ipt").val()), 
            FormsUI.changeSalary(s.closest("dd").find('input[name="lowSalary"]').val().replace("K", ""), 
            !0)))
        }), e.find(".dropdown-menu").each(function ()
        {
            var i = $(this), n = i.prev(".dropdown-select"), s = n.find("input[readonly]"), a = n.find('input[type="hidden"]'), 
            o = i.find(".select-tree"), r = i.find(".tags-cells");
            o.length && (3 == o.attr("data-level") && o.html('<ul class="tree-1"></ul><ul class="tree-2"></ul><ul class="tree-3"></ul>'), 
            2 == o.attr("data-level") && o.html('<ul class="tree-1"></ul><ul class="tree-2"></ul>'), FormsUI.getTreeData(o, 
            jobData)), r.length && Resume.getTag(e, !0), i.on("click", "li", function ()
            {
                if ($(this).closest(".select-tree").length)
                {
                    var e = $(this).closest(".select-tree").attr("data-level");
                    if ($(this).parent().find("li").removeClass("selected"), $(this).addClass("selected"), 
                    3 == e)
                    {
                        if ($(this).closest(".tree-1").length)
                        {
                            return $(this).closest(".select-tree").find(".tree-3").hide(), FormsUI.getTreeData(o, 
                            jobData, $(this).attr("data-id")), !1;
                        }
                        if ($(this).closest(".tree-2").length)
                        {
                            return $(this).closest(".select-tree").find(".tree-3").show(), a.attr("level2", 
                            $(this).attr("data-id")), FormsUI.getTreeData(o, jobData, $(this).closest(".select-tree").find(".tree-1 .selected").attr("data-id"), 
                            $(this).attr("data-id")), !1;
                        }
                    }
                    if (2 == e)
                    {
                        if ($(this).closest(".tree-1").length)
                        {
                            return $(this).closest(".select-tree").find(".tree-3").hide(), FormsUI.getTreeData(o, 
                            jobData, $(this).attr("data-id")), !1;
                        }
                        if ($(this).closest(".tree-2").length)
                        {
                            return $(this).closest(".select-tree").find(".tree-3").show(), a.attr("level2", 
                            $(this).attr("data-id")), FormsUI.getTreeData(o, jobData, $(this).closest(".select-tree").find(".tree-1 .selected").attr("data-id"), 
                            $(this).attr("data-id")), !1;
                        }
                    }
                }
                if (t($(this), s), s.val($(this).text()), a.val($(this).attr("data-val")), a.closest("dd").find(".tip-text").remove(), 
                i.removeClass("dropdown-menu-open"), n.removeClass("dropdown-select-open"), "position" == a.attr("name"))
                {
                    var r = $(this).closest(".form-resume").find(".select-tags");
                    r.closest("dd").find(".ipt").val(""), r.closest("dd").find('input[type="hidden"]').val(""), 
                    Resume.getTag(r.closest(".form-resume"))
                }
            })
        }), $(document).on("click", function (t)
        {
            $(t.target).closest(".dropdown-menu").length || $(t.target).closest(".dropdown-select").length || (e.find(".dropdown-select").removeClass("dropdown-select-open"), 
            e.find(".dropdown-menu").removeClass("dropdown-menu-open"))
        }))
    },
    getTreeData : function (e, t, i, n)
    {
        var s, a, o, r = "", l = "", d = "";
        for (s = 0; s < t.length; s++)
        {
            var c = t[s].children;
            if (r += '<li data-id="' + t[s].id + '">' + t[s].name + "</li>", c && i && t[s].id == i) for (a = 0;
            a < c.length;
            a++)
            {
                var h = c[a].children;
                if (l += '<li data-id="' + c[a].id + '">' + c[a].name + "</li>", h && n && c[a].id == n) {
                    for (o = 0; o < h.length; o++) {
                        d += '<li data-val="' + h[o].id + '">' + h[o].name + "</li>";
                    }
                }
            }
        }
        i || (e.find(".tree-1").html(r), e.find(".tree-2").html('<li class="blank">选择职类</li>')), n ? e.find(".tree-3").html(d) : i && e.find(".tree-2").html(l)
    },
    changeSalary : function (e, t)
    {
        var i = $(".end-salary"), n = i.find(".ipt"), s = i.find('input[type="hidden"]'), a = i.find("ul"), 
        e = e, o = 0;
        if (e && (n.closest(".dropdown-select").removeClass("dropdown-disabled"), n.removeAttr("disabled")), 
        "面议" == e ? (n.val("面议").parent().hide(), s.val("面议")) : (e = parseInt(e, 10), n.val(n.val() + "K").parent().show()), 
        e <= 50)
        {
            t || (n.val(e + 1 + "K"), s.val(e + 1)), a.html("");
            for (var r = e + 1; r <= 2 * e; r++) {
                var l = "";
                l += '<li data-val="' + r + '">' + r + "K</li>", $(l).appendTo(a)
            }
        }
        if (e > 50 && e < 200)
        {
            t || (n.val(e + 10 + "K"), s.val(e + 10)), a.html(""), o = e < 160 ? e + 50 : 2 * e, o > 200 && (o = 200);
            for (var r = e + 10; r <= o; r += 10) {
                var l = "";
                l += '<li data-val="' + r + '">' + r + "K</li>", $(l).appendTo(a)
            }
        }
    },
    getSuggest : function (el)
    {
        var el = el, url = el.attr("data-url"), keyword = el.val(), resultPannel = el.parent().find(".suggest-complete");
        if ("" == keyword) {
            return void resultPannel.removeClass("dropdown-menu-open");
        }
        resultPannel.html("<ul></ul>").addClass("dropdown-menu");
        var resultCon = resultPannel.find("ul");
        $.ajax(
        {
            type : "POST", url : url, dataType : "JSON", data : {
                query : keyword
            },
            success : function (result)
            {
                var result = result.data, str = "", i;
                if ("string" == typeof result && (result = eval("(" + result + ")")), result && result.length)
                {
                    for (i = 0; i < result.length; i++) {
                        str += '<li data-val="' + result[i].code + '">' + result[i].hlname + "</li>";
                    }
                    resultCon.html(str), resultPannel.addClass("dropdown-menu-open")
                }
            },
            error : function (e) {}
        })
    },
    setSuggest : function (e)
    {
        var t = e.closest("dd").find(".ipt"), i = e.closest("dd").find('input[name="location"]');
        t.val(e.text()), i.val(e.attr("data-val")), e.closest(".suggest-complete").removeClass("dropdown-menu-open"), 
        t.parent().find(".tip-text").remove()
    }
};
$(function ()
{
    ($(".resume").length || $(".job-detail").length) && FormsUI.init()
});
var ResumeEditor = {
    init : function () {}
},
Resume = 
{
    previewUrl : null, attachmentName : null,
    init : function ()
    {
        if ($("#pop-resume").length)
        {
            if ($("#pop-resume .pop-success .content").css({
                background : "none", "overflow-y" : "auto", "overflow-x" : "hidden"
            }), $(".resume-loading").hide(), $("#pop-resume .pop-item .content").height($(window).height() - 200), 
            $("#pop-resume .pop-success .content").height($(window).height() - 100), $("#pop-resume .pop-resume-close").on("click", 
            function ()
            {
                Resume.removePopResume(), $(".preview-refresh").parent().show(), $(".resume-loading").hide()
            }), $(".btn-confim").on("click", function ()
            {
                Resume.stateChange(), Resume.saveResume(), Resume.removePopResume()
            }), $(".btn-change , .upload-again").on("click", function ()
            {
                Resume.removePopResume(), $(".jconfirm-bg").show(), $("#fileupload").click(), $(".preview-refresh").parent().show(), 
                $(".resume-loading").hide()
            }), $(".preview-refresh").click(function (e)
            {
                $(this).parent().hide(), $(".resume-loading").show(), Resume.loadResumeImg("/resume/pic4Owner/" + Resume.previewUrl)
            }), 0 != $(".progress-score").length) {
                var e = $(".progress-score").text();
                $(".progress p").css("width", e)
            }
            if (Resume.ownerTags = [], Resume.canSubmit = !1, $(".resume-item").on("click", ".link-add, .link-edit", 
            function (e)
            {
                Resume.getData($(this)), e.preventDefault()
            }), $(".resume-item").on("click", ".link-delete", function (e)
            {
                Resume.removeData($(this)), e.preventDefault()
            }), $(".resume-nav .link-edit").on("click", function (e)
            {
                var t = $(this).attr("data-target");
                Resume.getData($("#" + t).find(".link-edit")), e.preventDefault()
            }), $(".resume-nav .link-add").on("click", function (e)
            {
                var t = $(this).attr("data-target");
                Resume.getData($("#" + t).find(".link-add")), e.preventDefault()
            }), $("#fileupload").length && Resume.setUpload(), Resume.deleteFile(), $(".figure .upload-layer").on("click", 
            function () {}), $(".sider-resume").length)
            {
                var t = $(".sider-resume"), i = t.offset().top;
                $(window).on("scroll", function ()
                {
                    $(this).scrollTop() > i ? t.addClass("fixed-nav") : t.removeClass("fixed-nav")
                })
            }
            $(".btn-upload-file").hover(function ()
            {
                $(".file-result").css("background", "#eee")
            },
            function ()
            {
                $(".file-result").css("background", "#f7f7f7")
            }), $(".upload-op .btn-upload-file").hover(function ()
            {
                $(".upload-op .change").css("color", "#5dd5c8")
            },
            function ()
            {
                $(".upload-op .change").css("color", "#000")
            }), "cpc_user_resume" == $("#page_key_name").val() && setTimeout(function ()
            {
                if (window._T)
                {
                    var e = window.screen.width, t = window.screen.height, i = window.innerWidth, n = window.innerHeight;
                    _T.sendEvent("screen-" + e + "-" + t + "|avail-" + i + "-" + n)
                }
            }, 1e3)
        }
    },
    getTag : function (e, t)
    {
        var i = e, n = i.find(".tags-cells"), s = "", a = "", o = (n.closest("dd").find(".ipt"), i.find('input[name="position"]').attr("level2"));
        o && $.ajax(
        {
            type : "GET", url : "/webscan/positionSkill", dataType : "JSON", data : {
                positonLv2 : o
            },
            success : function (e)
            {
                var i, e = e, o = "", r = n.closest("dd").find(".ipt").val().split("·"), l = [];
                if (e.length > 0)
                {
                    for (i = 0; i < e.length; i++)
                    {
                        o = $.inArray(e[i], r) > - 1 ? ' class="selected"' : "", a += "<span" + o + ' ka="tag-' + e[i] + '">' + e[i] + "</span>", 
                        l.push(e[i]);
                    }
                    if (t)
                    {
                        for (var d = 0; d < r.length; d++)
                        {
                            $.inArray(r[d], l) ==- 1 && (Resume.ownerTags.push(r[d]), s += '<span class="selected" ka="tag-' + r[d] + '">' + r[d] + "</span>");
                        }
                    }
                }
                else {
                    a = '<div class="blank-tag">还未添加标签</div>';
                }
                n.html(s + a)
            },
            error : function (e) {}
        })
    },
    getData : function (el)
    {
        var el = el, url = el.attr("data-url"), formCon = el.closest(".resume-item").find(".item-form");
        $(".resume-item").removeClass("resume-item-open"), $.ajax(
        {
            type : "POST", url : url, dataType : "JSON", data : null,
            success : function (result)
            {
                var result = result;
                if ("string" == typeof result && (result = eval("(" + result + ")")), 1 == result.rescode)
                {
                    formCon.html(result.html), el.closest(".resume-item").addClass("resume-item-open"), 
                    formCon.find(".form-btns .btn-back").on("click", function ()
                    {
                        el.closest(".resume-item").removeClass("resume-item-open"), $("html,body").animate({
                            scrollTop : el.closest(".resume-item").offset().top + "px"
                        }, 500)
                    }), formCon.find(".form-btns .btn-delete").unbind("click").on("click", function (e)
                    {
                        Resume.removeData(el, $(this)), e.preventDefault()
                    });
                    var isAdd = !1;
                    if (!result.resoper) {
                        var isAdd = !0;
                    }
                    FormsUI.init(formCon.find("form"), isAdd), Validate.init(formCon.find("form"), isAdd), 
                    PlaceholderCheck.init(formCon.find("form"))
                }
                else {
                    Resume.showError(result.resmsg);
                }
                $("html,body").animate({
                    scrollTop : el.closest(".resume-item").offset().top + "px"
                }, 500)
            },
            error : function (e)
            {
                Resume.showError()
            }
        })
    },
    postData : function (form)
    {
        var formEl = form, url = formEl.attr("action"), primaryWrap = formEl.closest(".resume-item"), 
        primaryCon = primaryWrap.find(".item-primary"), primaryModule = primaryWrap.attr("id");
        formEl.find(".show-prefix-today").length && (formEl.find('input[name="endDate"]').val(""), formEl.find('input[name="now"]').val("1")), 
        $.ajax(
        {
            type : "POST", url : url, dataType : "JSON", data : formEl.serialize(),
            success : function (result)
            {
                /*var result = result, str = "", resultId = "";
                if ("string" == typeof result && (result = eval("(" + result + ")")), 1 == result.rescode)
                {
                    if (primaryWrap.removeClass("resume-item-open"), str = result.html, "resume-userinfo" == primaryModule && (primaryCon.find(".name").remove(), 
                    primaryCon.find(".info-labels").remove(), primaryCon.append(str)), "resume-summary" == primaryModule && (primaryCon.find(".text").remove(), 
                    primaryCon.append(str)), "resume-purpose" == primaryModule && (resultId = $(str).attr("id"), 
                    primaryWrap.find("#" + resultId).length ? primaryWrap.find("#" + resultId).after(str).remove() : primaryCon.find(".info-labels").prepend(str)), 
                    "resume-history" == primaryModule || "resume-project" == primaryModule || "resume-education" == primaryModule)
                    {
                        resultId = $(str).attr("id");
                        var titleEl = primaryCon.find(".title"), loadEl = "";
                        "resume-history" == primaryModule && (loadEl = "history-project"), "resume-project" == primaryModule && (loadEl = "history-project"), 
                        "resume-education" == primaryModule && (loadEl = "history-education"), primaryCon.load(window.location.href + " #" + primaryModule + " ." + loadEl, 
                        function ()
                        {
                            primaryCon.prepend(titleEl)
                        })
                    }
                    "resume-social" == primaryModule && (resultId = $(str).attr("id"), primaryCon.find("#" + resultId).length ? primaryCon.find("#" + resultId).after(str).remove() : primaryCon.find(".social-account").prepend(str)), 
                    $("html,body").animate({
                        scrollTop : formEl.closest(".resume-item").offset().top + "px"
                    }, 500)
                }
                else {
                    Resume.showError(result.resmsg);
                }
                Resume.canSubmit = !0*/
            },
            error : function ()
            {
                Resume.canSubmit = !0, Resume.showError()
            }
        }), Resume.canSubmit = !1
    },
    removeData : function (el, btn)
    {
        var el = el, url = el.attr("data-url"), primaryWrap = el.closest(".resume-item"), primaryCon = primaryWrap.find(".item-primary"), 
        primaryModule = primaryWrap.attr("id"), formCon = el.closest(".resume-item").find(".item-form");
        btn && (url = btn.attr("data-url")), $.confirm(
        {
            content : '<div class="tip-alert">删除后不可恢复，确认删除吗？</div>', title : "温馨提示", closeIcon :!0, columnClass : "pop-tip-box pop-tip", 
            confirm : function ()
            {
                var _self = this;
                return $.ajax( {
                    type : "POST", url : url, dataType : "JSON", data : {},
                    success : function (result)
                    {
                        var result = result;
                        if ("string" == typeof result && (result = eval("(" + result + ")")), result.rescode)
                        {
                            if (el.closest(".resume-item").removeClass("resume-item-open"), "resume-purpose" == primaryModule && el.parent().parent().remove(), 
                            "resume-history" == primaryModule || "resume-project" == primaryModule || "resume-education" == primaryModule)
                            {
                                var closeParent = el.closest(".item-primary");
                                el.closest(".history-item").remove(), "resume-project" != primaryModule && (1 == closeParent.find(".history-item").length ? (closeParent.find(".history-item .op .link-delete").hide(), 
                                closeParent.find(".history-item .op .vline").hide()) : (closeParent.find(".history-item .op .link-delete").show(), 
                                closeParent.find(".history-item .op .vline").show()))
                            }
                            "resume-social" == primaryModule && el.closest(".account-item").remove(), 
                            $("html,body").animate({
                                scrollTop : primaryWrap.closest(".resume-item").offset().top + "px"
                            }, 500)
                        }
                        else {
                            Resume.showError(result.resmsg);
                        }
                        _self.close()
                    }
                }), !1
            },
            error : function ()
            {
                Resume.showError()
            }
        })
    },
    showError : function (e)
    {
        if (!e) {
            var e = "服务器错误，请稍后再试";
        }
        $.confirm(
        {
            content : '<div class="tip-alert">' + e + "</div>", title : "温馨提示", closeIcon :!0, confirmButton : "确定", 
            cancelButton :!1, columnClass : "pop-tip-box pop-tip"
        })
    },
    showPopResume : function (e)
    {
        var t = $("#pop-resume .pop-item");
        $("#pop-resume").show(), t.hide(), t.eq(e).show(), $("body").css("overflow-y", "hidden"), $(".jconfirm-bg").hide()
    },
    removePopResume : function ()
    {
        $("#pop-resume").hide(), $("body").css("overflow-y", "visible")
    },
    stateChange : function ()
    {
        $(".upload").remove(), Resume.reLoadResume = !1, 0 == $(".file-name").length ? $(".resume-attachment").append('<div class="loadresume"><span class="file-name">' + Resume.attachmentName + '</span><div class="upload-op"><i class="change">更改</i><a class="btn-upload-file"><input id="fileupload" type="file" name="file" ka="user-resume-change"></a></div><i class="fz-resume fz-close" ka="user-resume-delete"></i></div></div>') : $(".file-name").text(Resume.attachmentName), 
        $(".jconfirm-bg").show(), $(".deliver-pop .btns .btn").eq(0).text("确定"), $(".deliver-pop .btns .file").remove()
    },
    isImgLoad : function ()
    {
        $(".pop-success .content img").each(function ()
        {
            $(this).load(function ()
            {
                $(".preview-refresh").parent().show(), $(".resume-loading").hide(), Resume.showPopResume(1)
            }), $(this).error(function ()
            {
                Resume.showPopResume(3)
            })
        })
    },
    setUpload : function ()
    {
        var url = "/geek/attresume/upload.json", elProgress = $(".progress"), typeRule = /(\.|\/)(ppt|pptx|doc|docx|pdf|png|jpg|jpeg)$/i, 
        maxSize = 2e6;
        $(".resume-attachment,.deliver-pop").on("click", "#fileupload", function ()
        {
            $(this).blur(), $("#fileupload").fileupload(
            {
                type : "POST", url : "/geek/attresume/upload.json", dataType : "text", acceptFileTypes : typeRule, 
                maxFileSize : 2e6,
                add : function (e, t)
                {
                    var i = t.files[0], n = i.name;
                    $(".resume-title").text(n), typeRule.test(n) ? (Resume.reLoadResume = !1, t.submit(), 
                    Resume.showPopResume(0)) : alert("请选择有效的文件")
                },
                done : function (e, data)
                {
                    var result = data.result;
                    "string" == typeof result && (result = eval("(" + result + ")")), 1 == result.rescode ? (Resume.previewUrl = result.previewUrl, 
                    Resume.loadResumeImg("/resume/pic4Owner/" + result.previewUrl), Resume.attachmentName = result.attachmentName) : Resume.showPopResume(2);
                }
            }).prop("disabled", !$.support.fileInput).parent().addClass($.support.fileInput ? void 0 : "disabled")
        }), $(".resume-attachment").trigger("click")
    },
    saveResume : function ()
    {
        $.ajax(
        {
            type : "POST", url : "/geek/attresume/save.json?previewUrl=" + Resume.previewUrl, dataType : "JSON", 
            data : {},
            success : function (e)
            {
                1 == e.rescode || alert(e.resmsg)
            }
        })
    },
    loadResumeImg : function (e)
    {
        var t = new Image;
        t.src = e, t.onload = function ()
        {
            Resume.consoleSuccessLog(), $(".pop-success .content").html('<img src="' + e + '" />'), $(".pop-success .content img").css({
                display : "block", width : "810px", margin : "0 auto"
            }), $(".preview-refresh").parent().show(), $(".resume-loading").hide(), $(".pop-success .content .msg").hide(), 
            $(".pop-success .content .resume-loading").hide(), Resume.showPopResume(1)
        },
        t.onerror = function ()
        {
            Resume.reLoadResume && (Resume.showPopResume(3), Resume.consoleLog(), $(".preview-fail .content .msg").show(), 
            $(".preview-fail .content .resume-loading").hide()), Resume.reLoadResume || (Resume.loadResumeImg(e), 
            Resume.reLoadResume = !0)
        }
    },
    consoleLog : function ()
    {
        $.ajax(
        {
            type : "POST", url : "/actionLog/previewFail.json", dataType : "JSON", data : {
                previewUrl : Resume.previewUrl
            },
            success : function (e) {}
        })
    },
    consoleSuccessLog : function ()
    {
        $.ajax(
        {
            type : "POST", url : "/actionLog/previewSuccess.json", dataType : "JSON", data : {
                previewUrl : Resume.previewUrl
            },
            success : function (e) {}
        })
    },
    deleteFile : function ()
    {
        $(".resume-attachment").delegate(".fz-close", "click", function ()
        {
            $.confirm(
            {
                content : '<div class="tip-alert">确认删除该附件简历吗？</div>', title : "温馨提示", closeIcon :!0, columnClass : "pop-tip-box pop-tip", 
                confirm : function ()
                {
                    var e = this;
                    $.ajax(
                    {
                        type : "POST", url : "/geek/attresume/delete.json", dataType : "JSON", data : {},
                        success : function (t)
                        {
                            1 == t.rescode && ($(".resume-attachment .loadresume").remove(), $(".resume-attachment").append('<div class="upload"><div class="file-result">上传附件简历</div><div class="file-btn"><a class="btn-upload-file"><input id="fileupload" type="file" name="file" ka="user-resume-upload-file"></a></div><div class="file-tip"><p>支持 doc、docx、pdf、jpg、png 格式</p></div></div>')), 
                            e.close()
                        }
                    });
                    try {
                        _T.sendEvent("user-resume-delete-submit")
                    }
                    catch (e) {}
                    return!1
                },
                cancel : function ()
                {
                    try {
                        _T.sendEvent("user-resume-delete-cancel")
                    }
                    catch (e) {}
                },
                error : function ()
                {
                    Resume.showError()
                }
            })
        })
    }
};
$(function ()
{
    ($(".resume").length || $(".job-detail").length) && Resume.init()
});
var Sign = 
{
    init : function (e)
    {
        e && PlaceholderCheck.init();
        var t = e || $(".sign-wrap");
        Sign.source = getQueryString("s"), Sign.source && (Sign.directUrls = 
        {
            recharge : "/weixin/official/toPay", actRecharge : "/special3SignUp/home?signUpId=" + getQueryString("signUpId"), 
            wapSem : "/"
        }), t.find(".sign-tab").on("click", "span", function ()
        {
            var e = $(this);
            e.hasClass("cur") || (e.hasClass("link-signin") && Sign.showPannel(t, "signin"), e.hasClass("link-sms") && Sign.showPannel(t, 
            "sms"), e.hasClass("link-scan") && Sign.showPannel(t, "scan"))
        }), t.find(".text-tip .link-signup").on("click", function ()
        {
            Sign.showPannel(t, "register")
        }), t.find(".text-tip .link-signin").on("click", function ()
        {
            Sign.showPannel(t, "signin")
        }), Sign.dropSelect(t), t.find("form").on("submit", function (e)
        {
            Sign.checkForm($(this)), e.preventDefault()
        }), t.find(".btn-sms").on("click", function ()
        {
            var e = $(this).closest("form");
            Sign.checkForm(e, !0)
        }), t.find(".ipt").on("focus", function (e)
        {
            $(this).parent().addClass("focus-wrap")
        }).on("blur", function ()
        {
            $(this).parent().removeClass("focus-wrap")
        }), t.find(".ipt-phone").removeAttr("ka").on("click", function ()
        {
            try {
                _T.sendEvent($(this).closest(".sign-form").data("flow") + "_mobileck")
            }
            catch (e) {}
        }), t.find(".verifyimg").on("click", function ()
        {
            $(this).attr("src", "/captcha/?randomKey=" + $(this).closest(".form-row").find(".randomkey").val() + "&_r=" + (new Date).getTime());
            try {
                _T.sendEvent("signin_verify_code")
            }
            catch (e) {}
        }), t.find(".sign-form").each(function ()
        {
            var e = "";
            if ($(this).hasClass("sign-pwd") && (e = "sincode"), $(this).hasClass("sign-sms") && (e = "sinsms"), 
            $(this).hasClass("sign-scan") && (e = "sinqr"), $(this).hasClass("sign-register") && (e = "sup"), 
            $(this).data("flow", e), $(this).is(":visible")) try {
                _T.sendEvent(e + "_load")
            }
            catch (e) {}
            if ($(this).find(".randomkey").length && "" == $(this).find(".randomkey").val()) {
                return Sign.getRandomkey(t, $(this)), !1;
            }
        }), $(".sign-scan").is(":visible") && Sign.scanPending(t), cookie.get("hasShowLoginTip") ? t.find(".qrcode-tip").hide() : t.find(".qrcode-tip").show(), 
        t.find(".qrcode-tip .gray").on("click", function ()
        {
            t.find(".qrcode-tip").hide(), cookie.set("hasShowLoginTip", "1", 3e4)
        })
    },
    showPannel : function (e, t)
    {
        e.find(".sign-form").hide();
        var i, n;
        switch (t)
        {
            case "signin":
                i = e.find(".sign-pwd"), n = "sincodeck";
                break;
            case "sms":
                i = e.find(".sign-sms"), n = "sinsmsck";
                break;
            case "scan":
                i = e.find(".sign-scan"), n = "sinqrck";
                break;
            case "register":
                i = e.find(".sign-register"), n = "supck";
                break;
            case "welcome":
                i = e.find(".sign-welcome");
                break;
            case "history":
                i = e.find(".sign-history");
                break;
            case "deliver":
                i = e.find(".sign-deliver");
                break;
            case "validate":
                i = e.find(".sign-validate")
        }
        if (n) {
            i.data("flow", n);
            try {
                _T.sendEvent(n + "_load")
            }
            catch (e) {}
        }
        i.show(), i.find(".verifyimg").click(), "scan" == t && Sign.scanPending(e)
    },
    dropSelect : function (e)
    {
        e.find(".dropdown-select").each(function ()
        {
            $(this).on("click", function ()
            {
                $(this).hasClass("dropdown-disabled") || ($(this).toggleClass("dropdown-select-open"), 
                $(this).closest(".form-row").find(".dropdown-menu").toggleClass("dropdown-menu-open"))
            })
        }), e.find(".dropdown-menu").each(function ()
        {
            var e = $(this), t = e.closest(".form-row").find(".dropdown-select"), i = t.find(".text-select"), 
            n = t.find('input[type="hidden"]');
            e.on("click", "li", function ()
            {
                i.text($(this).attr("data-val")), n.val($(this).attr("data-val")), n.closest("dd").find(".tip-text").remove(), 
                e.removeClass("dropdown-menu-open"), t.removeClass("dropdown-select-open")
            })
        }), $(document).on("touchend click", function (t)
        {
            $(t.target).closest(".dropdown-menu").length || $(t.target).closest(".dropdown-select").length || (e.find(".dropdown-select").removeClass("dropdown-select-open"), 
            e.find(".dropdown-menu").removeClass("dropdown-menu-open"))
        })
    },
    getRandomkey : function (e, t)
    {
        var t = t, i = t.find(".ipt-code"), n = i.attr("data-url"), s = t.find(".randomkey");
        "" == s.val() && $.ajax(
        {
            url : n, type : "POST", dataType : "json", data : null,
            success : function (t)
            {
                1 == t.rescode && (e.find(".randomkey").val(t.randomKey), s.parent().find(".verifyimg").click(), 
                e.find(".sign-scan .qrcode-box img").attr("src", "/qrcode/" + t.qrId), e.find(".uuid").val(t.qrId))
            },
            error : function (e) {}
        })
    },
    checkForm : function (e, t)
    {
        var e = e, i = e.find(".ipt-phone"), n = e.find('input[name="regionCode"]'), s = e.find(".ipt-pwd"), 
        a = e.find(".ipt-code"), o = e.find(".ipt-sms");
        e.closest(".sign-form").find(".tip-error");
        if (i.length)
        {
            if ("" == i.val())
            {
                Sign.showError(e, "请填写手机号"), i.focus();
                try {
                    _T.sendEvent(i.closest(".sign-form").data("flow") + "_mobile")
                }
                catch (e) {}
                return!1
            }
            if ("+86" == n.val() && !/^(1[35678][0-9]{9})$/.test(i.val()))
            {
                Sign.showError(e, "请正确填写手机号"), i.focus();
                try {
                    _T.sendEvent(i.closest(".sign-form").data("flow") + "_mobile")
                }
                catch (e) {}
                return!1
            }
            if (!/^(\d{6,11})$/.test(i.val()))
            {
                Sign.showError(e, "请正确填写手机号"), i.focus();
                try {
                    _T.sendEvent(i.closest(".sign-form").data("flow") + "_mobile")
                }
                catch (e) {}
                return!1
            }
            Sign.hideError(e)
        }
        if (s.length) {
            if ("" == s.val()) {
                return Sign.showError(e, "请填写密码"), s.focus(), !1;
            }
            Sign.hideError(e)
        }
        if (a.length)
        {
            if ("" == a.val()) {
                return Sign.showError(e, "请填写验证码"), a.focus(), !1;
            }
            if (!a.val().match(/^.{4}$/)) return Sign.showError(e, "请填写正确的验证码"), a.focus(), !1;
            Sign.hideError(e)
        }
        if (o.length && !t)
        {
            if ("" == o.val()) {
                return Sign.showError(e, "请填写短信验证码"), o.focus(), !1;
            }
            if (!o.val().match(/^.{4}$/)) return Sign.showError(e, "请填写正确的短信验证码"), o.focus(), !1;
            Sign.hideError(e)
        }
        Sign.postData(e, t)
    },
    postData : function (formEl, isSms)
    {
        var formEl = formEl, formType = formEl.closest(".sign-form"), btnSms = formEl.find(".btn-sms"), 
        url = formEl.attr("action"), btnEl = formEl.find(".form-btn .btn");
        if (isSms)
        {
            if (btnSms.hasClass("btn-disabled")) {
                return;
            }
            url = btnSms.attr("data-url"), btnSms.addClass("btn-disabled").html("请稍后")
        }
        else {
            if (btnEl.hasClass("btn-disabled")) {
                return;
            }
            btnEl.addClass("btn-disabled")
        }
        $.ajax(
        {
            url : url, type : "post", dataType : "json", data : formEl.serialize(),
            success : function (result)
            {
                var result = result;
                if ("string" == typeof result && (result = eval("(" + result + ")")), 1 == result.rescode)
                {
                    if (formType.hasClass("sign-pwd") && Sign.callbackPwd(formEl, result), formType.hasClass("sign-sms"))
                    {
                        if (isSms)
                        {
                            if (2 == result.type) 
                            {
                                btnSms.html('已发送(<em class="num">60s</em>)').addClass("count-down btn-disabled"), 
                                Sign.countDown(btnSms, function () 
                                {
                                    btnSms.html("发送验证码").removeClass("count-down btn-disabled") 
                                }), btnSms.parent().find(".ipt-sms").focus();
                                try {
                                    _T.sendEvent("signin_sms_send_sms") 
                                }
                                catch (e) {}
                            }
                            else
                            {
                                Sign.showError(formEl, result.resmsg, !0), btnSms.html("发送验证码").removeClass("count-down btn-disabled");
                            }
                            else {
                                Sign.callbackSms(formEl, result);
                            }
                            if (formType.hasClass("sign-register"))
                            {
                                if (isSms)
                                {
                                    if (2 == result.type)
                                    {
                                        Sign.showError(formEl, result.resmsg, !0), btnSms.html("发送验证码").removeClass("count-down btn-disabled");
                                    }
                                    else 
                                    {
                                        btnSms.html('已发送(<em class="num">60s</em>)').addClass("count-down btn-disabled"), 
                                        Sign.countDown(btnSms, function () 
                                        {
                                            btnSms.html("发送验证码").removeClass("count-down btn-disabled") 
                                        }), btnSms.parent().find(".ipt-sms").focus(), formEl.append('<input type="hidden" name="rescode" value="1" />');
                                        try {
                                            _T.sendEvent("signin_register_send_sms") 
                                        }
                                        catch (e) {}
                                    }
                                    else
                                    {
                                        Sign.callbackRegister(formEl, result), Sign.countDown(formEl.closest(".sign-form").nextAll(".sign-welcome").find(".count-down"), 
                                        function () 
                                        {
                                            window.location.href = "/geek/myresume.html";
                                        });
                                    };;;
                                }
                            }
                        }
                    }
                }
                else
                {
                    Sign.showError(formEl, result.resmsg, !0), isSms && btnSms.html("发送验证码").removeClass("btn-disabled");
                }
                isSms || btnEl.removeClass("btn-disabled")
            },
            error : function (e)
            {
                Sign.showError(formEl, "服务器错误，请稍后再试", !0), isSms ? btnSms.html("发送验证码").removeClass("btn-disabled") : btnEl.removeClass("btn-disabled")
            }
        })
    },
    callbackPwd : function (e, t)
    {
        try {
            _T.sendEvent(e.closest(".sign-form").data("flow") + "_done")
        }
        catch (e) {}
        if (Sign.source) {
            return void (window.location.href = Sign.directUrls[Sign.source]);
        }
        1 == t.identity ? window.location.href = "/chat/im" : $(".page-sign").length ? t.toUrl ? window.location.href = decodeURIComponent(t.toUrl) : window.location.href = "/" : window.location.reload();
    },
    callbackSms : function (e, t)
    {
        e.closest(".sign-form").find(".tip-error");
        try {
            _T.sendEvent(e.closest(".sign-form").data("flow") + "_done")
        }
        catch (e) {}
        if (Sign.source) {
            return void (window.location.href = Sign.directUrls[Sign.source]);
        }
        1 == t.identity ? window.location.href = "/chat/im" : $(".page-sign").length ? t.toUrl ? window.location.href = decodeURIComponent(t.toUrl) : window.location.href = "/" : window.location.reload();
    },
    callbackRegister : function (e, t)
    {
        var i = $(".sign-wrap");
        try {
            _T.sendEvent(e.closest(".sign-form").data("flow") + "_done")
        }
        catch (e) {}
        if (e.closest(".pop-sign-box").length && (i = e.closest(".pop-sign-box")), Sign.source) {
            return void (window.location.href = Sign.directUrls[Sign.source]);
        }
        Sign.showPannel(i, "welcome")
    },
    showError : function (e, t, i)
    {
        if (e.closest(".sign-form").find(".tip-error").text(t), i && e.find(".verifyimg").length && (e.find(".ipt-code").val(""), 
        e.find(".verifyimg").click()), i) try {
            _T.sendEvent(e.closest(".sign-form").data("flow") + "_error")
        }
        catch (e) {}
        isTouch && $(window).width() < 800 && Sign.showToast(t)
    },
    hideError : function (e)
    {
        e.closest(".sign-form").find(".tip-error").text("")
    },
    showToast : function (e)
    {
        var t = $('<div class="toast"><p>' + e + "</p></div>");
        $(".toast").length && $(".toast").remove(), Sign.timerToast && clearTimeout(Sign.timerToast), 
        $("body").append(t), $(".toast").show(), Sign.timerToast = setTimeout(function ()
        {
            Sign.hideToast(t)
        }, 2e3)
    },
    hideToast : function ()
    {
        $(".toast").fadeOut(function ()
        {
            $(".toast").remove()
        })
    },
    countDown : function (e, t)
    {
        var i = parseInt(e.find(".num").text().replace("s"), 10);
        Sign.interCount = setInterval(function ()
        {
            i--, e.find(".num").text(i + "s"), i <= 0 && (t(), clearInterval(Sign.interCount), Sign.interCount = null);
        }, 1e3)
    },
    scanPending : function (e)
    {
        var t = e.find(".uuid").val(), i = e.find(".qrcode-box img").attr("data-url");
        t && e.find(".sign-scan").is(":visible") && $.ajax(
        {
            type : "GET", url : "/scan?uuid=" + t, dataType : "json", cache :!1, timeout : 1e5,
            success : function (n)
            {
                if (n.scaned)
                {
                    var s = e.find(".sign-scan").length ? e.find(".sign-scan").data("flow") : "web";
                    if ("validate"in n && n.validate) {
                        try {
                            _T.sendEvent(s + "_done")
                        }
                        catch (e) {}
                        window.location.href = i + t
                    }
                    else if ("allweb"in n && n.allweb) {
                        try {
                            _T.sendEvent(s + "_done")
                        }
                        catch (e) {}
                        window.location.href = i + t
                    }
                    else if ("validate"in n && !n.validate) {
                        try {
                            _T.sendEvent(s + "_error")
                        }
                        catch (e) {}
                        setTimeout("window.location.reload()", 3e3)
                    }
                    else {
                        try {
                            _T.sendEvent(s + "_error")
                        }
                        catch (e) {}
                        setTimeout("window.location.reload()", 3e3)
                    }
                }
                else {
                    e.find(".sign-scan").is(":visible") && Sign.scanPending(e);
                }
            },
            error : function ()
            {
                e.find(".sign-scan").is(":visible") && setTimeout(function ()
                {
                    Sign.scanPending(e)
                }, 5e3)
            }
        })
    }
};
$(function ()
{
    $(".sign-wrap").length && $(".sign-wrap").is(":visible") && Sign.init($(".sign-wrap:visible")), PlaceholderCheck.init()
});
