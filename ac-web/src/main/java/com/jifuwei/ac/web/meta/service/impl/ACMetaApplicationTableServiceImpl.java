package com.jifuwei.ac.web.meta.service.impl;

import com.jifuwei.ac.foundation.error.ACErrorMsg;
import com.jifuwei.ac.foundation.exception.ACServiceException;
import com.jifuwei.ac.web.meta.dao.ACMetaApplicationTableDao;
import com.jifuwei.ac.web.meta.data.po.ACMetaApplicationTablePO;
import com.jifuwei.ac.web.meta.data.vo.ACMetaApplicationTableVO;
import com.jifuwei.ac.web.meta.service.ACMetaApplicationTableService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.Date;

/**
 * 应用信息逻辑层实现类
 * Created by JFW on 2016/11/2.
 */
@Service("ACMetaApplicationTableServiceImpl")
public class ACMetaApplicationTableServiceImpl implements ACMetaApplicationTableService {

    @Resource(name = "ACMetaApplicationTableDaoImpl")
    private ACMetaApplicationTableDao dataDao = null;

    @Override
    public void save(ACMetaApplicationTableVO vo) {
        ACMetaApplicationTablePO po = dataDao.getSingle(vo.getPrimaryKeys());
        if (po != null) {
            throw new ACServiceException(ACErrorMsg.ERROR_DUMPLICATE_PRIMARY_KEY);
        }
        po = vo.toPO();
        po.setCreate_by("sys");
        po.setCreate_time(new Timestamp(new Date().getTime()));
        dataDao.save(po);
    }
}
