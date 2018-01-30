package com.ozt.user.entity;

import java.util.Date;

public class OztUserCollection {
    private Integer id;

    private Integer userId;

    private Integer articleId;

    private Integer resouceId;

    private Byte type;

    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Integer getResouceId() {
        return resouceId;
    }

    public void setResouceId(Integer resouceId) {
        this.resouceId = resouceId;
    }

    public Byte getType() {
        return type;
    }

    public void setType(Byte type) {
        this.type = type;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}