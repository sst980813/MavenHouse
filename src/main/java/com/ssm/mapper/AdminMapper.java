package com.ssm.mapper;

import java.util.List;

import com.ssm.pojo.Admin;


public interface AdminMapper {
	public List<Admin> queryUserByPar(Admin admin);
	public int insertAdmin(Admin admin);
	public Admin queryUserByAppID(String appID);
}
