package com.qveo.qveoweb.service.Imp;

import com.qveo.qveoweb.dao.PlataformaDao;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.PlataformaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlataformaServiceImpl implements PlataformaService {
    @Autowired
    PlataformaDao plataformaDao;

    @Override
    public List<Plataforma> getAllPlataformas() {
        return plataformaDao.findAll();
    }
}
