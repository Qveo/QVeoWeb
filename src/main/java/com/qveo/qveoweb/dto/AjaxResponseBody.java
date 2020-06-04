package com.qveo.qveoweb.dto;

import java.util.List;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Serie;

public class AjaxResponseBody {
	
	String msg;
	List<Pelicula> peliculas;
	List<Serie> series;
	
	public AjaxResponseBody() {
	}

	public AjaxResponseBody(String msg) {
		this.msg = msg;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public List<Pelicula> getPeliculas() {
		return peliculas;
	}

	public void setPeliculas(List<Pelicula> peliculas) {
		this.peliculas = peliculas;
	}

	public List<Serie> getSeries() {
		return series;
	}

	public void setSeries(List<Serie> series) {
		this.series = series;
	}
	
	
	

}
