package com.qveo.qveoweb.dto;

import java.util.Collection;

import com.qveo.qveoweb.model.Pelicula;
import com.qveo.qveoweb.model.Plataforma;
import com.qveo.qveoweb.model.Serie;

public class UsuarioResponseBody {
	
	private Integer id;
	private String email;
	private String foto;
    private Collection<Pelicula> peliculas;
    private Collection<Serie> series;
    
    public UsuarioResponseBody() {
	}

	public UsuarioResponseBody(Integer id, String email, String foto,
			Collection<Pelicula> peliculas, Collection<Serie> series) {
		this.id = id;
		this.email = email;
		this.foto = foto;
		this.peliculas = peliculas;
		this.series = series;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
	
	public Collection<Pelicula> getPeliculas() {
		return peliculas;
	}

	public void setPeliculas(Collection<Pelicula> peliculas) {
		this.peliculas = peliculas;
	}

	public Collection<Serie> getSeries() {
		return series;
	}

	public void setSeries(Collection<Serie> series) {
		this.series = series;
	}
    
    

}
