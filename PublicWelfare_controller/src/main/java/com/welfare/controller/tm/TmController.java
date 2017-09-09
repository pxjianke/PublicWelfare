package com.welfare.controller.tm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.welfare.entity.NavList;
import com.welfare.entity.Tm;
import com.welfare.service.TmService;

@Controller
@Scope("prototype")
@RequestMapping(value="/tm")
public class TmController {
	@Autowired
	TmService tmService;
	@RequestMapping(value="/index",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Object index(String date){
		List<Tm> list = tmService.findAll();
		return JSON.toJSON(list);
	}
}
