package com.ssm.mapper;

import java.util.List;

import com.ssm.pojo.Resourcepojo;

public interface ResourceMapper {
	public List<Resourcepojo> queryResourceByPar(Resourcepojo resource);
	public List<Resourcepojo> queryResource();
	/**
	 * 閫氳繃appID鑾峰彇鐢ㄦ埛
	 * @author tylerchen
	 * @param appID
	 * @return
	 */
	public int insertResource(Resourcepojo resource);

}
