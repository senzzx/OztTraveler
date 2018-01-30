package com.ozt.sys.dao;

import com.ozt.sys.entity.OztSysRoleMenu;

public interface OztSysRoleMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztSysRoleMenu record);

    int insertSelective(OztSysRoleMenu record);

    OztSysRoleMenu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztSysRoleMenu record);

    int updateByPrimaryKey(OztSysRoleMenu record);
}