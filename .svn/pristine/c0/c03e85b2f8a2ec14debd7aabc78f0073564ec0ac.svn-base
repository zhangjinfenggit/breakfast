package com.hmw.open.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.hmw.open.model.BfSubwayLine;

/**
 * <p>
 * Mapper接口
 * </p>
 *
 * @author wx
 * @since 2017-10-03
 */
public interface BfSubwayLineMapper extends BaseMapper<BfSubwayLine> {

	List<BfSubwayLine> selectCityList(@Param(value = "cityName") String cityName);

	List<BfSubwayLine> selectSubwayNameList(@Param(value = "cityName") String cityName, @Param(value = "subwayLine") String subwayLine);

	List<BfSubwayLine> selectSubwayOutList(@Param(value = "cityName") String cityName, @Param(value = "subwayLine") String subwayLine,
			@Param(value = "subwayName") String subwayName);

}