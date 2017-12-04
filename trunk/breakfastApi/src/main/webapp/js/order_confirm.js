$(function () {
    //清楚ios返回时缓存
    var isPageHide = false;
    window.addEventListener('pageshow', function () {
        if (isPageHide) {
            window.location.reload();
        }
    });
    window.addEventListener('pagehide', function () {
        isPageHide = true;
    });
    //获取店铺信息
    var shopInfos = JSON.parse(sessionStorage.getItem('sessionShopInfo'));
    $('.shopName span').text(shopInfos.shopName)
    $('.shopAddress').text(shopInfos.shopAddress);

    var orderList = JSON.parse(sessionStorage.getItem("orderDetail"));  //缓存的订单信息

    //获取订单信息
    getOrderList();
    function getOrderList() {
        var allPrice = orderList.totalMoney;
        var str1 = '';
        var str2 = '';
        if (orderList.singleList && orderList.singleList.length > 0) {
            var singleList = orderList.singleList;
            $.each(singleList, function (i, item) {
                var singleMoney = parseFloat(item.amount * item.singleMoney).toFixed(1);
                str1 += '<li>\
                            <p>\
                                <span>' + item.name + '</span>\
                                <span>x' + item.amount + '</span>\
                                <span>¥<u class="price">' + singleMoney + '</u></span>\
                            </p>\
                        </li>'
            })
        }
        if (orderList.packageList && orderList.packageList.length > 0) {
            var packageList = orderList.packageList;
            $.each(packageList, function (i, item) {
                var str22 = '';
                var packageListSingle = item.singleProductList; //套餐里的单品
                var packageMoney = parseFloat(item.amount * item.packageMoney).toFixed(1);
                $.each(packageListSingle, function (x, val) {
                    str22 += '<li>' + val + '</li>'
                })
                str2 += '<li>\
                            <p>\
                                <span>' + item.name + '</span>\
                                <span>x' + item.amount + '</span>\
                                <span>¥<u class="price">' + packageMoney + '</u></span>\
                            </p>\
                            <ul>' + str22 + '</ul>\
                        </li>'
            })
        }
        $('#orderDetail').html(str1 + str2);
        getCoupon(allPrice);
    }


    //可用优惠券
    function getCoupon(allPrice) {
        $.ajax({
            type: "post",
            headers: setHeader,
            url: "http://" + ip + "/breakfastApi/weixin/availableCoupon",
            async: true,
            data: JSON.stringify({ordersMoney: allPrice}),
            dataType: "json",
            success: function (result) {
                if (result.retCode == "000000") {
                    var list = result.data;
                    var couponMoney = 0;
                    var couponStr = '';
                    if (list != null && list.length > 0) {
                        couponMoney = Math.abs(list[0].couponMoney);
                        $('.noCoupon').hide();
                        //页面加载完显示一张可用的优惠券金额
                        $('.coupon_deduction').html('-¥' + couponMoney).attr('data-id', list[0].id);
                        for (var i = 0; i < list.length; i++) {
                            couponStr += "<li class='item'>\
								<img src='images/coupon.png' alt='' class='coupon'>\
								<div class='cou_desc'>\
								    <span class='couponId' style='display:none;'>" + list[i].id + "</span>\
									<p class='cou_price'>¥" + list[i].couponMoney + "</p>\
									<p>" + list[i].couponName + "</p>\
									<span>限" + list[i].overdueTime + "日前使用</span>\
									<span>使用此劵可抵扣" + list[i].couponMoney + "元早餐费用</span>\
								</div>\
								<img src='images/current.png' alt='' class='current'>\
							</li>";
                        }
                    }
                    $('.coupon_list').html(couponStr);

                    $('.coupon_list .item').eq(0).addClass('cur');//默认选中第一个优惠券
                    needMoney(allPrice, couponMoney);//小计
                } else {
                    setTimeoutAlert(result.retMsg);
                }
            }
        });
    }

    //优惠券弹窗
    $('.goCouponBtn').on('click', function () {
        var cont = $('.coupon_deduction').text();
        if (cont != '') {
            $('.order_confirm').hide();
            $('.dialog').show();
            chooseCoupon();
        } else {
            setTimeoutAlert('您还没有可用的优惠券哦');
        }
    })


    // 进入优惠券弹窗，选择优惠券时
    function chooseCoupon() {
        $('.coupon_list .item').on('click', function () {
            var _this = $(this);
            var money = _this.find('.cou_price').text();  //所选择优惠券的面额
            var allPrice = orderList.totalMoney;   //订单总价，未使用优惠券前
            var couponMoney = parseFloat(money.slice(1));  //所选择优惠券的面额
            var couponId = _this.find('.couponId').text();

            _this.addClass('cur').siblings().removeClass('cur');

            setTimeout(function () {    //优惠券页面的显示隐藏
                $('.order_confirm').show();
                $('.dialog').hide();
                $('.coupon_deduction').attr('data-id', couponId);
            }, 500);

            $('.coupon_deduction').html('-' + money); //优惠券抵扣值显示
            needMoney(allPrice, couponMoney);//小计

        })
    }

    //小计
    function needMoney(allPrice, couponMoney) {
        var needPayMoney = parseFloat(allPrice - couponMoney).toFixed(1);  //小计
        $('.order_sum').text(needPayMoney); //小计
    }

    //去支付
    $('.goPay').on('click', function () {
        if (orderList.packageList != null) {
            $.each(orderList.packageList, function (i, item) {
                delete item.singleProductList;
                delete item.name;
            })
        }
        if (orderList.singleList != null) {
            $.each(orderList.singleList, function (i, item) {
                delete item.name;
            })
        }
        var couponObj = $('.coupon_deduction');
        var data = {
            shopId: orderList.shopId,
            totalMoney: orderList.totalMoney,
            singleProductList: orderList.singleList,
            packProductList: orderList.packageList,
            couponId: parseInt(couponObj.attr('data-id')),
            couponMoney: parseFloat(couponObj.text().slice(2))
        };
        $.ajax({
            type: "post",
            headers: setHeader,
            url: "http://" + ip + "/breakfastApi/weixin/pay",
            data: JSON.stringify(data),
            dataType: "json",
            beforeSend: function (xhr) {
                $('.goPay').val('支付中...').css('backgroundColor',"#ccc").attr('disabled',"true");
            },
            success: function (result) {
                if (result.retCode == "000000") {
                    payClick(result);
                } else {
                    setTimeoutAlert(result.retMsg);
                    $('.goPay').val('立即支付').css('backgroundColor',"#e5bc0c").removeAttr("disabled");
                }
            }
        });

        function payClick(result) {
            if (typeof WeixinJSBridge == "undefined") {
                if (document.addEventListener) {
                    document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
                } else if (document.attachEvent) {
                    document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
                    document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
                }
            } else {
                onBridgeReady();
            }
            ;
            //调起微信支付控制台
            function onBridgeReady() {
                WeixinJSBridge.invoke(
                    'getBrandWCPayRequest', {
                        "appId": result.data.JsapiAppId,     //公众号名称，由商户传入
                        "timeStamp": result.data.JsapiTimeStamp,         //时间戳，自1970年以来的秒数
                        "nonceStr": result.data.JsapiNonceStr, //随机串
                        "package": result.data.JsapiPackage,
                        "signType": result.data.JsapiSignType,         //微信签名方式：
                        "paySign": result.data.JsapiPaySign //微信签名
                    },
                    function (res) {
                        if (res.err_msg == "get_brand_wcpay_request:ok") {
                            sessionStorage.removeItem("orderDetail");
                            window.location.href = "success_pay.html";
                        } else if (res.err_msg == "get_brand_wcpay_request:cancel") {
                            alert("确定要取消支付吗？");
                            $('.goPay').val('立即支付').css('backgroundColor',"#e5bc0c").removeAttr("disabled");
                        } else {// 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回    ok，但并不保证它绝对可靠。
                            alert(res.err_msg);
                            $('.goPay').val('立即支付').css('backgroundColor',"#e5bc0c").removeAttr("disabled");
                        }
                    }
                );
            };
        };
    })
});