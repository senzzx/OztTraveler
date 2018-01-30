package com.ozt.user.dao;

import com.ozt.user.entity.OztUserTrace;

public interface OztUserTraceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztUserTrace record);

    int insertSelective(OztUserTrace record);

    OztUserTrace selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztUserTrace record);

    int updateByPrimaryKey(OztUserTrace record);
}