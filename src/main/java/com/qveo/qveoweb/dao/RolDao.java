package com.qveo.qveoweb.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.qveo.qveoweb.model.Rol;

public interface RolDao extends JpaRepository<Rol, Long> {
	
	Rol findById(Integer id);

}
