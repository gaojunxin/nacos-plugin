package com.alibaba.nacos.plugin.datasource.impl.kingbase;

import com.alibaba.nacos.plugin.datasource.constants.DatabaseTypeConstant;
import com.alibaba.nacos.plugin.datasource.impl.base.BaseConfigInfoGrayMapper;

public class ConfigInfoGrayMapperByKingbase extends BaseConfigInfoGrayMapper {
    @Override
    public String getDataSource() {
        return DatabaseTypeConstant.KINGBASE;
    }

}
