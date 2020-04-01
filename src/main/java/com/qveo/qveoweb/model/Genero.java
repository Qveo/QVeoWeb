package com.qveo.qveoweb.model;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Genero {
    private Integer id;
    private String nombre;
    private Collection<Pelicula> peliculas;
    private Collection<Serie> series;

    @Id
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


    @OneToMany(mappedBy = "generoByIdGenero")
    public Collection<Pelicula> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(Collection<Pelicula> peliculas) {
        this.peliculas = peliculas;
    }

    @OneToMany(mappedBy = "generoByIdGenero")
    public Collection<GeneroSerie> getSeries() {
        return series;
    }

    public void setSeries(Collection<GeneroSerie> series) {
        this.series = series;
    }
}
