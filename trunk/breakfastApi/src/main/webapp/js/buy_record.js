$(function () {
    $.ajax({
        headers: setHeader,
        type: "post",
        url: "http://" + ip + "/breakfastApi/weixin/queryOrderHistory",
        dataType: "json",
        success: function (result) {
            if (result.retCode == "000000") {
                var list = result.data;
                var str = "";
                if (list != null && list.length > 0) {
                    for (var i = 0; i < list.length; i++) {
                        var orderDetails = list[i].orderDetail;
                        var foodsList = JSON.parse(orderDetails);
                        var str1 = "";
                        var str2 = "";
                        var tmp = '';
                        var n = parseInt(list[i].orderStatus);
                        switch (n) {
                            case 1:
                                tmp = '待支付';
                                break;
                            case 2:
                                tmp = '已支付';
                                break;
                            case 3:
                                tmp = '已备餐';
                                break;
                            case 4:
                                tmp = '已完成';
                                break;
                            case 5:
                                tmp = '未退款';
                                break;
                            case 6:
                                tmp = '退款中';
                                break;
                            case 7:
                                tmp = '已退款';
                                break;
                        }
                        if (foodsList.singleProductList && foodsList.singleProductList.length > 0) {
                            var singleList = foodsList.singleProductList;
                            for (var x = 0; x < singleList.length; x++) {
                                str1 += '<li>\
									<p>\
										<span>' + singleList[x].name + '</span><span>x' + singleList[x].amount + '</span>\
										<span>¥<em class="price">' + singleList[x].singleMoney + '</em></span>\
									</p>\
								</li>'
                            }
                        }
                        if (foodsList.packProductList && foodsList.packProductList.length > 0) {
                            var packageList = foodsList.packProductList;
                            for (var x = 0; x < packageList.length; x++) {
                                var str22 = '';
                                var packageListSingle = packageList[x].singleProductList; //套餐里的单品
                                for (var y = 0; y < packageListSingle.length;y++) {
                                    str22 += '<li>' + packageListSingle[y].name + '&nbsp;x' + packageListSingle[y].amount + '</li>'
                                }
                                str2 += '<li>\
									<p>\
										<span>' + packageList[x].name + '</span><span>x' + packageList[x].amount + '</span>\
										<span>¥<em class="price">' + packageList[x].packageMoney + '</em></span>\
									</p>\
									<ul>' + str22 + '</ul>\
								</li>'
                            }
                        }
                        str += "<li>\
                                    <h2>" + tmp + "</h2>\
                                    <p>店铺: <span>"+ list[i].shopName + "</span></p>\
                                    <p>订单号: <span>" + list[i].orderNo+"</span></p>\
                                    <p>下单时间: <span>"+list[i].orderTime+"</span></p>\
                                    <p>早餐:</p>\
                                    <ul>" + str1+str2 + "</ul><u></u><i>消费金额 : ¥" + list[i].totalMoney + "</i>\
                                </li>";
                    }
                }
                $("#orderList").html(str);
            } else {
                setTimeoutAlert(result.retMsg)
            }
        }
    });
});