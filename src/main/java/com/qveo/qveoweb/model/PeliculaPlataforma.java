package com.qveo.qveoweb.model;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

@Entity
public class PeliculaPlataforma {
	
	@EmbeddedId
	private PeliculaPlataformaId id = new PeliculaPlataformaId();
	
	private Date fechaCaducidad;
	
	@ManyToOne
	@MapsId("plataformaId")
	private Plataforma plataforma;
	
	@ManyToOne
	@MapsId("peliculaId")
	private Pelicula pelicula;
	
	@Basic
    @Column(name = "CADUCA")
	public Date getFechaCaducidad() {
		return fechaCaducidad;
	}
	
	public void setFechaCaducidad(Date fechaCaducidad) {
		this.fechaCaducidad = fechaCaducidad;
	}
	
	public Pelicula getPelicula() {
		return pelicula;
	}
	
	public void setPelicula(Pelicula pelicula) {
		this.pelicula = pelicula;
	}
}
