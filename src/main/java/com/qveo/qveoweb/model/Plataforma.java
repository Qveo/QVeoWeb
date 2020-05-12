package com.qveo.qveoweb.model;

import javax.persistence.*;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;


@Entity
public class Plataforma {
	
    private Integer id;
    private String nombre;
    private Collection<Serie> series;
    private Collection<Usuario> usuarios;   
    private Collection<Pelicula> peliculas;
    private String logo;

    
    
    public Plataforma() {
	}

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
    @JoinTable(
            name ="pelicula_plataforma",
            joinColumns = @JoinColumn(name = "id_plataforma", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_pelicula", nullable = false)
    )
    public Collection<Pelicula> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(Collection<Pelicula> peliculas) {
        this.peliculas = peliculas;
    }

    @ManyToMany
    @JoinTable(
            name ="serie_plataforma",
            joinColumns = @JoinColumn(name = "id_plataforma", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_serie", nullable = false)
    )
    public Collection<Serie> getSeries() {
        return series;
    }

    public void setSeries(Collection<Serie> series) {
        this.series = series;
    }
}