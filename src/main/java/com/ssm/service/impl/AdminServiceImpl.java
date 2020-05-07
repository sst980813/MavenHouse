package com.ssm.service.impl;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import com.ssm.mapper.AdminMapper;
import com.ssm.pojo.Admin;
import com.ssm.service.AdminService;

@Service
@Scope("prototype")
public class AdminServiceImpl  implements AdminService{
	@Resource
	private AdminMapper adminmapper;
	@Override
	public List<Admin> queryUserByPar(Admin admin) {
		return adminmapper.queryUserByPar(admin);
	}
}
