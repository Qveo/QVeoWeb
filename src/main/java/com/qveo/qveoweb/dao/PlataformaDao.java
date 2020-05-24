package com.qveo.qveoweb.dao;

import com.qveo.qveoweb.model.Plataforma;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlataformaDao extends JpaRepository<Plataforma, Integer> {
    List<Plataforma> findAll();
}
