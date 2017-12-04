package com.hmw.open.model;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 地铁线路位置表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_subway_line")
public class BfSubwayLine extends Model<BfSubwayLine> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 城市名
	 */
	@TableField(value="city_name")
	private String cityName;

	/**
	 * 地铁路线
	 */
	@TableField(value="subway_line")
	private String subwayLine;

	/**
	 * 地铁站名
	 */
	@TableField(value="subway_name")
	private String subwayName;

	/**
	 * 地铁出口
	 */
	@TableField(value="subway_out")
	private String subwayOut;

	/**
	 * 操作人
	 */
	private String operater;

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

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getSubwayLine() {
		return subwayLine;
	}

	public void setSubwayLine(String subwayLine) {
		this.subwayLine = subwayLine;
	}

	public String getSubwayName() {
		return subwayName;
	}

	public void setSubwayName(String subwayName) {
		this.subwayName = subwayName;
	}

	public String getSubwayOut() {
		return subwayOut;
	}

	public void setSubwayOut(String subwayOut) {
		this.subwayOut = subwayOut;
	}

	public String getOperater() {
		return operater;
	}

	public void setOperater(String operater) {
		this.operater = operater;
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
