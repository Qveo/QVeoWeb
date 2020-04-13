package com.qveo.qveoweb.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.qveo.qveoweb.model.Serie;

@Repository
public interface SerieDao extends JpaRepository<Serie, Integer>{
	
	
}
