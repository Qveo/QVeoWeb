package com.qveo.qveoweb.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.qveo.qveoweb.model.Pais;

@Repository
public interface PaisDao extends JpaRepository<Pais, Integer>{

}
