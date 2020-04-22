package com.qveo.qveoweb.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.qveo.qveoweb.model.Actor;


@Repository
public interface ActorDao extends JpaRepository<Actor, Integer>{

}
