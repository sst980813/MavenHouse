package com.ssm.mapper;

import java.util.List;

import com.ssm.pojo.User;
import com.ssm.pojo.UserTrajectory;
public interface UserMapper {
	public List<User> queryUserByPar(User user);
	public List<User> queryUser();
	public List<UserTrajectory> queryUserTrajectory();
	public int insertUser(User user);
	/**
	 * 閫氳繃appID鑾峰彇鐢ㄦ埛
	 * @author tylerchen
	 * @param appID
	 * @return
	 */
	public User queryUserByAppID(String appID);

}
