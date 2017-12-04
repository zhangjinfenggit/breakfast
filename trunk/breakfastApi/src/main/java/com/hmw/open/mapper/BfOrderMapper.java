package com.hmw.open.mapper;

import com.hmw.open.model.BfBusinessRecordDayVo;
import com.hmw.open.model.BfOrder;
import com.hmw.open.model.BfOrderDetailVo;
import com.hmw.open.model.BfOrderVo;
import com.hmw.open.model.BfOrderVos;
import com.hmw.open.model.BfOrdersVo;
import com.hmw.open.model.HistroySumRecordVo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

/**
 * <p>
 * Mapper接口
 * </p>
 *
 * @author wx
 * @since 2017-10-03
 */
public interface BfOrderMapper extends BaseMapper<BfOrder> {
	
	public Integer selectUntranferedMoney(Pagination page,  BfOrder bfOrder);
	
	/**
	 * 获得今日订单详情
	 * @param wrapper
	 * @return
	 * @throws Exception
	 */
	public List<BfOrderVo> selectNowDayDetail(@Param("ew") Wrapper<Object> wrapper) throws Exception;
	
	/**
	 * 查询订单通过商店id 和 订单状态
	 * @param wrapper
	 * @return
	 * @throws Exception
	 */
	public List<BfOrdersVo> getOrderList(@Param("ew") Wrapper<Object> wrapper) throws Exception;

	/**
	 * 获得订单中包含商品列表
	 * @param wrapper
	 * @return
	 * @throws Exception
	 */
	public List<BfOrderDetailVo> getOrdersDetail(@Param("ew") Wrapper<Object> wrapper) throws Exception;
	
	/**
	 * 查看历史流水（已退款部分）
	 * @param wrapper
	 * @return
	 */
	public BfBusinessRecordDayVo getHistorySum(@Param("ew") Wrapper<Object> wrapper) throws Exception;
	
	/**
	 * 查看指定日期的汇总（总收入，退款，分成，总计）
	 * @param wrapper
	 * @return
	 * @throws Exception
	 */
	public BfOrderVos getHistorySumDay(@Param("ew") Wrapper<Object> wrapper) throws Exception;
	
	/**
	 * 获得历史流水（按日）
	 * @param wrapper
	 * @return
	 */
	public List<HistroySumRecordVo> getHistorySumRecord(@Param("ew") Wrapper<Integer> wrapper) throws Exception;
	
	/**
	 * 查看指定天的订单
	 * @param wrapper
	 * @return
	 */
	public List<BfOrderVo> getOrderDay(@Param("ew") Wrapper<Object> wrapper) throws Exception;
	
	
	/**
	 * 查看订单详情
	 * @param wrapper
	 * @return
	 * @throws Exception
	 */
	public List<BfOrderDetailVo> getOrderDayDetail(@Param("ew") Wrapper<Object> wrapper) throws Exception;
	
}