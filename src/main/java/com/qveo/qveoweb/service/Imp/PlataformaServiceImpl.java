package com.qveo.qveoweb.service.Imp;

import com.qveo.qveoweb.dao.PlataformaDao;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.PlataformaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public class PlataformaServiceImpl implements PlataformaService {
	@Autowired
	PlataformaDao plataformaDao;

	@Autowired
	UploadFileServiceImp fotoService;

	@Override
	@Transactional(readOnly = true)
	public List<Plataforma> findAll() {

		return (List<Plataforma>) plataformaDao.findAll();
	}
	
	@Override
	@Transactional(readOnly = true)
	public List<Plataforma> getAllPlataformas() {

		return (List<Plataforma>) plataformaDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Plataforma getPlataforma(Integer id) {

		return plataformaDao.findById(id).orElse(null);
	}

	@Override
	public void save(Plataforma plataforma, MultipartFile foto) throws IOException {
		
		String fotoTemp;
		
		if(plataforma.getId() != null) {
		 fotoTemp = getPlataforma(plataforma.getId()).getFoto();
		}else {
			 fotoTemp = "";
		}
		
		plataformaDao.save(plataforma);

		if (!foto.isEmpty()) {
			try {
				String uniqueFilename = null;

				uniqueFilename = fotoService.copy(foto, 5,plataforma.getId(), plataforma.getNombre());
				plataforma.setFoto("/resources/img/plataforma/" + uniqueFilename);
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else if (foto.isEmpty()) {
			String uniqueFilename = null;
			uniqueFilename = fotoService.defaultFoto(5, fotoTemp);
			plataforma.setFoto("/resources/img/plataforma/" + uniqueFilename);

		}

		plataformaDao.save(plataforma);

	}

	@Override
	@Transactional
	public void delete(Integer id) {

		Plataforma plat = getPlataforma(id);

		fotoService.delete(plat.getFoto(), 5);

		plataformaDao.deleteById(id);

	}


}
