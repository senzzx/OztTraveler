package com.ozt.user.dao;

import com.ozt.user.entity.OztUserBroadcast;

public interface OztUserBroadcastMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztUserBroadcast record);

    int insertSelective(OztUserBroadcast record);

    OztUserBroadcast selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztUserBroadcast record);

    int updateByPrimaryKey(OztUserBroadcast record);
}