package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.util.List;
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

		String fotoTemp;
		
		if(serieNew.getId()!=null) {
			fotoTemp=getSerie(serieNew.getId()).getPoster();
		}else {
			fotoTemp="";
		}
		
		serieDao.save(serieNew);

		String uniqueFilename = null;
		
		
		if (!poster.isEmpty()) {

			try {
	
				uniqueFilename = uploadFileService.copy(poster, 1,serieNew.getId(), serieNew.getTitulo());
				serieNew.setPoster("/resources/img/series/" + uniqueFilename);

			} catch (IOException e) {

				e.printStackTrace();

			}

		} else if (poster.isEmpty()) {

			uniqueFilename = uploadFileService.defaultFoto(1, fotoTemp);
			serieNew.setPoster("/resources/img/series/" + uniqueFilename);

		}

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
