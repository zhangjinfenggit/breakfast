package com.hmw.open.service.impl;

import java.util.List;

import com.hmw.open.model.BfSubwayLine;
import com.hmw.open.mapper.BfSubwayLineMapper;
import com.hmw.open.service.IBfSubwayLineService;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 地铁线路位置表  服务实现类
 * </p>
 *
 * @author wx
 * @since 2017-10-03
 */
@Service
public class BfSubwayLineServiceImpl extends ServiceImpl<BfSubwayLineMapper, BfSubwayLine> implements IBfSubwayLineService {

	@Autowired
	BfSubwayLineMapper subwayLineMapper;
	
	@Override
	public List<BfSubwayLine> selectCityList(String cityName) {
		return subwayLineMapper.selectCityList(cityName);
	}

	@Override
	public List<BfSubwayLine> selectSubwayNameList(String cityName,
			String subwayLine) {
		return subwayLineMapper.selectSubwayNameList(cityName,subwayLine);
	}

	@Override
	public List<BfSubwayLine> selectSubwayOutList(String cityName,
			String subwayLine, String subwayName) {
		return subwayLineMapper.selectSubwayOutList(cityName,subwayLine,subwayName);
	}
	
}
