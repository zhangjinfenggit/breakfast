$(function () {
    isClick(); //判断按钮是否可以点击

    //店铺信息
    var shopInfo = JSON.parse(sessionStorage.getItem("sessionShopInfo"));
    $(".shopImg").attr("src", shopInfo.shopImg)
    $(".shopName").text(shopInfo.shopName)
    $(".shopAddress").text(shopInfo.shopAddress);

    //返回时清空缓存
    $('.return').on('click', function () {
        if(sessionStorage.getItem("orderDetail")){
            sessionStorage.removeItem("orderDetail"); //清空用户选择的商品数据
        }
        window.location.href = 'sel_shops.html';
    })

    //店铺id
    var shopId = GetQueryString('shopId');

    //请求店铺商品
    $.ajax({
        type: "post",
        headers: setHeader,
        async: false,
        url: "http://" + ip + "/breakfastApi/weixin/queryProduct",
        data: JSON.stringify({shopId: shopId}),
        dataType: 'json',
        success: function (result) {
            if (result.retCode == '000000') {
                var list = result.data;
                var str1 = '';
                var str2 = '';
                if (list.singeProductList && list.singeProductList.length > 0) {
                    $('.single_tit').show();
                    var singeProductList = list.singeProductList;
                    $.each(singeProductList, function (i, item) {   //单品
                        str1 += '\
                            <li>\
                                <img src="images/bao_pic.png" alt="" class="pro_pic">\
                                <div class="meal_box">\
                                    <h2 class="proName">' + item.singleName + '</h2>\
                                </div>\
                                <div class="sel_box">\
                                    <p>¥<u style="display:none;" class="meal_price">0</u><u class="unit_price">' + item.singleMoney.toFixed(1) + '</u></p>\
                                    <div>\
                                        <span class="add"><img src="images/add.png" alt=""></span>\
                                        <span class="meal_num" data-type="1" data-id="' + item.id + '"  data-money="' + item.singleMoney + '">0</span>\
                                        <span class="min"><img src="images/min.png" alt=""></span>\
                                    </div>\
                                </div>\
                            </li>'
                    })
                }
                $('.singleList').html(str1);    //单品列表

                if (list.packageProductList && list.packageProductList.length > 0) {
                    $('.package_tit').show();
                    var packageProductList = list.packageProductList;
                    $.each(packageProductList, function (i, item) {    //套餐
                        var packageList = item.bfSingeProductList;
                        var str22 = '';
                        $.each(packageList,function(x,obj){
                            str22 += '<p>' + obj.singleName + 'x' + obj.singleAmount + '</p>'
                        })
                        str2 += '\
                        <li>\
                            <img src="images/bao_pic.png" alt="" class="pro_pic">\
                            <div class="meal_box">\
                                <h2 class="proName">' +item.packageName + '</h2>' + str22 + '\
                            </div>\
                            <div class="sel_box">\
                                <p>¥<u style="display:none;" class="meal_price">0</u><u class="unit_price">' + item.packageMoney.toFixed(1) + '</u></p>\
                                <div>\
                                    <span class="add"><img src="images/add.png" alt=""></span>\
                                    <span class="meal_num" data-type="2" data-id="' + item.id + '" data-money="' + item.packageMoney + '">0</span>\
                                    <span class="min"><img src="images/min.png" alt=""></span>\
                                </div>\
                            </div>\
                        </li>';
                    })
                }
                $('.packageList').html(str2);
            } else {
                setTimeoutAlert(result.retMsg);
            }
        }
    })

    //获取用户已选商品 ---取缓存
    var getProList = JSON.parse(sessionStorage.getItem('orderDetail'));
    getPro();
    isClick(); //需再次检验
    function getPro(){
        if (getProList) {
            $('.all_price').text(getProList.totalMoney);
            if (getProList.singleList && getProList.singleList.length > 0) {
                var singleList = getProList.singleList;
                var amountList = $('.singleList .meal_num');
                var mealPrice = $('.singleList .meal_price');
                findProId(singleList,amountList,1,mealPrice);
            }
            if (getProList.packageList && getProList.packageList.length > 0) {
                var packageList = getProList.packageList;
                var amountList = $('.packageList .meal_num');
                var mealPrice = $('.packageList .meal_price');
                findProId(packageList,amountList,2,mealPrice);
            }
        }
    }
    //获取用户已选商品---提出公用函数
    function findProId(obj1,obj2,type,onePrice){
        $.each(obj1, function (i, item) {
            var id = item.id;
            var amount = item.amount;
            if(type == 1){
                var money = item.singleMoney;
            }else if(type == 2){
                var money = item.packageMoney;
            }
            obj2.each(function (x) {
                if(id == $(this).attr('data-id')){
                    var proPrice = parseFloat(money * amount).toFixed(1);
                    onePrice.eq(x).text(proPrice);
                    $(this).show().text(item.amount).next('.min').show();
                }
            })
        })
    }

    //判断是否可以下单
    function isClick() {
        var allPrice = parseFloat($('.all_price').text());
        if (allPrice <= 0) {  //价格>0才可以下单
            $('#toOrder').addClass('hui')
            $('#toOrder').attr('disabled', true);
        } else {
            $('#toOrder').removeClass('hui')
            $('#toOrder').attr('disabled', false);
        }
    }

    //下单
    toOrder();
    function toOrder() {
        $('#toOrder').on('click', function () {
            var amount = $('.meal_num');
            var allPrice = parseFloat($('.all_price').text()); //总金额
            if(allPrice && allPrice > 50){
                setTimeoutAlert('您已经超过50元，请重新选单');
                return;
            }
            //下单的商品数据
            var singleList = [];    //单品id和数量
            var packageList = [];   //套餐id和数量
            $.each(amount, function (i, item) {
                var item = $(item);
                if (parseInt(item.html()) > 0) {
                    var proName = item.closest('li').find('.proName');
                    if (item.attr('data-type') == 1) {
                        var obj1 = {
                            "id": item.attr('data-id'),
                            "name": proName.text(),
                            "amount": item.html(),
                            "singleMoney": item.attr('data-money')
                        };
                        singleList.push(obj1);
                    } else if (item.attr('data-type') == 2) {
                        var singlePro = item.closest('li').find('.meal_box p');
                        var arr = [];
                        $.each(singlePro, function (i,item) {
                            arr.push($(item).text());
                        })

                        var obj2 = {
                            "id": item.attr('data-id'),
                            "name": proName.text(),
                            "amount": item.html(),
                            "packageMoney": item.attr('data-money'),
                            singleProductList: arr
                        };
                        packageList.push(obj2);
                    }
                }
            })
            //缓存已选商品
            var orderData = {
                "shopId": shopId,
                "totalMoney": allPrice,
                "singleList": singleList,
                "packageList": packageList,
            }
            sessionStorage.setItem("orderDetail", JSON.stringify(orderData));

            window.location.href = "order_confirm.html";

        })
    }

    //选择商品数量增减
    $('.add').on("click", function () {
        $(this).siblings('.meal_num').css('display', 'block');
        $(this).siblings('.min').css('display', 'block');
        var val = parseFloat($(this).siblings('.meal_num').html()) + 1;
        $(this).siblings('.meal_num').html(val);
        // 数量
        var meal_num = $(this).siblings('.meal_num').html();
        // 单价
        var unit_price = $(this).parent().siblings().find('.unit_price').html();
        // 计算
        var reckon = parseFloat(meal_num * unit_price).toFixed(1);
        $(this).parent().siblings().find('.meal_price').html(reckon);
        all_sum();
        isClick();
    })
    $('.min').click(function () {
        var val = parseFloat($(this).siblings('.meal_num').html()) - 1;
        if (parseFloat(val) < 1) {
            val = 0;
            $(this).siblings('.meal_num').css('display', 'none');
            $(this).css('display', 'none');
        }
        $(this).siblings('.meal_num').html(val);
        // 数量
        var meal_num = $(this).siblings('.meal_num').html();
        // 单价
        var unit_price = $(this).parent().siblings().find('.unit_price').html();
        // 计算
        var reckon = parseFloat(meal_num * unit_price).toFixed(1);
        $(this).parent().siblings().find('.meal_price').html(reckon);
        all_sum();
        isClick();
    })

    function all_sum() {
        var order =  0;
        $('.meal_price').each(function () {
            //循环遍历总价
            order += parseFloat($(this).html());
        })
        //修改总金额
        $('.all_price').html(order.toFixed(1));
    }
})
