package com.hmw.open.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 地铁站名称
 * </p>
 *
 * @author wx
 * @since 2017-11-08
 */
@TableName("bf_subway_station")
public class BfSubwayStation extends Model<BfSubwayStation> {

    private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	private Integer id;

	/**
	 * 地铁id
	 */
	@TableField(value="subway_id")
	private Integer subwayId;

	/**
	 * 地铁站名
	 */
	@TableField(value="station_name")
	private String stationName;



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSubwayId() {
		return subwayId;
	}

	public void setSubwayId(Integer subwayId) {
		this.subwayId = subwayId;
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	@Override
	protected Serializable pkVal() {
		// TODO Auto-generated method stub
		return null;
	}

}
