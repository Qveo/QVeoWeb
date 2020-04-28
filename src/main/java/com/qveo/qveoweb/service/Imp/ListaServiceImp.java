package com.qveo.qveoweb.service.Imp;

import org.springframework.beans.factory.annotation.Autowired;

import com.qveo.qveoweb.dao.ListaDao;
import com.qveo.qveoweb.service.ListaService;

public class ListaServiceImp implements ListaService {
	
	@Autowired
	ListaDao listaDao;

}
