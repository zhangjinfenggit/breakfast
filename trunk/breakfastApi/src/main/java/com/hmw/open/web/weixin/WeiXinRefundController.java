package com.hmw.open.web.weixin;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.model.BfOrder;
import com.hmw.open.model.BfRefundRecord;
import com.hmw.open.service.IBfOrderService;
import com.hmw.open.service.IBfRefundRecordService;
import com.hmw.open.service.IPictureService;
import com.hmw.open.web.weixin.request.shopcontroller.RefundResquest;

/**
 * 申请退款
 * 
 * @author zhulei
 * @time 2017-10-08
 */
@Controller
@RequestMapping("/weixin")
public class WeiXinRefundController {

	private final static Logger logger = Logger.getLogger(WeiXinRefundController.class);

	@Autowired
	IBfRefundRecordService bfRefundRecordService;

	@Autowired
	IBfOrderService bfOrderService;

	@Autowired
	IPictureService pictureService;

	/**
	 * 申请退款说明信息保存
	 * 
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/saveRefundMsg" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult saveRefundMsg(HttpServletRequest request, @RequestBody RefundResquest form) {
		logger.info("======开始申请退款说明信息保存======");
		try {
			if (null == form) {
				logger.error("申请退款说明信息, 入参错误", null);
				return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
			}
			String image = null;
			if (StringUtils.isNotEmpty(form.getPhoto())) {
				image = pictureService.uploadPic(form.getPhoto());
			}
			Wrapper<BfRefundRecord> wrapper = new EntityWrapper<BfRefundRecord>();
			if (StringUtils.isNotEmpty(form.getOrderNo())) {
				wrapper.eq("order_no", form.getOrderNo());
			}
			
			BfRefundRecord bfOrder = bfRefundRecordService.selectOne(wrapper);
			if (bfOrder != null) {
				return BaseResult.fail("已经提交了退款申请或者商家已经退款，请不要重复提交！");
			} else {
				// 根据订单号查询订单信息
				Wrapper<BfOrder> wrapper1 = new EntityWrapper<BfOrder>();
				if (StringUtils.isNotEmpty(form.getOrderNo())) {
					wrapper1.eq("order_no", form.getOrderNo());
				}
				BfOrder record = bfOrderService.selectOne(wrapper1);
				BfRefundRecord bfRefund = new BfRefundRecord();
				if (record != null) {
					logger.info("退款原因：" + form.getRefundRemark());
					bfRefund.setRefundRemark(form.getRefundRemark());
					bfRefund.setType(form.getType());
					bfRefund.setPhoto(image);// 图片
					bfRefund.setUserId(record.getUserId());
					bfRefund.setPhone(record.getPhone());
					bfRefund.setShopId(record.getShopId());
					bfRefund.setShopName(record.getShopName());
					bfRefund.setOrderId(record.getId());
					bfRefund.setOrderNo(form.getOrderNo());
					bfRefund.setCreateTime(new Date());
					bfRefund.setRemark("申请退款");
				} else {
					logger.info("此订单信息在订单表不存在！");
					return BaseResult.fail("此订单信息在订单表不存在！");
				}

				// 保存退款说明信息
				if (!bfRefundRecordService.insert(bfRefund)) {
					logger.info("插入退款说明失败！");
					return BaseResult.fail("插入退款说明失败！");
				}
				logger.info("======结束申请退款说明信息保存======");

				// 修改订单的状态
				record.setOrderStatus(Constant.ORDER_STATUS_5);
				record.setIsRefundFlag("2");
				if (!bfOrderService.updateById(record)) {
					logger.info("更新订单退款状态失败！");
					return BaseResult.fail("更新订单退款状态失败！");
				}
				return BaseResult.success();
			}
		} catch (Exception e) {
			logger.error("申请退款说明信息 error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
}
