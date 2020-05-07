package com.ssm.service.impl;

import java.io.InputStream;
import java.io.OutputStream;

import javax.annotation.Resource;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.ssm.mapper.BaseMapper;
import com.ssm.pojo.UserTrajectory;
import com.ssm.service.UtilService;

@Service
@Scope("prototype")
public class UtilServiceImpl implements UtilService{
	@Resource
	private BaseMapper basemapper;
	@Override
	public int insertUserTrajectory(UserTrajectory ut) {
		// TODO Auto-generated method stub
		return this.basemapper.insertUserTrajectory(ut);
	}
	
	
}