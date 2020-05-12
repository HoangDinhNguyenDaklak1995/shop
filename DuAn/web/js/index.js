  $(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            FullName: {
                validators: {
                        stringLength: {
                        min: 6,
                        message: 'Ex: Nguyễn Chí Tuấn'
                    },
                        notEmpty: {
                        message: 'Họ tên không được bỏ trống'
                    }
                }
            },
            Email: {
                validators: {
                    notEmpty: {
                        message: 'Địa chỉ email không được bỏ trống'
                    },
                    emailAddress: {
                        message: 'Vui lòng nhập đúng địa chỉ email. (Ex: exsample@exsample.com)'
                    }
                }
            },
            UserName: {
                validators: {
                        stringLength: {
                        min: 6,
                        message: 'Tên đăng nhập phải lớn hơn 6 ký tự'
                    },
                        notEmpty: {
                        message: 'Tên đăng nhập không được bỏ trống'
                    }
                }
            },
            Password: {
                validators: {
                        stringLength: {
                        min: 6,
                        message: 'Mật khẩu phải lớn hơn 6 ký tự'
                    },
                        notEmpty: {
                        message: 'Mật khẩu không được bỏ trống'
                    }
                }
            },
            Re_Password: {
                validators: {
                        notEmpty: {
                        message: 'Nhập lại mật khẩu không được bỏ trống'
                    },
                    identical: {
                        field: 'Password',
                        message: 'Nhập lại mật khẩu không khớp'
                    }
                }
            },
            phone: {
                validators: {

                        notEmpty: {
                            message: 'Số điện thoại không được bỏ trống'
                    },
                    regexp: {
                        regexp: /^[0-9\s\-()+\.]+$/,
                        message: 'Số điện thoại không chứa chữ'
                    }
                }
            },
            DiaChi: {
                validators: {
                     stringLength: {
                        
                    },
                    notEmpty: {
                        message: 'Địa chỉ không được bỏ trống'
                    }
                }
            },

            gioitinh: {
                validators: {
                    notEmpty: {
                        message: 'Chưa chọn giới tính'
                    }
                }
            }

            }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#contact_form').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});