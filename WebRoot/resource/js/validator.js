/**
 * 用于注册时候表单验证信息的显示
 */
$(document).ready(function() {
    $('#form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        //group: '.form-group',
        fields: {
            account: {
                group: '.group',
                validators: {
                    notEmpty: {
                        message: '账号不能为空'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: '用户名只能由数字、字母、下划线组成'
                    },
                    stringLength: {
                        min: 6,
                        max: 16,
                        message: '用户名的长度为6-16'
                    },
                }
            },
            username: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    stringLength: {
                        min: 2,
                        max: 16,
                        message: '用户名的长度为2-16'
                    },
                    different: {
                        field: 'password',
                        message: '用户名跟密码不能重复'
                    }
                }
            },
            pw1: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 16,
                        message: '密码的长度为6-16'
                    },
                    different: {
                        field: 'username',
                        message: '账号跟密码不能一样'
                    }
                }
            },
            pw2: {
            	validators: {
                    notEmpty: {
                        message: '确认密码不能为空'
                    },
                    identical: {
                        field: 'pw1',
                        message: '两次输入密码不一致'
                    }
                }
            }
        }
    });
});