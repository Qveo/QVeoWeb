package com.qveo.qveoweb.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;

@Repository
public interface PeliculaPlataformaDao extends JpaRepository<PeliculaPlataforma, Integer>  {
	
	List<PeliculaPlataforma> findAll();
	List<PeliculaPlataforma> findByPelicula(Pelicula pelicula);
}
