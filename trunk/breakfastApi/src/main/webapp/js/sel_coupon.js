$(function(){

	$.ajax({
		type:"post",
		headers:setHeader,
		url:"http://"+ip+"/breakfastApi/weixin/myCoupon",
		async:false,
		dataType:"json",
		success:function(result){
			if(result.retCode == "000000"){
				var list = result.data;
				var str = "";
				if(list && list.length>0){
					for(var i=0;i<list.length;i++){
						str += "<li class='item'>\
								<img src='images/coupon.png' alt='' class='coupon'>\
								<div class='cou_desc'>\
									<p class='cou_price'>¥"+list[i].couponMoney+"</p>\
									<p>"+list[i].couponName+"</p>\
									<span>限"+list[i].overdueTime+"日前使用</span>\
									<span>使用此劵可抵扣"+list[i].couponMoney+"元早餐费用</span>\
								</div>\
								<img src='images/current.png' alt='' class='current'>\
							</li>";
					}
				}
				$("#couponList").html(str);
			}else{
				setTimeoutAlert(result.retMsg);
			}
		}
	});

});