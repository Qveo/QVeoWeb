package com.qveo.qveoweb.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.util.Collection;

@Entity
public class Director {
	private Integer id;
	@NotNull(message = " Introduce el nombre del director, por favor")
	@Size(max=50, message = "Su nombre no puede superar mas de 50 caracteres")
	private String nombre;
	private String foto;
	private Collection<Serie> series;
	private Collection<Pelicula> peliculas;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Basic
	@Column(name = "NOMBRE")
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@ManyToMany
	@JoinTable(name = "Director_serie", joinColumns = @JoinColumn(name = "id_director", nullable = false), inverseJoinColumns = @JoinColumn(name = "id_serie", nullable = false))
	public Collection<Serie> getSeries() {
		return series;
	}

	public void setSeries(Collection<Serie> series) {
		this.series = series;
	}

	@ManyToMany
	@JoinTable(name = "pelicula_director", joinColumns = @JoinColumn(name = "id_director", nullable = false), inverseJoinColumns = @JoinColumn(name = "id_pelicula", nullable = false))
	public Collection<Pelicula> getPeliculas() {
		return peliculas;
	}

	public void setPeliculas(Collection<Pelicula> peliculas) {
		this.peliculas = peliculas;
	}

	@Basic
	@Column(name = "FOTO")
	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
}
