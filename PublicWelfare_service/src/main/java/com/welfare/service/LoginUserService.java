package com.welfare.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.welfare.entity.LoginUser;


public interface LoginUserService {
	List<LoginUser> findAll();
}
