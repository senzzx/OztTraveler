package com.ozt.traveler.dao;

import com.ozt.traveler.entity.OztTravelCity;

public interface OztTravelCityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztTravelCity record);

    int insertSelective(OztTravelCity record);

    OztTravelCity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztTravelCity record);

    int updateByPrimaryKey(OztTravelCity record);
}