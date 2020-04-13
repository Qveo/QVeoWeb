package com.qveo.qveoweb.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.qveo.qveoweb.model.Pelicula;


@Repository
public interface PeliculaDao extends JpaRepository<Pelicula, Integer>{

}
