package com.ozt.sys.dao;

import com.ozt.sys.entity.OztSysRole;

public interface OztSysRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztSysRole record);

    int insertSelective(OztSysRole record);

    OztSysRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztSysRole record);

    int updateByPrimaryKey(OztSysRole record);
}