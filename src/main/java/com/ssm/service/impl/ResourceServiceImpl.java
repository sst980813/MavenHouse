package com.ssm.service.impl;

import java.util.List;

import com.ssm.pojo.Resourcepojo;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.ssm.mapper.ResourceMapper;
import com.ssm.pojo.Resourcepojo;

import com.ssm.service.ResourceService;;
@Service
@Scope("prototype")
public class ResourceServiceImpl implements ResourceService {
	@Resource
	private ResourceMapper sourcemapper;

	@Override
	public List<Resourcepojo> queryResourceByPar(Resourcepojo resource){
		return sourcemapper.queryResourceByPar(resource);
		
	}
	@Override
	public List<Resourcepojo> queryResource(){
		return sourcemapper.queryResource();
		
	}
	@Override
	public int insertResource(Resourcepojo resource) {
		return sourcemapper.insertResource(resource);
		
	}

}
