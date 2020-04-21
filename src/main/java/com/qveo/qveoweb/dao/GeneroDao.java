package com.qveo.qveoweb.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.qveo.qveoweb.model.Genero;

@Repository
public interface GeneroDao extends JpaRepository<Genero	, Integer>{
	
}
