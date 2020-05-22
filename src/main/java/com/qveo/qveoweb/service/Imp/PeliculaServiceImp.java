package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.dao.PeliculaPlataformaDao;
import com.qveo.qveoweb.dao.PlataformaDao;
import com.qveo.qveoweb.dto.PeliculaDto;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.PeliculaPlataforma;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PeliculaService;

@Service
public class PeliculaServiceImp implements PeliculaService {

	@Autowired
	PeliculaDao peliculaDao;

	@Autowired
	PeliculaPlataformaDao peliculaPlataformaDao;

	@Autowired
	IUploadFileService uploadFileService;

	@Autowired
	PlataformaDao plataformaDao;

	@Override
	@Transactional(readOnly = true)
	public List<Pelicula> findAll() {
		return (List<Pelicula>) peliculaDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Pelicula getPelicula(Integer id) {

		return peliculaDao.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public void save(PeliculaDto pelicula, MultipartFile foto) throws IOException {

		String fotoTemp;

		if (pelicula.getId() != null) {
			fotoTemp = getPelicula(pelicula.getId()).getPoster();
			
		} else {
			fotoTemp = "";
		}

		Pelicula peliculaNew = new Pelicula(pelicula.getTitulo(), pelicula.getDuracion(), pelicula.getGuion(),
				pelicula.getPoster(), pelicula.getSinopsis(), pelicula.getAnio(), pelicula.getActores(),
				pelicula.getGeneros(), pelicula.getPais(), pelicula.getDirectores());

		peliculaDao.save(peliculaNew);
		if (!foto.isEmpty()) {
			try {
				String uniqueFilename = null;

				uniqueFilename = uploadFileService.copy(foto, 2, peliculaNew.getId(), peliculaNew.getTitulo());
				peliculaNew.setPoster("/resources/img/peliculas/" + uniqueFilename);
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else if (foto.isEmpty()) {
			String uniqueFilename = null;
			uniqueFilename = uploadFileService.defaultFoto(2, fotoTemp);
			peliculaNew.setPoster("/resources/img/peliculas/" + uniqueFilename);

		}

		peliculaDao.save(peliculaNew);

		addPlataform(pelicula, peliculaNew);

		peliculaDao.save(peliculaNew);
	}

	@Override
	@Transactional
	public void delete(Integer id) {
		Pelicula pelicula = getPelicula(id);
		List<PeliculaPlataforma> peliculasPlataforma = peliculaPlataformaDao.findByPelicula(pelicula);

		if (!peliculasPlataforma.isEmpty()) {

			for (PeliculaPlataforma peliPlat : peliculasPlataforma) {
				peliculaPlataformaDao.delete(peliPlat);
			}
		}
		uploadFileService.delete(pelicula.getPoster(), 2);
		peliculaDao.deleteById(id);

	}

	@Override
	public void addPlataform(PeliculaDto pelicula, Pelicula peliculaNew) {

		if (!peliculaPlataformaDao.findByPelicula(peliculaNew).isEmpty()) {
			List<PeliculaPlataforma> peliculasPlataforma = peliculaPlataformaDao.findByPelicula(peliculaNew);
			for (PeliculaPlataforma peliPlat : peliculasPlataforma) {
				peliculaPlataformaDao.delete(peliPlat);
			}
		}

		if (pelicula.getPlataformas() != null) {

			for (Plataforma plata : pelicula.getPlataformas()) {

				PeliculaPlataforma peliculaPlataformaNew = new PeliculaPlataforma();
				peliculaPlataformaNew.setPlataforma(plata);
				peliculaPlataformaNew.setPelicula(peliculaNew);

				peliculaPlataformaDao.save(peliculaPlataformaNew);
			}
		}

	}

}
