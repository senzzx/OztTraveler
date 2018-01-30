package com.ozt.rule.dao;

import com.ozt.rule.entity.OztRuleHotel;

public interface OztRuleHotelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztRuleHotel record);

    int insertSelective(OztRuleHotel record);

    OztRuleHotel selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztRuleHotel record);

    int updateByPrimaryKey(OztRuleHotel record);
}