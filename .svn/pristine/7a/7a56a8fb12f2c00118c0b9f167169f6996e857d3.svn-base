package com.hmw.open.model;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 退款申请表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_refund_record")
public class BfRefundRecord extends Model<BfRefundRecord> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 退款说明
	 */
	@TableField(value="refund_remark")
	private String refundRemark;

	/**
	 * 退款类型：1、没有拿到早餐，2、早餐质量问题，3、其他
	 */
	private String type;

	/**
	 * 图片
	 */
	private String photo;

	/**
	 * 用户id
	 */
	@TableField(value="user_id")
	private Long userId;

	/**
	 * 用户手机号
	 */
	private String phone;

	/**
	 * 店铺id
	 */
	@TableField(value="shop_id")
	private Long shopId;

	/**
	 * 店铺名
	 */
	@TableField(value="shop_name")
	private String shopName;

	/**
	 * 订单id
	 */
	@TableField(value="order_id")
	private Long orderId;

	/**
	 * 订单号
	 */
	@TableField(value="order_no")
	private String orderNo;

	/**
	 * 创建时间
	 */
	@TableField(value="create_time")
	private Date createTime;

	/**
	 * 更新时间
	 */
	@TableField(value="update_time")
	private Date updateTime;

	/**
	 * 备注
	 */
	private String remark;



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRefundRemark() {
		return refundRemark;
	}

	public void setRefundRemark(String refundRemark) {
		this.refundRemark = refundRemark;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getShopId() {
		return shopId;
	}

	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	protected Serializable pkVal() {
		// TODO Auto-generated method stub
		return null;
	}

}
