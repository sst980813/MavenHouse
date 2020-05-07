package com.ssm.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.pojo.Admin;
import com.ssm.service.AdminService;

@Controller
@Scope("prototype")
@RequestMapping("/admin")
public class AdminController {
	@Resource
	private AdminService adminService;
	//登录验证。
	//在数据库中查找对应用户名及密码。
	@RequestMapping("/unsalfLogin")
	public String login(HttpSession session,Admin admin ,ModelMap map){
		if(StringUtils.isEmpty(admin.getUsername()) || 
				StringUtils.isEmpty(admin.getPassword())){
			map.put("message", "用户名或密码不可为空");
			return "login";
		}
		List<Admin> us = adminService.queryUserByPar(admin);
		if(us.size() != 1){
			map.put("message", "用户名或密码错误");
			return "login";
			}
		return "index";
	}
	
}
