package com.ozt.sys.dao;

import com.ozt.sys.entity.OztSysMenu;

public interface OztSysMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztSysMenu record);

    int insertSelective(OztSysMenu record);

    OztSysMenu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztSysMenu record);

    int updateByPrimaryKey(OztSysMenu record);
}