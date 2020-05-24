package com.qveo.qveoweb.dao;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.sql.Date;
import java.util.Collection;
import java.util.List;

@Repository
public interface PeliculaDao extends JpaRepository<Pelicula, Integer> {
	
	List<Pelicula> findByGenerosInAndAnioBetween(Collection<Genero> generos,Date fechaInferior, Date fechaSuperior);
		
}
