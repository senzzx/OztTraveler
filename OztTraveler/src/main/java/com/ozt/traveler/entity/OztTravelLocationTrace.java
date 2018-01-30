package com.ozt.traveler.entity;

import java.util.Date;

public class OztTravelLocationTrace {
    private Integer id;

    private Integer userId;

    private Double longitude;

    private Double latitude;

    private Integer travelCityId;

    private String address;

    private Date createtime;

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

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Integer getTravelCityId() {
        return travelCityId;
    }

    public void setTravelCityId(Integer travelCityId) {
        this.travelCityId = travelCityId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}