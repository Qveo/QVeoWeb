package com.qveo.qveoweb.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.qveo.qveoweb.model.Genero;

@Repository
public interface GeneroDao extends JpaRepository<Genero, Integer>{

}
