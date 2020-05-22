package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.ActorDao;
import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.service.ActorService;

@Service
public class ActorServiceImp implements ActorService {

	@Autowired
	ActorDao actorDao;

	@Autowired
	UploadFileServiceImpl uploadFileService;

	@Override
	@Transactional(readOnly = true)
	public Actor getActor(Integer id) {

		return actorDao.findById(id).orElse(null);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Actor> findAllActor() {

		return actorDao.findAll();
	}

	@Override
	@Transactional
	public void save(Actor actorNuevo, MultipartFile foto) throws IOException {

		String fotoTemp;

		if (actorNuevo.getId() != null) {
			fotoTemp = getActor(actorNuevo.getId()).getFoto();
		} else {
			fotoTemp = "";
		}

		actorDao.save(actorNuevo);

		String uniqueFilename = null;

		if (!foto.isEmpty()) {
			try {
				uniqueFilename = uploadFileService.copy(foto, 3, actorNuevo.getId(), actorNuevo.getNombre());
				actorNuevo.setFoto("/resources/img/actores/" + uniqueFilename);

			} catch (IOException e) {

				e.printStackTrace();
			}
		} else if (foto.isEmpty()) {
			uniqueFilename = uploadFileService.defaultFoto(3, fotoTemp);
			actorNuevo.setFoto("/resources/img/actores/" + uniqueFilename);
		}

		actorDao.save(actorNuevo);
	}

	@Override
	@Transactional
	public void deleteActor(Integer id) {

		Actor actor = getActor(id);

		uploadFileService.delete(actor.getFoto(), 3);

		actorDao.deleteById(id);
	}
}
