package com.ozt.user.dao;

import com.ozt.user.entity.OztUserCollection;

public interface OztUserCollectionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztUserCollection record);

    int insertSelective(OztUserCollection record);

    OztUserCollection selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztUserCollection record);

    int updateByPrimaryKey(OztUserCollection record);
}