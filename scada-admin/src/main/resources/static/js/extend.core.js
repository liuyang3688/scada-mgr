/**
 *
 */
(function ($) {
    $.extend($.fn, {
        exSelect: function (options) {
            var op = $.extend({firstText: '请选择', firstValue: ''}, options);
            function onchange(event){
                var $child = $("#" + event.data.$child);
                var $parent = event.data.$parent;
                var parentValue = $parent.val();
                if (!$child || $child.size() == 0 || !parentValue) {
                    $parent.attr('name', $child.attr('name'));
                    $child.attr('disabled', 'disabled');
                    $child.html('');
                    return false;
                }
                $.ajax({
                    type:'POST',
                    dataType:"json",
                    url:event.data.childUrl.replace("{value}", encodeURIComponent($parent.val())),
                    cache: false,
                    data:{},
                    success: function(json){
                        var childData;
                        if (json.status != 200 || !(childData = json.data) || childData.length == 0) {
                            console.error(json.message);
                            return false;
                        }
                        $child.removeAttr('disabled');
                        $parent.removeAttr('name');
                        var html = '<option value="' + op.firstValue + '">' + op.firstText + '</option>';
                        $.each(childData, function(i){
                            html += '<option value="' + childData[i]['value'] + '">' + childData[i]['text'] + '</option>';
                        });
                        $child.html(html);
                    },
                    error: $.tool.ajaxError
                });
            }
            return this.each(function (i) {
                var $this = $(this);
                var child = $this.data("child");
                var childUrl = $this.data('child-url') || '';
                var defaultText = $this.data('default-text') || '';
                if (child && childUrl) {
                    $this.unbind("change", onchange).bind("change", {$child:child, childUrl:childUrl, $parent:$this, defaultText: defaultText}, onchange);
                }
            });
        }
    });
})(jQuery);
var leotech = window.leotech || {
    initSidebar: function () {
        $SIDEBAR_MENU.find('a[href="' + CURRENT_URL + '"]').parent("li").addClass("active").parent("ul").removeClass("collapse").parent("li").addClass("active");
    },
    initDaterangepicker: function () {
        $('.myDatepicker').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss',
            ignoreReadonly: true,
            allowInputToggle: true
        });
    },
    initValidator: function () {
        "undefined" != typeof validator && (console.log("leotech.initValidator"), validator.message.date = "not a real date", $("form").on("blur", "input[required], input.optional, select.required", validator.checkField).on("change", "select.required", validator.checkField).on("keypress", "input[required][pattern]", validator.keypress), $(".multi.required").on("keyup blur", "input", function () {
            validator.checkField.apply($(this).siblings().last()[0])
        }), $("form").submit(function (a) {
            a.preventDefault();
            var b = !0;
            return validator.checkAll($(this)) || (b = !1), b && this.submit(), !1
        }));
    }
};

function countChecked() {
    "all" === checkState && $(".bulk_action input[name='table_records']").iCheck("check"), "none" === checkState && $(".bulk_action input[name='table_records']").iCheck("uncheck");
    var a = $(".bulk_action input[name='table_records']:checked").length;
    a ? ($(".column-title").hide(), $(".bulk-actions").show(), $(".action-cnt").html(a + " Records Selected")) : ($(".column-title").show(), $(".bulk-actions").hide())
}

function gd(a, b, c) {
    return new Date(a, b - 1, c).getTime()
}

