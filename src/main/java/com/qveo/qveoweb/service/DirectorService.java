package com.qveo.qveoweb.service;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import com.qveo.qveoweb.model.Director;

public interface DirectorService {
	List<Director> getAllDirector();
	Optional<Director> findById(Integer id);
}
