package com.ssm.service;
import java.util.List;
import com.ssm.pojo.User;
import com.ssm.pojo.UserTrajectory;
public interface UserService {
	public List<User> queryUserByPar(User user);
	public List<User> queryUser();
	public List<UserTrajectory> queryUserTrajectory();
	public int insertUser(User user);
	public User queryUserByAppID(String appID);
}
