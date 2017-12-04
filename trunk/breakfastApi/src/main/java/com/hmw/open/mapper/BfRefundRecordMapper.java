package com.hmw.open.mapper;

import com.hmw.open.model.BfRefundRecord;
import com.hmw.open.model.BfRefundRecordVo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;

/**
 * <p>
 * Mapper接口
 * </p>
 *
 * @author wx
 * @since 2017-10-03
 */
public interface BfRefundRecordMapper extends BaseMapper<BfRefundRecord> {

	/**
	 * 查看退款申请
	 * @param wrapper
	 * @return
	 * @throws Exception
	 */
	public List<BfRefundRecordVo> getRefundRecord(@Param("ew") Wrapper<Object> wrapper) throws Exception;
	
}