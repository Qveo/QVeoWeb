package com.qveo.qveoweb.dto;

import java.util.Collection;

import com.qveo.qveoweb.model.Genero;
import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;

public class FiltroDto {
	
	Collection<Genero> generos;
	Collection<Plataforma> plataformas;
	Collection<Integer> anios;
	Integer accionFiltro;
	Collection<Pelicula> pelicula;
	Collection<Serie> series;
	
	public FiltroDto() {
	}


	public FiltroDto(Collection<Genero> generos, Collection<Plataforma> plataformas, Collection<Integer> anios,
			Integer accionFiltro) {
		this.generos = generos;
		this.plataformas = plataformas;
		this.anios = anios;
		this.accionFiltro = accionFiltro;
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
	
	public Collection<Pelicula> getPelicula() {
		return pelicula;
	}


	public void setPelicula(Collection<Pelicula> pelicula) {
		this.pelicula = pelicula;
	}


	public Collection<Serie> getSeries() {
		return series;
	}


	public void setSeries(Collection<Serie> series) {
		this.series = series;
	}


	public Integer getAccionFiltro() {
		return accionFiltro;
	}



	public void setAccionFiltro(Integer accionFiltro) {
		this.accionFiltro = accionFiltro;
	}

	
}
