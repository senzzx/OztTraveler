package com.ozt.traveler.entity;

import java.util.Date;

public class OztTravelCity {
    private Integer id;

    private Integer userId;

    private Integer cityId;

    private Date travelDate;

    private Integer travelTripId;

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

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public Date getTravelDate() {
        return travelDate;
    }

    public void setTravelDate(Date travelDate) {
        this.travelDate = travelDate;
    }

    public Integer getTravelTripId() {
        return travelTripId;
    }

    public void setTravelTripId(Integer travelTripId) {
        this.travelTripId = travelTripId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}