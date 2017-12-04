package com.hmw.open.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 地铁线路表
 * </p>
 *
 * @author wx
 * @since 2017-11-08
 */
@TableName("bf_subway")
public class BfSubway extends Model<BfSubway> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	private Integer id;

	/**
	 * 城市id
	 */
	@TableField(value="city_id")
	private Integer cityId;

	/**
	 * 地铁名称
	 */
	@TableField(value="subway_name")
	private String subwayName;



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCityId() {
		return cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public String getSubwayName() {
		return subwayName;
	}

	public void setSubwayName(String subwayName) {
		this.subwayName = subwayName;
	}

	@Override
	protected Serializable pkVal() {
		// TODO Auto-generated method stub
		return null;
	}

}
