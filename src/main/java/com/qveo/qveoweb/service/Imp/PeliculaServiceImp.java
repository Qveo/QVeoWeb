package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.PeliculaDao;
import com.qveo.qveoweb.dao.PlataformaDao;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.service.IUploadFileService;
import com.qveo.qveoweb.service.PeliculaService;

@Service
public class PeliculaServiceImp implements PeliculaService {

	@Autowired
	PeliculaDao peliculaDao;
	
	@Autowired
	IUploadFileService uploadFileService;
	
	@Autowired
    PlataformaDao plataformaDao;

	public static String directorioPelicula = "src/main/webapp/resources/img/";

	public String rutaguardar = "/resources/img/pelicula/";

	public String nombreFichero = "";

	@Override
	@Transactional(readOnly = true)
	public List<Pelicula> findAll() {
		// TODO Auto-generated method stub
		return (List<Pelicula>) peliculaDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Pelicula getPelicula(Integer id) {

		return peliculaDao.findById(id).orElse(null);
	}
	

	@Override
	@Transactional
	public void save(Pelicula peliculaNew, MultipartFile foto) throws IOException {
		
		String uniqueFilename = null;
		if (!foto.isEmpty()) {				
			try {
				uniqueFilename = uploadFileService.copy(foto, 2, peliculaNew.getId());
			} catch (IOException e) {
				e.printStackTrace();
			}

			System.out.println(uniqueFilename);
		
		} else if (foto.isEmpty()) {

			uniqueFilename = uploadFileService.defaultFoto(2, peliculaNew.getId());
			
			peliculaNew.setPoster("/resources/img/peliculas/" + uniqueFilename);
			
			
		}

		peliculaDao.save(peliculaNew);

		// nombreFichero="";
	}
	

	@Override
	@Transactional
	public void delete(Integer id) {
		peliculaDao.deleteById(id);

	}

}