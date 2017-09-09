package com.welfare.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.welfare.dao.NavListDao;
import com.welfare.entity.LoginUser;
import com.welfare.entity.NavList;
import com.welfare.service.NavListService;
@Service
public class NavListServiceImpl implements NavListService{
	@Autowired
	NavListDao navListDao;
	public List<NavList> findAll() {
		// TODO Auto-generated method stub
		return navListDao.findAll();
	}

}
