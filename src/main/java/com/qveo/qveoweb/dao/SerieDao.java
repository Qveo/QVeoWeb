package com.qveo.qveoweb.dao;

import java.sql.Date;
import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;

@Repository
public interface SerieDao extends JpaRepository<Serie, Integer>{
	
	List<Serie> findByPlataformasInAndGenerosInAndFechaInicioBetween(Collection<Plataforma> plataformas,Collection<Genero> generos,Date fechaInicio, Date fechafinal);
	
}
