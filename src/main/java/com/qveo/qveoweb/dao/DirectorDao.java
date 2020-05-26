package com.qveo.qveoweb.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.qveo.qveoweb.model.Director;

@Repository
public interface DirectorDao extends JpaRepository <Director, Integer> {

	Director findTopByOrderByIdDesc();
}
