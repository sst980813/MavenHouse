package com.ssm.controller;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.pojo.UserTrajectory;
import com.ssm.service.UtilService;
import com.ssm.pojo.User;
import com.ssm.service.UserService;
import com.ssm.util.Page;
@Controller
@Scope("prototype")
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserService userService;
	@Resource
	private UtilService utilService;
	//验证用户名：用户名不能为空；用户名在数据库中不存在，若已存在则跳出错误信息。
	@ResponseBody
	@RequestMapping("/unsalfCheckUserName")
	public Object checkUserName(String username){
		Map<String,Object> result = new HashMap<String,Object>();
		if(StringUtils.isEmpty(username)){
			result.put("message", "用户名不可为空");
			result.put("result", false);
			return result;
		} 
		List<User> users = this.userService.queryUserByPar(
				new User().setUserName(username));
		if(users.isEmpty()){
			result.put("result", true);
		}else{ 
			result.put("message", "用户名已存在");
			result.put("result", false);
		}
		return result;
	}
	//验证所有注册信息是否正确。
	//验证手机验证码是否正确、用户名、密码、手机号格式是否正确
	//注册成功则跳转到登录页面，注册失败则跳出出错信息。
	@RequestMapping(value="/unsalfReg",method=RequestMethod.POST)
	public String reg(HttpServletRequest request,HttpServletResponse response,
			@RequestParam("username")String username,@RequestParam("password")String password,@RequestParam("phoneNumber")String phoneNumber,ModelMap map)
	{
		User user=new User();
		user.setUserName(username);
		List<User> users = this.userService.queryUserByPar(user);
		if(!users.isEmpty())
		{
			System.out.println(users);
			map.put("message", "用户名已存在");
			return "reg";
			
		}
		else {
			System.out.println("meizhaodao"+user);
		}
		user.setPassWord(password);
		user.setPhoneNumber(phoneNumber);
		String APPID = new Date().getTime() + "" + user.getUserName();
		int i = this.userService.insertUser(user.setAppID(APPID));
		if(i != 1){
			map.put("message", "注册失败，请联系管理员");
			map.put("user", user);
			return "reg";
		}
		else{
			System.out.println(user);
			List<User> us = this.userService.queryUserByPar(new User().setUserName(user.getUserName()));
			if(us.isEmpty())
				System.out.println("没找到");
			APPID = us.get(0).getAppID();
			utilService.insertUserTrajectory(
					new UserTrajectory().setAppID(APPID).setTrajectoryType(1).setExplaindetail(user.getUserName() + ":注册于:"+us.get(0).getCreateTime()));
		}
		
		return "login1";
	}
	//登录验证。
	//在数据库中查找对应用户名及密码。
	//这里可以输入用户名也可以输入手机号，在数据库中找不到用户名的情况下要接着找手机号。
	//登录成功则获取appID，用户独立缓存的凭证
	@RequestMapping("/unsalfLogin")
	public String login(HttpSession session,User user ,ModelMap map) {
		if(StringUtils.isEmpty(user.getUserName()) || 
				StringUtils.isEmpty(user.getPassWord())){
			map.put("message", "用户名或密码不可为空");
			return "login1";
		}
		System.out.println(user);
		List<User> us = userService.queryUserByPar(user);
		if(us.size() != 1){
				map.put("message", "用户名或密码错误");
				utilService.insertUserTrajectory(
						new UserTrajectory()
							.setAppID(us.get(0).getAppID())
								.setTrajectoryType(2)
									.setExplaindetail(user.getUserName() + ":登入[失败]于:"+us.get(0).getCreateTime()));
				return "login1";
		}
		
//		session.setAttribute(us.get(0).getAppID(), us.get(0));//暂时先放着，要转移到缓存
		map.put("userName", us.get(0).getUserName());
		map.put("appID", us.get(0).getAppID());//从此不离不弃~！！！获取用户独立缓存的唯一凭据
		utilService.insertUserTrajectory(
				new UserTrajectory()
					.setAppID(us.get(0).getAppID())
						.setTrajectoryType(2)
							.setExplaindetail(user.getUserName() + ":登入于:"+us.get(0).getCreateTime()));
		return "house1";
	}
	@ResponseBody
	@RequestMapping("/queryUser")
	public ModelAndView queryUser(HttpSession session,ModelMap map){
		ModelAndView mav = new ModelAndView();
		List<User> cs= userService.queryUser();	
		if(cs==null)
		{
			System.out.println("无数据");
		}
		mav.addObject("cs", cs);
		mav.setViewName("queryUser");
		return mav;
		
	}
	@ResponseBody
	@RequestMapping("/queryUserTrajectory")
	public ModelAndView queryUserTrajectory(HttpSession session,ModelMap map){
		ModelAndView mav = new ModelAndView();
		List<UserTrajectory> cs= userService.queryUserTrajectory();	
		if(cs==null)
		{
			System.out.println("无数据");
		}
		mav.addObject("cs", cs);
		mav.setViewName("queryUserTrajectory");
		return mav;
		
	}
}
