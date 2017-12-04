package com.hmw.open.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.hmw.open.model.BfSubwayLine;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author wx
 * @since 2017-10-03
 */
public interface IBfSubwayLineService extends IService<BfSubwayLine> {

	List<BfSubwayLine> selectCityList(String cityName);

	List<BfSubwayLine> selectSubwayNameList(String cityName, String subwayLine);

	List<BfSubwayLine> selectSubwayOutList(String cityName, String subwayLine,
			String subwayName);
	
}
