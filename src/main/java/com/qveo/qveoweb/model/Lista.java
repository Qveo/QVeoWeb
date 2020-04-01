package com.qveo.qveoweb.model;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Lista {
    private Integer id;
    private Usuario usuario;
    private Collection<ListaPelicula> peliculas;
    private Collection<ListaSerie> series;

    @Id
    @Column(name = "ID")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Lista lista = (Lista) o;

        if (id != null ? !id.equals(lista.id) : lista.id != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }

    @ManyToOne
    @JoinColumn(name = "ID_USUARIO", referencedColumnName = "ID", nullable = false)
    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @OneToMany(mappedBy = "listaByIdLista")
    public Collection<ListaPelicula> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(Collection<ListaPelicula> peliculas) {
        this.peliculas = peliculas;
    }

    @OneToMany(mappedBy = "listaByIdLista")
    public Collection<ListaSerie> getSeries() {
        return series;
    }

    public void setSeries(Collection<ListaSerie> series) {
        this.series = series;
    }
}
