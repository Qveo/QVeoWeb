package com.qveo.qveoweb.service.Imp;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.ActorDao;
import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.service.ActorService;

@Service
public class ActorServiceImp implements ActorService{

	@Autowired
	ActorDao actorDao;

	@Override
	public Actor findById(Integer id) {
		// TODO Auto-generated method stub
		return actorDao.findById(id).orElse(null);
	}
	
	
}
