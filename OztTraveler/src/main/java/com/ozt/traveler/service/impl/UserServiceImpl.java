package com.ozt.traveler.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ozt.traveler.dao.UserMapper;
import com.ozt.traveler.entity.User;
import com.ozt.traveler.service.IUserService;

@Service("userService") 
public class UserServiceImpl implements IUserService {
	@Resource  
    private UserMapper userMapper; 
	
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return this.userMapper.selectByPrimaryKey(userId);  
	}

}
