<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SCADA管理系统</title>
    <link href="/assets/images/favicon.jpg" rel="shortcut icon" type="image/x-icon">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <#--jqGrid样式插件-->
    <#--<link href="css/plugins/jQueryUI/hot-sneaks/jquery-ui-1.8.16.custom.css" rel="stylesheet">-->
    <#--<link href="css/plugins/jqGrid/ui.jqgrid.css" rel="stylesheet">-->
    <script src="js/jquery-3.1.1.min.js"></script>
    <#--iCheck插件-->
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <script src="js/plugins/iCheck/icheck.js"></script>
    <link href="https://cdn.bootcss.com/jquery-confirm/2.5.1/jquery-confirm.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery-confirm/2.5.1/jquery-confirm.min.js" type="text/javascript"></script>
<#--bootstrapTable-->
    <link href="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>
    <#--jquery-ui-->
    <link href="js/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
    <#--fancybox-->
    <link href="js/plugins/fancybox/jquery.fancybox-1.3.4.css"  rel="stylesheet">
    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="js/plugins/toastr/toastr.min.js"></script>
    <script src="js/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css"></script>
</head>
<body>
<div id="wrapper">
    <#--左侧导航栏-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <#--头像-->
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <span><img alt="头像" class="img-circle" src="img/profile_small.jpg"></span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">刘洋</strong>
                         </span> <span class="text-muted text-xs block">普通用户 <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="/user/1">用户资料</a></li>
                            <li><a href="/contact">通信录</a></li>
                            <li><a href="/mailbox">收件箱</a></li>
                            <li class="divider"></li>
                            <li><a href="/passport/logout">注销</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        SCADA
                    </div>
                </li>
                <#--菜单项-->
                <@shiro.user>
                <li><a href="/index"><i class="fa fa-th-large"></i><span class="nav-label">仪表盘</span></a></li>
                </@shiro.user>
                <@customTag method="menus" userId="${user.id}">
                    <#if menus?? && menus?size gt 0>
                        <#list menus as item>
                            <#if item.nodes?? && item.nodes?size gt 0>
                            <li>
                                <a><i class="${item.icon?if_exists}"></i> ${item.name?if_exists}<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <#list item.nodes as node>
                                        <@shiro.hasPermission name="${node.permission?if_exists}">
                                        <li><a href="${node.url?if_exists}" ${(node.external?exists && node.external)?string('target="_blank"','')}><i class="${node.icon?if_exists}"></i>${node.name?if_exists}</a></li>
                                        </@shiro.hasPermission>
                                    </#list>
                                </ul>
                            </li>
                            <#else>
                            <li><a href="${item.url?if_exists}" ${(item.external?exists && item.external)?string('target="_blank"','')}><i class="${item.icon?if_exists}"></i>${item.name?if_exists}</a></li>
                            </#if>
                        </#list>
                    </#if>
                </@customTag>
            </ul>
        </div>
    </nav>
    <div id="page-wrapper" class="gray-bg">
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
                        <a href="/passport/logout">
                            <i class="fa fa-sign-out"></i> 注销
                        </a>
                    </li>
                    <#--<li>-->
                        <#--<a class="right-sidebar-toggle">-->
                            <#--<i class="fa fa-tasks"></i>-->
                        <#--</a>-->
                    <#--</li>-->
                </ul>
            </nav>
        </div>
