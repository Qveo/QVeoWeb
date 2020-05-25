package com.qveo.qveoweb.dto;

import java.util.List;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Serie;

public class ContenidoVisualDto {
	
	private List<Serie> series;
	private List<Pelicula> peliculas;
	
	public ContenidoVisualDto() {
	}

	public ContenidoVisualDto(List<Serie> series, List<Pelicula> peliculas) {
		this.series = series;
		this.peliculas = peliculas;
	}

	public List<Serie> getSeries() {
		return series;
	}

	public void setSeries(List<Serie> series) {
		this.series = series;
	}

	public List<Pelicula> getPeliculas() {
		return peliculas;
	}

	public void setPeliculas(List<Pelicula> peliculas) {
		this.peliculas = peliculas;
	}
	
	
	
}
