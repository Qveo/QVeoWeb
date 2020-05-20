package com.qveo.qveoweb.service;

import java.util.Optional;

import com.qveo.qveoweb.model.Actor;

public interface ActorService {

	Optional<Actor> findById(Integer id);
}
