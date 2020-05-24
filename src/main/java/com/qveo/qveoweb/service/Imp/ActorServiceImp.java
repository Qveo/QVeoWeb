package com.qveo.qveoweb.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qveo.qveoweb.dao.ActorDao;
import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.service.ActorService;

@Service
public class ActorServiceImp implements ActorService{

	@Autowired
	ActorDao ActorDao;
	
	@Override
	public List<Actor> getAllActor() {
		// TODO Auto-generated method stub
		return ActorDao.findAll();
	}

}