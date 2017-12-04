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

    firstChecked(); //需要先判断是否是第一次进来
    sessionStorage.removeItem("orderDetail"); //清空用户选择的商品数据


    //三联动
    chooseSubway($('#subwayLine'), {"cityName": "北京", "type": 1});
    chooseSubway($('#subwayName'), {"cityName": "北京", "type": 2});
    chooseSubway($('#subwayOut'), {"cityName": "北京", "type": 3});

    $('#subwayLine').on('change', function () {
        chooseSubway($('#subwayName'), {"cityName": "北京", "subwayLine": $(this).val(), type: 2});
    })
    $('#subwayName').on('change', function () {
        chooseSubway($('#subwayOut'), {"cityName": "北京","subwayLine": $('#subwayLine').val(),"subwayName": $(this).val(), type: 3});
    })

    //查询店铺
    $('#searchShop').on('click', function () {
        //缓存地铁口信息
        var sessionObj = {
            "subwayLine": $('#subwayLine').val(),
            "subwayName": $('#subwayName').val(),
            "subwayOut": $('#subwayOut').val(),
            "subwayOutName": $('#subwayOut').find("option:selected").text(),
        }
        queryShop(sessionObj);
        $('.tip').hide();
    })

    //需要先判断是否是第一次进来
    function firstChecked() {
        if(localStorage.getItem('setAddress') != "undefined" && localStorage.getItem('setAddress') != null){
            var address = JSON.parse(localStorage.getItem('setAddress'));
            var str = '';
            if (address != null && address.subwayOut != "选择地铁口") {    //有缓存地址，证明不是首次
                $.each(address, function (i, val) {
                    if(i != "subwayOut"){
                        str += val;
                    }
                })
                $('.tip').show().find('.oldAddress').text(str);
                queryShop(address);
            }
        }
    }

    //查询店铺信息
    function queryShop(data) {
        $.ajax({
            type: "post",
            headers: setHeader,
            url: "http://" + ip + "/breakfastApi/weixin/queryShop/",
            data: JSON.stringify({outId: data.subwayOut}),
            dataType: 'json',
            success: function (result) {
                if (result.retCode == '000000') {
                    var list = result.data;
                    var str = '';
                    if (list != null && list.length > 0){
                        localStorage.setItem("setAddress", JSON.stringify(data));//如果请求成功则缓存当前地址
                        for (var i = 0; i < list.length; i++) {
                            str += '<li>\
                                <img class="buiness_photo shopImg" src="http://breakfast.coralsec.com' + list[i].photo + '"/>\
                                <div class="buiness_desc">\
                                    <h1 class="shopName" data-id="'+list[i].id+'">'+list[i].name+'</h1>\
                                    <p class="shopAddress" data-x="'+list[i].latitude+'" data-y="'+list[i].longitude+'">地址：'+ list[i].address+'</p>\
                                    <input type="button" value="今天吃这家"  class="button button2 goShop">\
                                </div>\
                                </li>';
                        }
                    }else{
                        $('.tip').hide();
                        str = "<p style='text-align:center;line-height:40px;font-size:14px;color:#666;'>所选地址，暂未可选店铺，敬请期待。</p>";
                    }
                    $('.sel_shops_list').empty().append(str);
                    goShop();

                } else {
                    setTimeoutAlert(result.retMsg);
                }
            }
        });
    }

    //跳转店铺
    function goShop() {
        $('.goShop').on('click', function () {
            var parentObj = $(this).closest('li');
            var shopId = parentObj.find('.shopName').attr("data-id");
            var shopImg = parentObj.find('.shopImg').attr("src");
            var shopName = parentObj.find('.shopName').text();
            var shopAddress = parentObj.find('.shopAddress').text();
            var latitude = parentObj.find('.shopAddress').attr("data-x");
            var longitude = parentObj.find('.shopAddress').attr("data-y");
            var sessionShopInfo = {
                "shopImg": shopImg,
                "shopName": shopName,
                "shopAddress": shopAddress,
                "latitude": latitude,
                "longitude": longitude,
            }
            sessionStorage.setItem("sessionShopInfo", JSON.stringify(sessionShopInfo)); //店铺信息
            window.location.href = "sel_food.html?shopId=" + shopId + "";
        })
    }

    //三联动
    function chooseSubway(obj, data) {
        $.ajax({
            type: "post",
            headers: setHeader,
            url: "http://" + ip + "/breakfastApi/weixin/subway/",
            data: JSON.stringify(data),
            cache: true,
            dataType: 'json',
            beforeSend: function (xhr) {
                layer.open({type: 2});   // 数据加载成功之前，使用loading组件
            },
            success: function (result){
                layer.closeAll();
                if (result.retCode == '000000') {
                    var list = result.data;
                    var str = '';
                    if (data.type == 1) str = '<option>选择地铁线</option>'
                    if (data.type == 2) str = '<option>选择地铁站</option>'
                    if (data.type == 3) str = '<option>选择地铁口</option>'
                    if (list && list.length > 0) {
                        for (var i = 0; i < list.length; i++) {
                            var _value = list[i].name;
                            if (data.type == 3) {
                                _value = list[i].id;
                            }
                            str += '<option value="'+_value+'">' + list[i].name + '</option>';
                        }
                    }
                    obj.empty().append(str);
                } else {
                    setTimeoutAlert(data.retMsg);
                }
            }
        });
    }
})