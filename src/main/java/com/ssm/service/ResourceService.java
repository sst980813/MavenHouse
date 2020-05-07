package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Resourcepojo;


public interface ResourceService {
	public List<Resourcepojo> queryResourceByPar(Resourcepojo resource);
	public List<Resourcepojo> queryResource();
	public int insertResource(Resourcepojo resource);

}
