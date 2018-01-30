package com.ozt.traveler.dao;

import com.ozt.traveler.entity.OztTravelTrip;

public interface OztTravelTripMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztTravelTrip record);

    int insertSelective(OztTravelTrip record);

    OztTravelTrip selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztTravelTrip record);

    int updateByPrimaryKey(OztTravelTrip record);
}