!function (a, b) {
    var c = function (a, b, c) {
        var d;
        return function () {
            function h() {
                c || a.apply(f, g), d = null
            }

            var f = this,
                    g = arguments;
            d ? clearTimeout(d) : c && a.apply(f, g), d = setTimeout(h, b || 100)
        }
    };
    jQuery.fn[b] = function (a) {
        return a ? this.bind("resize", c(a)) : this.trigger(b)
    }
}(jQuery, "smartresize");
function getUri() {
    var url = window.location.href.split("#")[0].split("?")[0];
    var arrUrl = url.split("//");

    var start = arrUrl[1].indexOf("/");
    var relUrl = arrUrl[1].substring(start);


    return relUrl;
}
var CURRENT_URL = getUri(),
        $BODY = $("body"),
        $MENU_TOGGLE = $("#menu_toggle"),
        $SIDEBAR_MENU = $("#side-menu"),
        $SIDEBAR_FOOTER = $(".sidebar-footer"),
        $LEFT_COL = $(".left_col"),
        $RIGHT_COL = $(".right_col"),
        $NAV_MENU = $(".nav_menu"),
        $FOOTER = $("footer"),
        randNum = function () {
            return Math.floor(21 * Math.random()) + 20
        };
$(document).ready(function () {
    $(".collapse-link").on("click", function () {
        var a = $(this).closest(".x_panel"),
                b = $(this).find("i"),
                c = a.find(".x_content");
        a.attr("style") ? c.slideToggle(200, function () {
            a.removeAttr("style")
        }) : (c.slideToggle(200), a.css("height", "auto")), b.toggleClass("fa-chevron-up fa-chevron-down")
    }), $(".close-link").click(function () {
        var a = $(this).closest(".x_panel");
        a.remove()
    });
}), $(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip({
        container: "body"
    })
}), $(".progress .progress-bar")[0] && $(".progress .progress-bar").progressbar(), $(document).ready(function () {
    if ($(".js-switch")[0]) {
        var a = Array.prototype.slice.call(document.querySelectorAll(".js-switch"));
        a.forEach(function (a) {
            new Switchery(a, {
                color: "#26B99A"
            })
        })
    }
}), $(document).ready(function () {
    $("input[type=checkbox], input[type=radio]").iCheck({
        checkboxClass: 'icheckbox_square-green',
        radioClass: 'iradio_square-green',
        increaseArea: '20%' // optional
    });
}), $("table input").on("ifChecked", function () {
    checkState = "", $(this).parent().parent().parent().addClass("selected"), countChecked()
}), $("table input").on("ifUnchecked", function () {
    checkState = "", $(this).parent().parent().parent().removeClass("selected"), countChecked()
});
var checkState = "";
$(".bulk_action input").on("ifChecked", function () {
    checkState = "", $(this).parent().parent().parent().addClass("selected"), countChecked()
}), $(".bulk_action input").on("ifUnchecked", function () {
    checkState = "", $(this).parent().parent().parent().removeClass("selected"), countChecked()
}), $(".bulk_action input#check-all").on("ifChecked", function () {
    checkState = "all", countChecked()
}), $(".bulk_action input#check-all").on("ifUnchecked", function () {
    checkState = "none", countChecked()
}), $(document).ready(function () {
    $(".expand").on("click", function () {
        $(this).next().slideToggle(200), $expand = $(this).find(">:first-child"), "+" == $expand.text() ? $expand.text("-") : $expand.text("+")
    })
}), "undefined" != typeof NProgress && ($(document).ready(function () {
    NProgress.start()
}), $(window).load(function () {
    NProgress.done()
}));
// var originalLeave = $.fn.popover.Constructor.prototype.leave;
// $.fn.popover.Constructor.prototype.leave = function (a) {
//     var c, d,
//             b = a instanceof this.constructor ? a : $(a.currentTarget)[this.type](this.getDelegateOptions()).data("bs." + this.type);
//     originalLeave.call(this, a), a.currentTarget && (c = $(a.currentTarget).siblings(".popover"), d = b.timeout, c.one("mouseenter", function () {
//         clearTimeout(d), c.one("mouseleave", function () {
//             $.fn.popover.Constructor.prototype.leave.call(b, b)
//         })
//     }))
// },
$("body").popover({
    selector: "[data-popover]",
    trigger: "click hover",
    delay: {
        show: 50,
        hide: 400
    }
}), $(document).ready(function () {
    leotech.initDaterangepicker();
    leotech.initValidator();
    leotech.initSidebar();
    $("select.exSelect").exSelect();
});