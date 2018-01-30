package com.ozt.rule.dao;

import com.ozt.rule.entity.OztRuleCity;

public interface OztRuleCityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztRuleCity record);

    int insertSelective(OztRuleCity record);

    OztRuleCity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztRuleCity record);

    int updateByPrimaryKey(OztRuleCity record);
}