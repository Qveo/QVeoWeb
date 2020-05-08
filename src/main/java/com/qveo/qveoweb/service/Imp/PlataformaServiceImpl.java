package com.qveo.qveoweb.service.Imp;

import com.qveo.qveoweb.dao.PlataformaDao;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.PlataformaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.List;

@Service
public class PlataformaServiceImpl implements PlataformaService {
    @Autowired
    PlataformaDao plataformaDao;

    @Override
	@Transactional(readOnly = true)
	public List<Plataforma> findAll() {
		// TODO Auto-generated method stub
		return (List<Plataforma>) plataformaDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Plataforma getPlataforma(Integer id) {
		// TODO Auto-generated method stub
		return plataformaDao.findById(id).orElse(null);
	}

	@Override
	public void save(Plataforma Plataforma) throws IOException {
		// TODO Auto-generated method stub
		plataformaDao.save(Plataforma);
		
	}

	@Override
	@Transactional
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		plataformaDao.deleteById(id);
		
	}
}
