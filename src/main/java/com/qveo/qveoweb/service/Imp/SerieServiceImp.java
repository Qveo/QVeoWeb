package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.SerieDao;
import com.qveo.qveoweb.model.Serie;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.SerieService;

@Service
public class SerieServiceImp implements SerieService {

	@Autowired
	SerieDao serieDao;

	@Autowired
	IUploadFileService uploadFileService;

	@Override
	@Transactional(readOnly = true)
	public List<Serie> findAllSerie() {
		// TODO Auto-generated method stub
		return serieDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Serie getSerie(Integer id) {

		return serieDao.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public void save(Serie serieNew, MultipartFile poster) throws IOException {

		Integer last = null;
		if (serieNew.getId() == null) {
			Integer last_id = last().getId();
			last = last_id + 1;
		} else {
			last = serieNew.getId();
			serieNew.setId(last);
		}

		if (!poster.isEmpty()) {

			try {

				String uniqueFilename = null;
				uniqueFilename = uploadFileService.copy(poster, 1,last, serieNew.getTitulo());
				serieNew.setPoster("/resources/img/series/" + uniqueFilename);

			} catch (IOException e) {

				e.printStackTrace();

			}

		} else if (poster.isEmpty()) {

			String uniqueFilename = null;
			uniqueFilename = uploadFileService.defaultFoto(1, last);
			System.out.println("Entras qasdasd " + uniqueFilename);
			serieNew.setPoster("/resources/img/series/" + uniqueFilename);

		}

		/*
		 * if(!file.isEmpty()) { if(editar==true) { String rutaFoto =
		 * serieService.getSerie(serieNueva.getId()).get().getPoster(); String ruta =
		 * rutaFoto.substring(rutaFoto.lastIndexOf('/') + 1);
		 * 
		 * if (serieNueva.getId() != null && serieNueva.getId() > 0 && ruta != null &&
		 * ruta.length() > 0) {
		 * 
		 * uploadFileService.delete(ruta, 1);
		 * 
		 * } }
		 * 
		 * String uniqueFilename = null;
		 * 
		 * try { uniqueFilename = uploadFileService.copy(file,1,serieNueva.getTitulo());
		 * } catch (IOException e) { e.printStackTrace(); }
		 * serieNueva.setPoster("/resources/img/series/" +uniqueFilename);
		 * 
		 * }
		 * 
		 * if(file.isEmpty() && editar==true) {
		 * serieNueva.setPoster(serieService.getSerie(serieNueva.getId()).get().
		 * getPoster()); }
		 */

		serieDao.save(serieNew);
	}

	@Override
	@Transactional
	public void deleteSerie(Integer id) {
		serieDao.deleteById(id);

	}

	public Serie last() {
		Serie serieLast = serieDao.findTopByOrderByIdDesc();
		return serieLast;
	}

}
