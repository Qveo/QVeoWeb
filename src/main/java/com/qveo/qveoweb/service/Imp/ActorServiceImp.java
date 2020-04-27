package com.qveo.qveoweb.service.Imp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.qveo.qveoweb.dao.ActorDao;
import com.qveo.qveoweb.model.Actor;
import com.qveo.qveoweb.service.ActorService;

@Service
public class ActorServiceImp implements ActorService{
	
	@Autowired
	ActorDao actorDao;
	
	public static String directorioSerie = "src/main/webapp/resources/img/actores/";

	public String rutaguardar = "/resources/img/actores/";

	public String nombreFichero = "";

	@Override
	public Optional<Actor> getActor(Integer id) {
		// TODO Auto-generated method stub
		return actorDao.findById(id);
	}
	
	@Override
	public List<Actor> findAllActor() {
		// TODO Auto-generated method stub
		return actorDao.findAll();
	}

	@Override
	public void save(Actor actorNuevo) {
		nombreFichero=rutaguardar+actorNuevo.getNombre().trim().toLowerCase().replaceAll("\\s+", "_");
		
		actorNuevo.setFoto(nombreFichero);
		
		actorDao.save(actorNuevo);
		nombreFichero="";
	}

	@Override
	public void saveImg(MultipartFile file, String titulo) throws IOException {
		byte[] bytes = file.getBytes();

		String extension =file.getOriginalFilename().split("\\.")[1];;

		String fichero = directorioSerie + titulo.trim().toLowerCase().replaceAll("\\s+", "_") + "." + extension;
		
		
		Path path = Paths.get(fichero);

		Files.write(path, bytes);
		
	}
	@Override
	public void editarActor(Actor actorAct) {
		Actor actor=actorDao.findById(actorAct.getId()).get();
				if(actor != null) {
					actor.setNombre(actorAct.getNombre());
					actor.setSexo(actorAct.getSexo());
					actor.setPais(actorAct.getPais());
					actorDao.save(actor);
				}
				
		
	}

	@Override
	public void deleteActor(Integer id) {
		actorDao.deleteById(id);
	}

	



}
