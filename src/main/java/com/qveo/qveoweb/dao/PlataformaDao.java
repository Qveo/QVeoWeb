package com.qveo.qveoweb.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.qveo.qveoweb.model.Plataforma;

@Repository
public interface PlataformaDao extends JpaRepository<Plataforma, Integer> {
    List<Plataforma> findAll();
    
    Plataforma findTopByOrderByIdDesc();
}
