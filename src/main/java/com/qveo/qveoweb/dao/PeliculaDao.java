package com.qveo.qveoweb.dao;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Plataforma;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface PeliculaDao extends JpaRepository<Pelicula, Integer> {
    //List<Pelicula> findByPlataformasIn(Collection<Plataforma> plataformas);
}
