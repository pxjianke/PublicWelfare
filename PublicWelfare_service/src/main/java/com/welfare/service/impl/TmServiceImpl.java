package com.welfare.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.welfare.dao.TmDao;
import com.welfare.entity.NavList;
import com.welfare.entity.Tm;
import com.welfare.service.TmService;
@Service
public class TmServiceImpl implements TmService{
	@Autowired
	TmDao tmDao;
	public List<Tm> findAll() {
		// TODO Auto-generated method stub
		return tmDao.findAll();
	}

}
