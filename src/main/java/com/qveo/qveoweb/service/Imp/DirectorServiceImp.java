package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.util.List;

import javax.websocket.server.ServerEndpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.DirectorDao;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.service.DirectorService;

@Service
public class DirectorServiceImp implements DirectorService {

	@Autowired
	private DirectorDao dirDao;

	@Autowired
	UploadFileServiceImp fotoService;

	@Override
	@Transactional(readOnly = true)
	public List<Director> findAll() {

		return (List<Director>) dirDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Director getDirector(Integer id) {

		return dirDao.findById(id).orElse(null);
	}

	@Override
	public void save(Director director, MultipartFile foto) throws IOException {

		Integer last = null;
		if (director.getId() == null) {
			Integer last_id = last().getId();
			last = last_id + 1;
		}else {
			last = director.getId();
		}

		if (!foto.isEmpty()) {
			try {
				String uniqueFilename = null;

				uniqueFilename = fotoService.copy(foto, 4, last, director.getNombre());
				director.setFoto("/resources/img/directores/" + uniqueFilename);
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else if (foto.isEmpty()) {
			String uniqueFilename = null;
			uniqueFilename = fotoService.defaultFoto(4, last);
			director.setFoto("/resources/img/directores/" + uniqueFilename);

		}

		dirDao.save(director);

	}

	@Override
	@Transactional
	public void delete(Integer id) {

		Director director = getDirector(id);

		fotoService.delete(director.getFoto(), 4);

		dirDao.deleteById(id);

	}

	@Override
	public Director last() {
		Director director = dirDao.findTopByOrderByIdDesc();

		return director;

	}

}
