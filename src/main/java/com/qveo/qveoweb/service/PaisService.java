package com.qveo.qveoweb.service;


import java.util.List;


import com.qveo.qveoweb.model.Pais;

public interface PaisService {
	public List<Pais> findAll();

	public Pais getPais(Integer id);

	public void save(Pais pais);

	public void delete(Integer id);
}