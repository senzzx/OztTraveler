package com.ozt.traveler.entity;

import java.util.Date;

public class OztTravelTrip {
    private Integer id;

    private Integer userId;

    private Date tripDate;

    private Date tripTime;

    private Integer depCityId;

    private String departure;

    private Integer desCityId;

    private String destination;

    private String tripRoute;

    private Byte traffic;

    private String driver;

    private String driverMobile;

    private Byte status;

    private String remark;

    private Date createTime;

    private Integer hotelId;

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

    public Date getTripDate() {
        return tripDate;
    }

    public void setTripDate(Date tripDate) {
        this.tripDate = tripDate;
    }

    public Date getTripTime() {
        return tripTime;
    }

    public void setTripTime(Date tripTime) {
        this.tripTime = tripTime;
    }

    public Integer getDepCityId() {
        return depCityId;
    }

    public void setDepCityId(Integer depCityId) {
        this.depCityId = depCityId;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure == null ? null : departure.trim();
    }

    public Integer getDesCityId() {
        return desCityId;
    }

    public void setDesCityId(Integer desCityId) {
        this.desCityId = desCityId;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination == null ? null : destination.trim();
    }

    public String getTripRoute() {
        return tripRoute;
    }

    public void setTripRoute(String tripRoute) {
        this.tripRoute = tripRoute == null ? null : tripRoute.trim();
    }

    public Byte getTraffic() {
        return traffic;
    }

    public void setTraffic(Byte traffic) {
        this.traffic = traffic;
    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver == null ? null : driver.trim();
    }

    public String getDriverMobile() {
        return driverMobile;
    }

    public void setDriverMobile(String driverMobile) {
        this.driverMobile = driverMobile == null ? null : driverMobile.trim();
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }
}