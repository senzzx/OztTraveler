package com.ozt.rule.dao;

import com.ozt.rule.entity.OztRuleProvince;

public interface OztRuleProvinceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztRuleProvince record);

    int insertSelective(OztRuleProvince record);

    OztRuleProvince selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztRuleProvince record);

    int updateByPrimaryKey(OztRuleProvince record);
}