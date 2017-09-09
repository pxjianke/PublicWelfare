package com.welfare.dao;

import java.util.List;

import com.welfare.entity.LoginUser;

public interface LoginUserDao {
	List<LoginUser> findAll();
}
