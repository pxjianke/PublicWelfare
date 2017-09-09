package com.welfare.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.welfare.dao.LoginUserDao;
import com.welfare.entity.LoginUser;
import com.welfare.service.LoginUserService;
@Service
public class LoginUserServiceImpl implements LoginUserService{
	@Autowired
	LoginUserDao loginUserDao;
	public List<LoginUser> findAll() {
		// TODO Auto-generated method stub
		return loginUserDao.findAll();
	}

}
