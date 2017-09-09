package com.welfare.dao;

import java.util.List;

import com.welfare.entity.NavList;
import com.welfare.entity.Tm;

public interface TmDao {
	List<Tm> findAll();
}
