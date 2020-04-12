package com.qveo.qveoweb.model;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Lista {
    private Integer id;
    private Usuario usuario;
    private Collection<Pelicula> peliculas;
    private Collection<Serie> series;
    
    
    public Lista() {
    	
    }

	public Lista(Usuario usuario, Collection<Pelicula> peliculas, Collection<Serie> series) {
		this.usuario = usuario;
		this.peliculas = peliculas;
		this.series = series;
	}

	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "ID")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    @OneToOne
    @JoinColumn(name = "ID_USUARIO", referencedColumnName = "ID", nullable = false)
    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @ManyToMany
    @JoinTable(
            name ="lista_pelicula",
            joinColumns = @JoinColumn(name = "id_lista", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name="id_pelicula", referencedColumnName = "id")
    )
    public Collection<Pelicula> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(Collection<Pelicula> peliculas) {
        this.peliculas = peliculas;
    }

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name ="lista_serie",
            joinColumns = @JoinColumn(name = "id_lista",referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name="id_serie", referencedColumnName = "id")
    )
    public Collection<Serie> getSeries() {
        return series;
    }

    public void setSeries(Collection<Serie> series) {
        this.series = series;
    }
}
