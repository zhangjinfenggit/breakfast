package com.hmw.open.model;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 个人用户表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_user_weixin")
public class BfUserWeixin extends Model<BfUserWeixin> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 手机号
	 */
	private String phone;

	/**
	 * 头像
	 */
	@TableField(value="user_photo")
	private String userPhoto;

	/**
	 * 昵称
	 */
	@TableField(value="nice_user")
	private String niceUser;

	/**
	 * uuid值
	 */
	private String uuid;

	/**
	 * openid
	 */
	private String openid;

	/**
	 * 唯一性token
	 */
	private String token;

	/**
	 * 地点（微信提供）
	 */
	private String address;

	/**
	 * 性别（微信提供）
	 */
	private String sex;

	/**
	 * 积分数量(暂不实现)
	 */
	private Integer integral;

	/**
	 * 注册时间
	 */
	@TableField(value="register_time")
	private Date registerTime;

	/**
	 * 推荐人(手机号)
	 */
	private String recommend;

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUserPhoto() {
		return userPhoto;
	}

	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}

	public String getNiceUser() {
		return niceUser;
	}

	public void setNiceUser(String niceUser) {
		this.niceUser = niceUser;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getIntegral() {
		return integral;
	}

	public void setIntegral(Integer integral) {
		this.integral = integral;
	}

	public Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
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
