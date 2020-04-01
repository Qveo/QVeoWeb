package com.qveo.qveoweb.model;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Plataforma {
    private Integer id;
    private String nombre;
    private Collection<PeliculaPlataforma> peliculas;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Plataforma that = (Plataforma) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (nombre != null ? !nombre.equals(that.nombre) : that.nombre != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "plataformaByIdPlataforma")
    public Collection<PeliculaPlataforma> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(Collection<PeliculaPlataforma> peliculas) {
        this.peliculas = peliculas;
    }
}
