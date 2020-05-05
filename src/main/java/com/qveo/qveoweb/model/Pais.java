package com.qveo.qveoweb.model;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Pais {
    private Integer id;
    private String nombre;
    private Collection<Actor> actores;
    private Collection<Pelicula> peliculas;
    private Collection<Serie> series;
    private Collection<Usuario> usuarios;

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

    @OneToMany(mappedBy = "pais")
    public Collection<Actor> getActores() {
        return actores;
    }

    public void setActores(Collection<Actor> actores) {
        this.actores = actores;
    }

    @OneToMany(mappedBy = "pais")
    public Collection<Pelicula> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(Collection<Pelicula> peliculas) {
        this.peliculas = peliculas;
    }

    @OneToMany(mappedBy = "pais")
    public Collection<Serie> getSeries() {
        return series;
    }

    public void setSeries(Collection<Serie> series) {
        this.series = series;
    }
    
    @OneToMany(mappedBy = "pais")
	public Collection<Usuario> getUsuarios() {
		return usuarios;
	}
	
	public void setUsuarios(Collection<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
}
