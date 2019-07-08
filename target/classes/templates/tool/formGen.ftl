<#include "layout/header.ftl"/>
    <style>
        .droppable-active {
            background-color: #ffe !important
        }

        .tools a {
            cursor: pointer;
            font-size: 80%
        }

        .form-body .col-md-6, .form-body .col-md-12 {
            min-height: 400px
        }

        .draggable {
            cursor: move
        }
    </style>
<#--主页面导航-->
<div class="row border-bottom">
    <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
    <#--搜索组件-->
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="/search">
                <div class="form-group">
                    <input type="text" placeholder="搜索关键词..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
        <ul class="nav navbar-top-links navbar-right">
            <li>
                <span class="m-r-sm text-muted welcome-message">欢迎使用SCADA管理系统.</span>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                    <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <div class="dropdown-messages-box">
                            <a href="profile.html" class="pull-left">
                                <img alt="image" class="img-circle" src="img/a7.jpg">
                            </a>
                            <div>
                                <small class="pull-right">严重</small>
                                <strong>温度传感器越上限xxx, 请予以关注。</strong>. <br>
                                <small class="text-muted">2019-06-21 18：54：10</small>
                            </div>
                        </div>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <div class="dropdown-messages-box">
                            <a href="profile.html" class="pull-left">
                                <img alt="image" class="img-circle" src="img/a4.jpg">
                            </a>
                            <div>
                                <small class="pull-right">中度</small>
                                <strong>温度传感器越上限xxx, 请予以关注。</strong>. <br>
                                <small class="text-muted">2019-06-21 18：54：10</small>
                            </div>
                        </div>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <div class="dropdown-messages-box">
                            <a href="profile.html" class="pull-left">
                                <img alt="image" class="img-circle" src="img/profile.jpg">
                            </a>
                            <div>
                                <small class="pull-right">轻微</small>
                                <strong>温度传感器越上限xxx, 请予以关注。</strong>. <br>
                                <small class="text-muted">2019-06-21 18：54：10</small>
                            </div>
                        </div>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <div class="text-center link-block">
                            <a href="mailbox.html">
                                <i class="fa fa-envelope"></i> <strong>查看所有通知信息</strong>
                            </a>
                        </div>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="mailbox.html">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> 告警信息1
                                <span class="pull-right text-muted small">4分钟前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="profile.html">
                            <div>
                                <i class="fa fa-twitter fa-fw"></i> 告警信息2
                                <span class="pull-right text-muted small">30分钟前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="grid_options.html">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> 告警信息3
                                <span class="pull-right text-muted small">5小时15分钟前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <div class="text-center link-block">
                            <a href="notifications.html">
                                <strong>查看所有告警</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>
                    </li>
                </ul>
            </li>


            <li>
                <a href="/logout">
                    <i class="fa fa-sign-out"></i> 注销
                </a>
            </li>
            <li>
                <a class="right-sidebar-toggle">
                    <i class="fa fa-tasks"></i>
                </a>
            </li>
        </ul>
    </nav>
