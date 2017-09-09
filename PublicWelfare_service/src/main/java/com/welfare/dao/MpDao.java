package com.welfare.dao;

import java.util.List;

import com.welfare.entity.LoginUser;
import com.welfare.entity.Mp;

public interface MpDao {
	List<Mp> findAll();
}
