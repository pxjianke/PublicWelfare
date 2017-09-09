package com.welfare.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.welfare.dao.MpDao;
import com.welfare.entity.Mp;
import com.welfare.service.MpService;
@Service
public class MpServiceImpl implements MpService{
	@Autowired
	MpDao mpDao;
	public List<Mp> findAll() {
		// TODO Auto-generated method stub
		return mpDao.findAll();
	}

}
