package com.qveo.qveoweb.service;

import com.qveo.qveoweb.model.Plataforma;

import java.io.IOException;
import java.util.List;

public interface PlataformaService {
	public List<Plataforma> findAll();

	public Plataforma getPlataforma(Integer id);

	public void save(Plataforma Plataforma) throws IOException;

	public void delete(Integer id);
}
