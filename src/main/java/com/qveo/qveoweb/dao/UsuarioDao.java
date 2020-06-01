package com.qveo.qveoweb.dao;

import java.util.List;
import java.util.Optional;

import com.qveo.qveoweb.model.Usuario;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioDao extends JpaRepository<Usuario, Integer> {

    List<Usuario> findAll();
    List<Usuario> findByNombreStartingWith(String nombre);
    List<Usuario> findByNombre(String nombre);
    Usuario findByEmail(String email);
    
}