package com.welfare.dao;

import java.util.List;

import com.welfare.entity.LoginUser;
import com.welfare.entity.NavList;

public interface NavListDao {
	List<NavList> findAll();

}
