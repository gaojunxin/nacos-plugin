package com.alibaba.nacos.plugin.datasource.impl.kingbase;

import com.alibaba.nacos.common.utils.CollectionUtils;
import com.alibaba.nacos.plugin.datasource.constants.DataSourceConstant;
import com.alibaba.nacos.plugin.datasource.constants.DatabaseTypeConstant;
import com.alibaba.nacos.plugin.datasource.constants.FieldConstant;
import com.alibaba.nacos.plugin.datasource.impl.base.BaseConfigMigrateMapper;
import com.alibaba.nacos.plugin.datasource.mapper.ConfigMigrateMapper;
import com.alibaba.nacos.plugin.datasource.model.MapperContext;
import com.alibaba.nacos.plugin.datasource.model.MapperResult;

public class ConfigMigrateMapperByKingbase extends BaseConfigMigrateMapper {
    @Override
    public String getDataSource() {
        return DatabaseTypeConstant.KINGBASE;
    }

    @Override
    public MapperResult getConfigConflictCount(MapperContext context) {
        String sql = "SELECT COUNT(*) AS count FROM config_info ci1"
                + " WHERE ci1.tenant_id = 'public' AND (ci1.src_user <> ? OR ci1.src_user IS NULL) "
                + " AND EXISTS (SELECT 1 FROM config_info ci2"
                + " WHERE ci2.data_id = ci1.data_id AND ci2.group_id = ci1.group_id AND ci2.md5 <> ci1.md5"
                + " AND ci2.tenant_id = '' AND (ci2.src_user <> ? OR ci2.src_user IS NULL))";
        Object srcUser = context.getWhereParameter(FieldConstant.SRC_USER);
        return new MapperResult(sql, CollectionUtils.list(srcUser, srcUser));
    }
}
