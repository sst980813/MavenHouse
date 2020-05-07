package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Admin;

public interface AdminService {
	public List<Admin> queryUserByPar(Admin admin);
}
