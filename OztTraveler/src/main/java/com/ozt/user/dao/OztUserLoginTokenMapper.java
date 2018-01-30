package com.ozt.user.dao;

import com.ozt.user.entity.OztUserLoginToken;

public interface OztUserLoginTokenMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztUserLoginToken record);

    int insertSelective(OztUserLoginToken record);

    OztUserLoginToken selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztUserLoginToken record);

    int updateByPrimaryKey(OztUserLoginToken record);
}