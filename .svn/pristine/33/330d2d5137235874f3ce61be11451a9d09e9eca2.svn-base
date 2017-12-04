package com.hmw.open.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 地铁出口表
 * </p>
 *
 * @author wx
 * @since 2017-11-08
 */
@TableName("bf_subway_exit")
public class BfSubwayExit extends Model<BfSubwayExit> {

    private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	private Integer id;

	/**
	 * 地铁站名id
	 */
	@TableField(value="station_id")
	private Integer stationId;

	/**
	 * 出门名称
	 */
	@TableField(value="exit_name")
	private String exitName;



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getStationId() {
		return stationId;
	}

	public void setStationId(Integer stationId) {
		this.stationId = stationId;
	}

	public String getExitName() {
		return exitName;
	}

	public void setExitName(String exitName) {
		this.exitName = exitName;
	}

	@Override
	protected Serializable pkVal() {
		// TODO Auto-generated method stub
		return null;
	}

}
