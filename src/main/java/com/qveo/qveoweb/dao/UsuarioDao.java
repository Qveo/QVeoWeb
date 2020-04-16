package com.qveo.qveoweb.dao;

import java.util.List;

import com.qveo.qveoweb.model.Usuario;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioDao extends JpaRepository<Usuario, Integer> {

    List<Usuario> findAll();
}