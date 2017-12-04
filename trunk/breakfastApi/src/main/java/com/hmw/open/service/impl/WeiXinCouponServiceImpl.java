package com.hmw.open.service.impl;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.utils.CompuUtils;
import com.hmw.open.common.utils.DateUtils;
import com.hmw.open.model.BfCoupon;
import com.hmw.open.model.BfCouponProduce;
import com.hmw.open.model.BfUserWeixin;
import com.hmw.open.service.IBfCouponProduceService;
import com.hmw.open.service.IBfCouponService;
import com.hmw.open.service.IBfUserWeixinService;

/**
 * 优惠券发放公用方法
 * @author zhulei
 * @time 2017-10-07
 */
@Service
public class WeiXinCouponServiceImpl {

	private final static Logger logger = Logger.getLogger(WeiXinCouponServiceImpl.class);
	
	@Autowired
	IBfCouponProduceService bfCouponProduceService;
	
	@Autowired
	IBfUserWeixinService bfUserWeixinService;
	
	@Autowired
	IBfCouponService bfCouponService;
	
	/**
	 * type=1时，申请账号时发放；
	 * type=2时，支付完成时发放；
	 * type=3时，退款时发放；
	 * type=4时，向推荐人发放；
	 * phone 手机号
	 * @param type
	 */
	@Transactional
	public void recevieCoupon(String type, String phone) {
		Wrapper<BfCouponProduce> wrapper = new EntityWrapper<BfCouponProduce>();
		if(!StringUtils.isEmpty(type)){
			wrapper.eq("type", type);
		}
		wrapper.eq("produce_status", Constant.COUPON_PRODUCE_STATUS_1);//正在发送优惠券
		//查询对应优惠券任务表信息
		BfCouponProduce couponProduce = bfCouponProduceService.selectOne(wrapper);
		if(couponProduce!=null){
			BfCouponProduce produce = new BfCouponProduce();
			produce.setId(couponProduce.getId());
			logger.info("类型为"+type+"优惠券总数量："+couponProduce.getProduceAmount()+",优惠券已使用数量"+couponProduce.getIssuedAmount());
			//优惠券使用数量和发放数量相等时更改优惠券状态为已发完
			if(couponProduce.getProduceAmount() == couponProduce.getIssuedAmount()){
				produce.setProduceStatus(Constant.COUPON_PRODUCE_STATUS_2);
				if(!bfCouponProduceService.updateById(produce)){
					logger.info("更新优惠券任务表失败！");
				}
				logger.info("类型为"+type+"优惠券已使用完！"+phone);
			}else if(couponProduce.getProduceAmount() > couponProduce.getIssuedAmount()){
				//produce.setProduceAmount(CompuUtils.subduction(couponProduce.getProduceAmount(), 1)>0 ? CompuUtils.subduction(couponProduce.getProduceAmount(), 1) : 0); //优惠券总量减1
				produce.setIssuedAmount(CompuUtils.sum(couponProduce.getIssuedAmount(), 1)>0 ? CompuUtils.sum(couponProduce.getIssuedAmount(), 1) : 0);//优惠券已发放用总量 加 1
				if(!bfCouponProduceService.updateById(produce)){
					logger.info("更新优惠券任务表失败！");
				}
				Wrapper<BfUserWeixin> useWrapper = new EntityWrapper<BfUserWeixin>();
				if(StringUtils.isNotBlank(phone)){
					useWrapper.eq("phone", phone);
				}
				BfUserWeixin bfUserWeixin = bfUserWeixinService.selectOne(useWrapper);
				if(bfUserWeixin!=null){
					//同时插入一条记录在优惠券记录表中
					BfCoupon coupon = new BfCoupon();
					coupon.setCouponName(couponProduce.getProduceName());
					coupon.setCouponMoney(couponProduce.getProduceMoney());
					coupon.setOverdueTime(couponProduce.getOverdueTime());
					coupon.setType(type);
					coupon.setCouponMessage(couponProduce.getCouponMessge());
					coupon.setCouponStatus(Constant.COUPON_STATUS_1);
					coupon.setUserId(bfUserWeixin.getId());
					coupon.setPhone(phone);
					coupon.setCouponProduceId(couponProduce.getId());
					//优惠券码生成
					String couponCode = DateUtils.getString30(new Date());
					coupon.setCouponCode(couponCode);
					coupon.setCreateTime(new Date());
					if(!bfCouponService.insert(coupon)){
						logger.info("插入优惠券表失败！");
					}
				}else{
					logger.info("查询用户信息为空！");
				}
			}else{
				logger.info("类型为"+type+"优惠券数据非法！优惠券总数量："+couponProduce.getProduceAmount()+",优惠券已使用数量"+couponProduce.getIssuedAmount());
			}
			
			
		}else{
			logger.info("查询对应优惠券任务表信息为空！");
		}
	}

}
