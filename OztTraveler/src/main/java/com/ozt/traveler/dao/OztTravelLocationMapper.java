package com.ozt.traveler.dao;

import com.ozt.traveler.entity.OztTravelLocation;

public interface OztTravelLocationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztTravelLocation record);

    int insertSelective(OztTravelLocation record);

    OztTravelLocation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztTravelLocation record);

    int updateByPrimaryKey(OztTravelLocation record);
}