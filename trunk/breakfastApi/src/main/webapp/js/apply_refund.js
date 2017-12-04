$(function () {

    // 退款原因选择
    $('.que_list li').click(function () {
        $(this).addClass('current').siblings().removeClass('current');
    })

    //订单号
    var orderNo = GetQueryString("orderNo");

    $("#submitBtn").on("click", function () {
        var refundRemark = $('#refundRemark');
        var refundRemarkVal = $.trim(refundRemark.val());
        var imageSrc = $("#imagePreview > img").attr("src");
        var photo = '';
        if (!$('.que_list li').hasClass('current')) {
            setTimeoutAlert('请选择退款原因');
            return;
        } else if ($('.que_list li').last().hasClass('current') && refundRemarkVal == '') {
            setTimeoutAlert('请填写详细情况');
            refundRemark.focus();
            return;
        } else if (imageSrc) {
            photo = imageSrc.substring(imageSrc.indexOf(",") + 1);
        }

        var _data = {
            "orderNo": orderNo,
            "refundRemark": refundRemarkVal,
            "type": $(".que_list > .current").attr("values"),
            "photo": photo
        }
        $.ajax({
            type: "post",
            headers: setHeader,
            url: "http://" + ip + "/breakfastApi/weixin/saveRefundMsg",
            async: true,
            data: JSON.stringify(_data),
            dataType: "json",
            beforeSend: function (xhr) {
                $('#submitBtn').val('申请中...').css('backgroundColor', "#ccc").attr('disabled', "true");
            },
            success: function (result) {
                if (result.retCode == "000000") {
                    setTimeoutAlert('提交成功');
                    location.href = "sublime_refund.html"
                } else {
                    setTimeoutAlert(result.retMsg);
                    $('#submitBtn').val('申请退款').css('backgroundColor', "#e5bc0c").removeAttr("disabled");
                }
            }
        })

    })
});