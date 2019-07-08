<#include "layout/header.ftl"/>
<style>
    #index_button_group p {
        font-size: 2em;
        font-weight: bold;
    }
    #index_button_group a {
        color: #eee;
    }
    #index_button_group a {
        color: #fff;
    }
</style>
<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <ol class="breadcrumb">
                <li><a href="/">首页</a></li>
                <li class="active">仪表盘</li>
            </ol>
            <div class="ibox ">
                <div class="ibox-content text-center">
                    <div id="index_button_group" class="row">
                        <div class="col-md-3 p-md">
                            <div class="red-bg h-200 p-xl">
                                <a href="">
                                    <i class="fa fa-user fa-5x"></i>
                                    <p>客户管理</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 p-md">
                            <div class="blue-bg h-200 p-xl">
                                <a href="">
                                    <i class="fa fa-automobile fa-5x"></i>
                                    <p>设备管理</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 p-md">
                            <div class="yellow-bg h-200 p-xl">
                                <a href="">
                                    <i class="fa fa-money fa-5x"></i>
                                    <p>收费管理</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 p-md">
                            <div class="navy-bg h-200 p-xl">
                                <a href="">
                                    <i class="fa fa-chain fa-5x"></i>
                                    <p>抄表管理</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 p-md">
                            <div class="yellow-bg h-200 p-xl">
                                <a href="">
                                    <i class="fa fa-map fa-5x"></i>
                                    <p>短信平台</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 p-md">
                            <div class="navy-bg h-200 p-xl">
                                <a href="">
                                    <i class="fa fa-database fa-5x"></i>
                                    <p>数据分析</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 p-md">
                            <div class="lazur-bg h-200 p-xl">
                                <a href="">
                                    <i class="fa fa-upload fa-5x"></i>
                                    <p>系统设置</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    iframe {
        width: 100%;
        height: 770px;
    }
</style>
<script>
    jQuery(document).ready(function(){
        //页面加载完成之后执行
        //pageInit();
        var a = 1;
        var b = 100;
        var c = 50.01;
        var svgFrame = document.getElementById('svgFrame');
        if (svgFrame.attachEvent) {
            svgFrame.attachEvent("onload", function() {
                //iframe加载完成后你需要进行的操作
                refreshData();
            });
        } else {
            svgFrame.onload = function() {
                //iframe加载完成后你需要进行的操作
                refreshData();
            };
        }
        function refreshData() {
            var param1 = svgFrame.contentWindow.document.getElementById("1-1-1");
            var param2 = svgFrame.contentWindow.document.getElementById("2-1-1");
            var param3 = svgFrame.contentWindow.document.getElementById("3-1-1");
            var text1 = param1.getElementsByTagName("tspan")[0];
            var text2 = param2.getElementsByTagName("tspan")[0];
            var text3 = param3.getElementsByTagName("tspan")[0];

            function updateContent() {
                text1.textContent = a++;
                text2.textContent = b++;
                text3.textContent = c++;
                setTimeout(function () {
                    updateContent();
                }, 1000);
            }

            updateContent();
        }
    });
</script>
<#include "layout/footer.ftl"/>