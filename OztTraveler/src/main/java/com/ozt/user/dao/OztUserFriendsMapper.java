package com.ozt.user.dao;

import com.ozt.user.entity.OztUserFriends;

public interface OztUserFriendsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztUserFriends record);

    int insertSelective(OztUserFriends record);

    OztUserFriends selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztUserFriends record);

    int updateByPrimaryKey(OztUserFriends record);
}