</div>
<#--主页面标题栏-->
<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <ol class="breadcrumb">
                <li><a href="/">首页</a></li>
                <li class="active">表单生成</li>
            </ol>
            <div class="ibox ">
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>元素</h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="form_editors.html#">
                                            <i class="fa fa-wrench"></i>
                                        </a>
                                        <ul class="dropdown-menu dropdown-user">
                                            <li>
                                                <a href="form_editors.html#">选项1</a>
                                            </li>
                                            <li>
                                                <a href="form_editors.html#">选项2</a>
                                            </li>
                                        </ul>
                                        <a class="close-link">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content">
                                    <div class="alert alert-info">
                                        拖拽左侧的表单元素到右侧区域，即可生成相应的HTML代码，表单代码，轻松搞定！
                                    </div>
                                    <form role="form" class="form-horizontal m-t">
                                        <div class="form-group draggable ui-draggable">
                                            <label class="col-sm-3 control-label">文本框：</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="" class="form-control" placeholder="请输入文本">
                                                <span class="help-block m-b-none">说明文字</span>
                                            </div>
                                        </div>
                                        <div class="form-group draggable ui-draggable">
                                            <label class="col-sm-3 control-label">密码框：</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control" name="password" placeholder="请输入密码">
                                            </div>
                                        </div>
                                        <div class="form-group draggable ui-draggable">
                                            <label class="col-sm-3 control-label">下拉列表：</label>
                                            <div class="col-sm-9">
                                                <select class="form-control" name="">
                                                    <option>选项 1</option>
                                                    <option>选项 2</option>
                                                    <option>选项 3</option>
                                                    <option>选项 4</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group draggable ui-draggable">
                                            <label class="col-sm-3 control-label">文件域：</label>
                                            <div class="col-sm-9">
                                                <input type="file" name="" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group draggable ui-draggable">
                                            <label class="col-sm-3 control-label">纯文本：</label>

                                            <div class="col-sm-9">
                                                <p class="form-control-static">这里是纯文字信息</p>
                                            </div>
                                        </div>
                                        <div class="form-group draggable ui-draggable">
                                            <label class="col-sm-3 control-label">单选框：
                                            </label>

                                            <div class="col-sm-9">
                                                <label class="radio-inline">
                                                    <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios">
                                                    选项1
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" value="option2" id="optionsRadios2" name="optionsRadios">
                                                    选项2
                                                </label>

                                            </div>
                                        </div>
                                        <div class="form-group draggable ui-draggable">
                                            <label class="col-sm-3 control-label">复选框：</label>

                                            <div class="col-sm-9">
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" value="option1" id="inlineCheckbox1">
                                                    选项1
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" value="option2" id="inlineCheckbox2">
                                                    选项2
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" value="option3" id="inlineCheckbox3">
                                                    选项3
                                                </label>
                                            </div>
                                        </div>
                                        <div class="hr-line-dashed"></div>
                                        <div class="form-group draggable ui-draggable">
                                            <div class="col-sm-12 col-sm-offset-3">
                                                <button class="btn btn-primary" type="submit">保存内容</button>
                                                <button class="btn btn-white" type="submit">取消</button>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>拖拽左侧表单元素到此区域</h5>
                                    <div class="ibox-tools">
                                        请选择显示的列数：
                                        <select id="n-columns">
                                            <option value="1">显示1列</option>
                                            <option value="2">显示2列</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="ibox-content">
                                    <div class="row form-body form-horizontal m-t">
                                        <div class="col-md-12 droppable sortable ui-droppable ui-sortable"></div>
                                        <div class="col-md-6 droppable sortable ui-droppable ui-sortable" style="display: none;"></div>
                                        <div class="col-md-6 droppable sortable ui-droppable ui-sortable" style="display: none;"></div>
                                    </div>
                                    <button type="submit" class="btn btn-warning" data-clipboard-text="testing" id="copy-to-clipboard">
                                        复制代码
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
                        $(document).ready(function () {
                            setup_draggable();
                            $("#n-columns").on("change", function () {
                                var v = $(this).val();
                                if (v === "1") {
                                    var $col = $(".form-body .col-md-12").toggle(true);
                                    $(".form-body .col-md-6 .draggable").each(function (i, el) {
                                        $(this).remove().appendTo($col)
                                    });
                                    $(".form-body .col-md-6").toggle(false)
                                } else {
                                    var $col = $(".form-body .col-md-6").toggle(true);
                                    $(".form-body .col-md-12 .draggable").each(function (i, el) {
                                        $(this).remove().appendTo(i % 2 ? $col[1] : $col[0])
                                    });
                                    $(".form-body .col-md-12").toggle(false)
                                }
                            });
                            $("#copy-to-clipboard").on("click", function () {
                                var $copy = $(".form-body").clone().appendTo(document.body);
                                $copy.find(".tools, :hidden").remove();
                                $.each(["draggable", "droppable", "sortable", "dropped", "ui-sortable", "ui-draggable", "ui-droppable", "form-body"], function (i, c) {
                                    $copy.find("." + c).removeClass(c).removeAttr("style")
                                });
                                var html = html_beautify($copy.html());
                                $copy.remove();
                                $modal = get_modal(html).modal("show");
                                $modal.find(".btn").remove();
                                $modal.find(".modal-title").html("复制HTML代码");
                                $modal.find(":input:first").select().focus();
                                return false
                            })
                        });
                        var setup_draggable = function () {
                            $(".draggable").draggable({appendTo: "body", helper: "clone"});
                            $(".droppable").droppable({
                                accept: ".draggable",
                                helper: "clone",
                                hoverClass: "droppable-active",
                                drop: function (event, ui) {
                                    $(".empty-form").remove();
                                    var $orig = $(ui.draggable);
                                    if (!$(ui.draggable).hasClass("dropped")) {
                                        var $el = $orig.clone().addClass("dropped").css({
                                            "position": "static",
                                            "left": null,
                                            "right": null
                                        }).appendTo(this);
                                        var id = $orig.find(":input").attr("id");
                                        if (id) {
                                            id = id.split("-").slice(0, -1).join("-") + "-" + (parseInt(id.split("-").slice(-1)[0]) + 1);
                                            $orig.find(":input").attr("id", id);
                                            $orig.find("label").attr("for", id)
                                        }
                                        $('<p class="tools col-sm-12 col-sm-offset-3">						<a class="edit-link">编辑HTML<a> | 						<a class="remove-link">移除</a></p>').appendTo($el)
                                    } else {
                                        if ($(this)[0] != $orig.parent()[0]) {
                                            var $el = $orig.clone().css({"position": "static", "left": null, "right": null}).appendTo(this);
                                            $orig.remove()
                                        }
                                    }
                                }
                            }).sortable()
                        };
                        var get_modal = function (content) {
                            var modal = $('<div class="modal" style="overflow: auto;" tabindex="-1">	<div class="modal-dialog"><div class="modal-content"><div class="modal-header"><a type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</a><h4 class="modal-title">编辑HTML</h4></div><div class="modal-body ui-front">	<textarea class="form-control" 	style="min-height: 200px; margin-bottom: 10px;font-family: Monaco, Fixed">' + content + '</textarea><button class="btn btn-success">更新HTML</button></div>				</div></div></div>').appendTo(document.body);
                            return modal
                        };
                        $(document).on("click", ".edit-link", function (ev) {
                            var $el = $(this).parent().parent();
                            var $el_copy = $el.clone();
                            var $edit_btn = $el_copy.find(".edit-link").parent().remove();
                            var $modal = get_modal(html_beautify($el_copy.html())).modal("show");
                            $modal.find(":input:first").focus();
                            $modal.find(".btn-success").click(function (ev2) {
                                var html = $modal.find("textarea").val();
                                if (!html) {
                                    $el.remove()
                                } else {
                                    $el.html(html);
                                    $edit_btn.appendTo($el)
                                }
                                $modal.modal("hide");
                                return false
                            })
                        });
                        $(document).on("click", ".remove-link", function (ev) {
                            $(this).parent().parent().remove()
                        });
                    </script>
                    <div class="modal" style="overflow: auto; display: none;" tabindex="-1">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <a type="button" class="close" data-dismiss="modal" aria-hidden="true">×</a>
                                    <h4 class="modal-title">编辑HTML</h4>
                                </div>
                                <div class="modal-body ui-front">
                                    <textarea class="form-control" style="min-height: 200px; margin-bottom: 10px;font-family: Monaco, Fixed">&lt;label class="col-sm-3 control-label"&gt;文本框：&lt;/label&gt;&lt;div class="col-sm-9"&gt;&lt;input type="text" name="" class="form-control" placeholder="请输入文本"&gt; &lt;span class="help-block m-b-none"&gt;说明文字&lt;/span&gt;
                                        &lt;/div&gt;
                                    </textarea>
                                    <button class="btn btn-success">更新HTML</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<#include "/layout/footer.ftl"/>