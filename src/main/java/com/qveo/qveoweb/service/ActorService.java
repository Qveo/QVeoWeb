package com.qveo.qveoweb.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.model.Actor;

public interface ActorService {

	List<Actor> getAllActor();

	void save(Actor actorNuevo, MultipartFile file) throws IOException;

	void deleteActor(Integer id);

	Actor getActor(Integer id);

}
