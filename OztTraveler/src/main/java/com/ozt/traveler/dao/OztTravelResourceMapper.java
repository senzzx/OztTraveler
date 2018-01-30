package com.ozt.traveler.dao;

import com.ozt.traveler.entity.OztTravelResource;

public interface OztTravelResourceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztTravelResource record);

    int insertSelective(OztTravelResource record);

    OztTravelResource selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztTravelResource record);

    int updateByPrimaryKey(OztTravelResource record);
}