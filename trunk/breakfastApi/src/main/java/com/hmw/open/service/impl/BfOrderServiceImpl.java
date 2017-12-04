package com.hmw.open.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.hmw.open.mapper.BfOrderMapper;
import com.hmw.open.model.BfOrder;
import com.hmw.open.service.IBfOrderService;

/**
 * <p>
 * 订单表  服务实现类
 * </p>
 *
 * @author wx
 * @since 2017-10-03
 */
@Service
public class BfOrderServiceImpl extends ServiceImpl<BfOrderMapper, BfOrder> implements IBfOrderService {
	@Autowired
	BfOrderMapper bfOrderMapper;
	public Integer selectUntranferedMoney(Pagination page,  BfOrder bfOrder){
		
		return bfOrderMapper.selectUntranferedMoney(page, bfOrder);
		
	}
	
}
