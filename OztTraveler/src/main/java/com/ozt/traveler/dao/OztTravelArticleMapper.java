package com.ozt.traveler.dao;

import com.ozt.traveler.entity.OztTravelArticle;

public interface OztTravelArticleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OztTravelArticle record);

    int insertSelective(OztTravelArticle record);

    OztTravelArticle selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OztTravelArticle record);

    int updateByPrimaryKeyWithBLOBs(OztTravelArticle record);

    int updateByPrimaryKey(OztTravelArticle record);
}