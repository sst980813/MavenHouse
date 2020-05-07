package com.ssm.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.pojo.Resourcepojo;
import com.ssm.pojo.User;
import com.ssm.pojo.UserTrajectory;
import com.ssm.service.ResourceService;
import com.ssm.service.UserService;
import com.ssm.service.UtilService;

@Controller
@Scope("prototype")
@RequestMapping("/house")
public class ResourceController {
	@Resource
	private ResourceService resourceService;
	@Resource
	private UtilService utilService;
	@ResponseBody
	@RequestMapping("/queryResource")
	public ModelAndView queryUser(HttpSession session,ModelMap map){
		ModelAndView mav = new ModelAndView();
		List<Resourcepojo> cs= resourceService.queryResource();	
		if(cs==null)
		{
			System.out.println("无数据");
		}
		mav.addObject("cs", cs);
		mav.setViewName("queryResource");
		return mav;
		
	}
	@ResponseBody
	@RequestMapping("/queryResourceByPar")
	public ModelAndView queryUserTrajectory(HttpSession session,ModelMap map){
		ModelAndView mav = new ModelAndView();
		
		List<Resourcepojo> cs= resourceService.queryResourceByPar(new Resourcepojo().setIfgood("是"));
		if(cs==null)
		{
			System.out.println("无数据");
		}
		mav.addObject("cs", cs);
		mav.setViewName("queryGoodResource");
		return mav;
		
	}
	

}
