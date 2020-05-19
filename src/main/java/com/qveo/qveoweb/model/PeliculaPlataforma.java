package com.qveo.qveoweb.model;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

//@IdClass(PeliculaPlataformaId.class)
@Entity
public class PeliculaPlataforma {
	
	
	private PeliculaPlataformaId id = new PeliculaPlataformaId();

	private Date fechaCaducidad;

	private Plataforma plataforma;

	private Pelicula pelicula;
	
	
	public PeliculaPlataforma() {
	}
	
	@Column(name = "CADUCA")
	public Date getFechaCaducidad() {
		return fechaCaducidad;
	}
	
	public void setFechaCaducidad(Date fechaCaducidad) {
		this.fechaCaducidad = fechaCaducidad;
	}
	
	@EmbeddedId
	public PeliculaPlataformaId getId() {
		return id;
	}

	public void setId(PeliculaPlataformaId id) {
		this.id = id;
	}
	
	@ManyToOne
	@MapsId("plataformaId")
	@JoinColumn(name = "ID_PLATAFORMA", referencedColumnName = "ID", nullable = false)
	public Plataforma getPlataforma() {
		return plataforma;
	}

	public void setPlataforma(Plataforma plataforma) {
		this.plataforma = plataforma;
	}
	
	@ManyToOne
	@MapsId("peliculaId")
	@JoinColumn(name = "ID_PELICULA", referencedColumnName = "ID", nullable = false)
	public Pelicula getPelicula() {
		return pelicula;
	}

	public void setPelicula(Pelicula pelicula) {
		this.pelicula = pelicula;
	}
	
	
	
	
	
}
