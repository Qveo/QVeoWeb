package com.qveo.qveoweb.dao;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;
import com.qveo.qveoweb.model.Plataforma;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.Collection;
import java.util.List;
import java.util.Set;

@Repository
public interface PeliculaDao extends JpaRepository<Pelicula, Integer> {
	
	List<Pelicula> findByGenerosIn(Collection<Genero> generos);
	
	List<Pelicula> findByAnioBetween(Date fechaInferior, Date fechaSuperior);
		       
	List<Pelicula> findByGenerosInAndAnioBetween(Collection<Genero> peliculas,Date fechaInferior, Date fechaSuperior);
	
	List<Pelicula> findByGenerosInAndAnioBetweenPeliculaPlataformas(Collection<Genero> peliculas,Date fechaInferior, Date fechaSuperior);
	
}
