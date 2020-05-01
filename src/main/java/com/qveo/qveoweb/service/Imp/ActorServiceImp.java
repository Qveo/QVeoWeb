package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.ActorDao;
import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.service.ActorService;

@Service
public class ActorServiceImp implements ActorService{
	
	@Autowired
	ActorDao actorDao;
	


	@Override
	@Transactional(readOnly = true)
	public Optional<Actor> getActor(Integer id) {
		// TODO Auto-generated method stub
		return actorDao.findById(id);
	}
	
	@Override
	@Transactional(readOnly = true)
	public List<Actor> findAllActor() {
		// TODO Auto-generated method stub
		return actorDao.findAll();
	}

	@Override
	@Transactional
	public void save(Actor actorNuevo) {		
		actorDao.save(actorNuevo);
	}

	@Override
	@Transactional
	public void deleteActor(Integer id) {
		actorDao.deleteById(id);
	}
}
