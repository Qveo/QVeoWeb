package com.qveo.qveoweb.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.qveo.qveoweb.dao.RolDao;
import com.qveo.qveoweb.model.Rol;
import com.qveo.qveoweb.service.RolService;

public class RolServiceImp implements RolService {
	
	@Autowired
	RolDao rolDao;

	@Override
	public Rol getRolById(Integer id) {
		
		Rol rol = rolDao.findById(id);
		
		return rol;
	}
	
	



}
