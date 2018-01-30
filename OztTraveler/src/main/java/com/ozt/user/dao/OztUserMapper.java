package com.ozt.user.dao;

import com.ozt.user.entity.OztUser;

public interface OztUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztUser record);

    int insertSelective(OztUser record);

    OztUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztUser record);

    int updateByPrimaryKey(OztUser record);
}