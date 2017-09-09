package com.welfare.controller.mp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.welfare.entity.Mp;
import com.welfare.entity.NavList;
import com.welfare.service.MpService;

@Controller
@Scope("prototype")
@RequestMapping(value="/mp")
public class MpController {
	@Autowired
	MpService mpService;
	@RequestMapping(value="/index",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Object index(){
		List<Mp> list = mpService.findAll();
		
		//System.out.print(navListService.findAll());
		return JSON.toJSON(list);
	}
}
