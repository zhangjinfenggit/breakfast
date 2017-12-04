package com.hmw.open.service.impl;

import com.hmw.open.model.BfOrderDetail;
import com.hmw.open.mapper.BfOrderDetailMapper;
import com.hmw.open.service.IBfOrderDetailService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 订单详情表--单独设计信息  服务实现类
 * </p>
 *
 * @author wx
 * @since 2017-10-03
 */
@Service
public class BfOrderDetailServiceImpl extends ServiceImpl<BfOrderDetailMapper, BfOrderDetail> implements IBfOrderDetailService {
	
}
