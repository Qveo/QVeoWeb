package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

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
	public void save(PeliculaDto pelicula, MultipartFile foto) throws IOException {
		
		//Set<PeliculaPlataforma> peliculaPlataformaColeccion = new HashSet<PeliculaPlataforma>();
		Pelicula peliculaNew = new Pelicula(
				pelicula.getTitulo(),
				pelicula.getDuracion(),
				pelicula.getGuion(),
				pelicula.getPoster(),
				pelicula.getSinopsis(),
				pelicula.getAnio(),
				pelicula.getActores(),
				pelicula.getGeneros(),
				pelicula.getPais(),
				pelicula.getDirectores()
		);
		
		peliculaNew.setId(pelicula.getId());
		
		//Pelicula peliculaEditada = getPelicula(pelicula.getId());
		//peliculaEditada.setPeliculaPlataformas(peliculaPlataformaColeccion);
		//System.out.println();
		//int i=0;
		//peliculaNew.getPeliculaPlataformas().clear();
	
		//Set<PeliculaPlataforma> peliculaPlataformaColeccion = new HashSet<PeliculaPlataforma>();
		peliculaDao.save(peliculaNew);
		List<PeliculaPlataforma> peliculasPlataforma = peliculaPlataformaDao.findByPelicula(peliculaNew);

		if (!peliculasPlataforma.isEmpty()) {

			for (PeliculaPlataforma peliPlat : peliculasPlataforma) {
				peliculaPlataformaDao.delete(peliPlat);
			}
		}
		if (!pelicula.getPlataformas().isEmpty()) {

			for (Plataforma plata : pelicula.getPlataformas()) {

				PeliculaPlataforma peliculaPlataformaNew = new PeliculaPlataforma();
				peliculaPlataformaNew.setPlataforma(plata);
				peliculaPlataformaNew.setPelicula(peliculaNew);
				// peliculaNew.getPeliculaPlataformas().add(peliculaPlataformaNew);
				// i++;

				peliculaPlataformaDao.save(peliculaPlataformaNew);
				// peliculaPlataformaColeccion.add(peliculaPlataformaNew);

				System.out.println(plata.getNombre());
			}
		}
		
		if (!foto.isEmpty()) {
			try {
				String uniqueFilename = null;

				uniqueFilename = uploadFileService.copy(foto, 2, peliculaNew.getId(), peliculaNew.getTitulo());
				peliculaNew.setPoster("/resources/img/peliculas/" + uniqueFilename);
				System.out.println(uniqueFilename);
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else if (foto.isEmpty()) {
			String uniqueFilename = null;
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