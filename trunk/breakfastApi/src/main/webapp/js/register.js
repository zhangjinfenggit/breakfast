$(function () {
    var Login = {
        phone:$('.phone_num'),
        code:$('.code'),
        sendCode:$('#send'),
        rePhone:$('.r_phone'),
        countdown:60,
        lock:false
    }
    Login.event = {
        init: function () {
            this.loginBtnFn();
            this.codeBtnFn();
        },
        loginBtnFn: function () {
            $('#loginBtn').on('click', function () {
                Login.event.phoneChecked();
                if(Login.lock){
                    Login.event.codeChecked();
                }
                if(Login.lock){
                    Login.event.recommenderChecked();
                }
                if(Login.lock){
                    var data={
                        "phone":Login.phone.val(),
                        "code":Login.code.val(),
                        "recommenderPhone":Login.rePhone.val(),
                        //"openid":"oScaO01jfOtMjPXx3GBAWAl1wI3Y"
                    }
                    Login.event.loginAjax(JSON.stringify(data));
                }
            })
        },
        loginAjax: function (data) {
            $.ajax({
                type : "post",
                contentType:"application/json;charset=UTF-8",
                url : "http://"+ip+"/breakfastApi/weixin/login",
                data : data,
                timeout : 10000,
                dataType :'json',
                beforeSend: function (xhr) {
                    layer.open({
                        type: 2,
                        content: '登录中...'
                    });
                },
                success : function(result) {
                    layer.closeAll();
                    if(result.retCode=='000000'){
                        localStorage.setItem("weixintoken",result.data.weixintoken); //token
                        //setTimeoutAlert('登陆成功');
                        window.location.href = "sel_shops.html";
                    }else{
                        setTimeoutAlert(result.retMsg);
                    }
                },
                error: function (xhr,textStatus,errorThrown) {
                    if(textStatus == 'timeout'){
                        setTimeoutAlert("请求超时");
                    }
                }
            })
        },

        codeBtnFn: function () {
            Login.sendCode.on('click', function () {
                Login.event.phoneChecked();
                if(Login.lock){
                    Login.event.codeAjax();
                }
            })
        },
        codeAjax: function () {
            var data = {"phone":Login.phone.val()};
            $.ajax({
                type : "post",
                contentType:"application/json;charset=UTF-8",
                url : "http://"+ip+"/breakfastApi/weixin/getCode",
                data : JSON.stringify(data),
                dataType :'json',
                success : function(result) {
                    if(result.retCode=='000000'){
                        Login.event.setTime(Login.sendCode);
                    }else{
                        setTimeoutAlert(result.retMsg);
                    }
                }
            });
        },
        phoneChecked: function () {
            var phoneVal = $.trim(Login.phone.val());
            var res = /^1[34578]\d{9}$/;
            var result = res.test(phoneVal);
            if(phoneVal == '' || !result){
                setTimeoutAlert('请输入正确的手机号码');
                Login.lock = false;
            }else{
                Login.lock = true;
            }
        },
        codeChecked: function () {
            var codeVal = $.trim(Login.code.val());
            if(codeVal == ''){
                setTimeoutAlert('请输入验证码');
                Login.lock = false;
            }else{
                Login.lock = true;
            }
        },
        recommenderChecked: function () {
            var rePhoneVal = $.trim(Login.rePhone.val());
            var res = /^1[34578]\d{9}$/;
            var result = res.test(rePhoneVal);
            if(rePhoneVal != '' && !result){
                setTimeoutAlert('请输入正确的推荐人手机号码');
                return false;
            }else{
                Login.lock = true;
            }
        },
        setTime: function (obj) {
            if (Login.countdown == 0) {
                obj.attr('disabled', false);
                obj.val("获取验证码").css('background','#e5bc0c');
                Login.countdown = 60;
                return;
            } else {
                obj.attr('disabled', true);
                obj.val("重新发送(" + Login.countdown + ")").css('background','#ccc');
                Login.countdown--;
            }
            setTimeout(function () {
                Login.event.setTime(obj);
            }, 1000)
        }
    }
    Login.event.init();
})

