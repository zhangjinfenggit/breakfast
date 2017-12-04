package com.hmw.open.service.impl;

import com.hmw.open.model.BfBusinessRecord;
import com.hmw.open.mapper.BfBusinessRecordMapper;
import com.hmw.open.service.IBfBusinessRecordService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 流水详情表（从订单表来）  服务实现类
 * </p>
 *
 * @author wx
 * @since 2017-10-03
 */
@Service
public class BfBusinessRecordServiceImpl extends ServiceImpl<BfBusinessRecordMapper, BfBusinessRecord> implements IBfBusinessRecordService {
	
}
