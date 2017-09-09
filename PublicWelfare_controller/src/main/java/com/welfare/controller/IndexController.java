package com.welfare.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSON;
import com.welfare.entity.LoginUser;
import com.welfare.entity.NavList;
import com.welfare.service.LoginUserService;
import com.welfare.service.NavListService;


@Controller
@Scope("prototype")
@RequestMapping(value="/home")
public class IndexController {
	@Autowired
	LoginUserService loginUserService;
	@Autowired
	NavListService navListService;
	@RequestMapping(value="/index",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Object index(String date){
		List<NavList> list = navListService.findAll();
		
		//System.out.print(navListService.findAll());
		return JSON.toJSON(list);
	}

}
