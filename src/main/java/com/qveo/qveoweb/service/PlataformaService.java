
package com.qveo.qveoweb.service;

import com.qveo.qveoweb.model.Plataforma;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface PlataformaService {

	Plataforma getPlataforma(Integer id);

	void save(Plataforma Plataforma, MultipartFile foto) throws IOException;

	void delete(Integer id);

	List<Plataforma> getAllPlataformas();

	List<Plataforma> findPlataformasHome();
}
