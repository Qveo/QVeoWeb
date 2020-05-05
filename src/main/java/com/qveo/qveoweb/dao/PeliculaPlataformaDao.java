package com.qveo.qveoweb.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.qveo.qveoweb.model.PeliculaPlataforma;

public interface PeliculaPlataformaDao extends JpaRepository<PeliculaPlataforma, Integer>  {
	
	List<PeliculaPlataforma> findAll();
}
