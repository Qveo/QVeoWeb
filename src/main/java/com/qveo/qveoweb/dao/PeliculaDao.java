package com.qveo.qveoweb.dao;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.Collection;
import java.util.List;

@Repository
public interface PeliculaDao extends JpaRepository<Pelicula, Integer> {
	
	List<Pelicula> findByGenerosIn(Collection<Genero> generos);
	
	List<Pelicula> findByAnioBetween(Date fechaInferior, Date fechaSuperior);
		       
	List<Pelicula> findByGenerosInAndAnioBetween(Collection<Genero> peliculas,Date fechaInferior, Date fechaSuperior);
	
	List<Pelicula> findByPeliculaPlataformasIn(Collection<PeliculaPlataforma> peliculaPlataformas);
	

}
