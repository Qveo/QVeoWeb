package com.qveo.qveoweb.dto;

import java.util.Collection;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Plataforma;

public class FiltroDto {
	
	Collection<Genero> generos;
	Collection<Plataforma> plataformas;
	Collection<Integer> anios;
	
	public FiltroDto() {
	}



	public FiltroDto(Collection<Genero> generos, Collection<Plataforma> plataformas, Collection<Integer> anios) {
		this.generos = generos;
		this.plataformas = plataformas;
		this.anios = anios;
	}



	public Collection<Genero> getGeneros() {
		return generos;
	}



	public void setGeneros(Collection<Genero> generos) {
		this.generos = generos;
	}



	public Collection<Plataforma> getPlataformas() {
		return plataformas;
	}



	public void setPlataformas(Collection<Plataforma> plataformas) {
		this.plataformas = plataformas;
	}



	public Collection<Integer> getAnios() {
		return anios;
	}



	public void setAnios(Collection<Integer> anios) {
		this.anios = anios;
	}
	
	
	
}
