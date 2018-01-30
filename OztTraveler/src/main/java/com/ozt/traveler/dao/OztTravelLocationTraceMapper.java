package com.ozt.traveler.dao;

import com.ozt.traveler.entity.OztTravelLocationTrace;

public interface OztTravelLocationTraceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztTravelLocationTrace record);

    int insertSelective(OztTravelLocationTrace record);

    OztTravelLocationTrace selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztTravelLocationTrace record);

    int updateByPrimaryKey(OztTravelLocationTrace record);
}