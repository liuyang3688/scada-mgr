<#include "layout/header.ftl"/>
<#--主页面标题栏-->
<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <ol class="breadcrumb">
                <li><a href="/">首页</a></li>
                <li>客户管理</li>
                <li>客户信息</li>
            </ol>
            <div class="ibox float-e-margins border-bottom">
                <div class="ibox-title">
                    <h5><i class="fa fa-search"></i> 请输入查询条件</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-down"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <form method="get" action="" class="form-horizontal">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">客户名称：</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="customerName" class="form-control" placeholder="请输入客户名称">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">手机号：</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="customerPhone" class="form-control" placeholder="请输入客户手机号">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-md-12">
                                <span class="pull-right">
                                      <div class="btn-group">
                                          <button id="btn_query" type="button" class="btn btn-primary" title="查询"><i class="fa fa-search"></i> 查询</button>
                                          <button id="btn_reset" type="button" class="btn btn-default" title="重置"><i class="fa fa-send"></i> 重置</button>
                                      </div>
                                </span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="ibox ">
                <div class="ibox-content">
                    <div class="btn-group hidden-xs" id="toolbar">
                        <@shiro.hasPermission name="user:add">
                        <button id="btn_add" type="button" class="btn btn-default" title="新增用户">
                            <i class="fa fa-plus"></i> 新增用户
                        </button>
                        </@shiro.hasPermission>
                        <@shiro.hasPermission name="user:batchDelete">
                            <button id="btn_delete_ids" type="button" class="btn btn-default" title="删除选中">
                                <i class="fa fa-trash-o"></i> 批量删除
                            </button>
                        </@shiro.hasPermission>
                    </div>
                    <table id="tablelist">
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<#include "/layout/footer.ftl"/>
<!--弹框-->
<div class="modal fade bs-example-modal-sm" id="selectRole" tabindex="-1" role="dialog" aria-labelledby="selectRoleLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="selectRoleLabel">分配角色</h4>
            </div>
            <div class="modal-body">
                <form id="boxRoleForm">
                    <div class="zTreeDemoBackground left">
                        <ul id="treeDemo" class="ztree"></ul>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!--/弹框-->
<!--添加用户弹框-->
<div class="modal fade" id="addOrUpdateModal" tabindex="-1" role="dialog" aria-labelledby="addroleLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="addroleLabel">添加用户</h4>
            </div>
            <div class="modal-body">
                <form id="addOrUpdateForm" class="form-horizontal form-label-left" novalidate>
                    <input type="hidden" name="id">
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">用户名: <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" class="form-control col-md-7 col-xs-12" name="username" id="username" required="required" placeholder="请输入用户名"/>
                        </div>
                    </div>
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="password">密码: <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="password" class="form-control col-md-7 col-xs-12" id="password" name="password" required="required" placeholder="请输入密码 6位以上"/>
                        </div>
                    </div>
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nickname">昵称:</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" class="form-control col-md-7 col-xs-12" name="nickname" id="nickname" placeholder="请输入昵称"/>
                        </div>
                    </div>
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="mobile">手机:</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="tel" class="form-control col-md-7 col-xs-12" name="mobile" id="mobile" data-validate-length-range="8,20" placeholder="请输入手机号"/>
                        </div>
                    </div>
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">邮箱:</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="email" class="form-control col-md-7 col-xs-12" name="email" id="email" placeholder="请输入邮箱"/>
                        </div>
                    </div>
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="qq">QQ:</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="number" class="form-control col-md-7 col-xs-12" name="qq" id="qq" placeholder="请输入QQ"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary addOrUpdateBtn">保存</button>
            </div>
        </div>
    </div>
</div>
<!--/添加用户弹框-->
<script>
    /**
     * 操作按钮
     * @param code
     * @param row
     * @param index
     * @returns {string}
     */
    function operateFormatter(code, row, index) {
        var currentUserId = '${user.id}';
        var trUserId = row.id;
        var operateBtn = [
            '<@shiro.hasPermission name="user:edit"><a class="btn btn-xs btn-primary btn-update" data-id="' + trUserId + '"><i class="fa fa-edit"></i>编辑</a></@shiro.hasPermission>',
        ];
        if (currentUserId != trUserId) {
            operateBtn.push('<@shiro.hasPermission name="user:delete"><a class="btn btn-xs btn-danger btn-remove" data-id="' + trUserId + '"><i class="fa fa-trash-o"></i>删除</a></@shiro.hasPermission>');
            operateBtn.push('<@shiro.hasPermission name="user:allotRole"><a class="btn btn-xs btn-info btn-allot" data-id="' + trUserId + '"><i class="fa fa-circle-thin"></i>分配角色</a></@shiro.hasPermission>')
        }
        return operateBtn.join('');
    }

    $(function () {
        var options = {
            url: "/user/list",
            getInfoUrl: "/user/get/{id}",
            updateUrl: "/user/edit",
            removeUrl: "/user/remove",
            createUrl: "/user/add",
            saveRolesUrl: "/user/saveUserRoles",
            columns: [
                {
                    checkbox: true
                }, {
                    field: 'username',
                    title: '用户名',
                    editable: false,
                }, {
                    field: 'nickname',
                    title: '昵称',
                    editable: true
                }, {
                    field: 'email',
                    title: '邮箱',
                    editable: true
                }, {
                    field: 'qq',
                    title: 'qq',
                    editable: true
                }, {
                    field: 'userType',
                    title: '用户类型',
                    editable: false
                }, {
                    field: 'statusEnum',
                    title: '状态',
                    editable: false
                }, {
                    field: 'lastLoginTime',
                    title: '最后登录时间',
                    editable: false,
                    formatter: function (code) {
                        return new Date(code).format("yyyy-MM-dd hh:mm:ss")
                    }
                }, {
                    field: 'loginCount',
                    title: '登录次数',
                    editable: false
                }, {
                    field: 'operate',
                    title: '操作',
                    formatter: operateFormatter //自定义方法，添加操作按钮
                }
            ],
            modalName: "用户"
        };
        //1.初始化Table
        $.tableUtil.init(options);
        //2.初始化Button的点击事件
        $.buttonUtil.init(options);

        /* 查询按钮 */
        $('#btn_query').on('click', function () {

        });
        /* 重置按钮 */
        $('#btn_reset').on('click', function () {
            $('')
        })

    });
</script>