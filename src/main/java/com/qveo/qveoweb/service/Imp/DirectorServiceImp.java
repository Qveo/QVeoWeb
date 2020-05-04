package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.util.List;

import javax.websocket.server.ServerEndpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qveo.qveoweb.dao.DirectorDao;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.service.DirectorService;

@Service
public class DirectorServiceImp implements DirectorService {
	
	@Autowired
	private DirectorDao dirDao;

	@Override
	@Transactional(readOnly = true)
	public List<Director> findAll() {
		// TODO Auto-generated method stub
		return (List<Director>) dirDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Director getDirector(Integer id) {
		// TODO Auto-generated method stub
		return dirDao.findById(id).orElse(null);
	}

	@Override
	public void save(Director director) throws IOException {
		// TODO Auto-generated method stub
		dirDao.save(director);
		
	}

	@Override
	@Transactional
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		dirDao.deleteById(id);
		
	}
	
	

}
