package com.ssm.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import com.ssm.mapper.UserMapper;
import com.ssm.pojo.User;
import com.ssm.pojo.UserTrajectory;
import com.ssm.service.UserService;
@Service
@Scope("prototype")
public class UserServiceImpl implements UserService{
	@Resource
	private UserMapper usermapper;

	@Override
	public List<User> queryUserByPar(User user) {
		return usermapper.queryUserByPar(user);
	}
	@Override
	public List<User> queryUser() {
		return usermapper.queryUser();
	}
	@Override 
	public List<UserTrajectory> queryUserTrajectory() {
		return usermapper.queryUserTrajectory();
	}

	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return usermapper.insertUser(user);
	}
	

	@Override
	public User queryUserByAppID(String appID) {
		User user = usermapper.queryUserByAppID(appID);
		return user;
	}
}

