package com.qveo.qveoweb.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;


@Entity
public class Plataforma {
	
    private Integer id;
  
    private String nombre;
    private String foto;
    private Collection<Serie> series;
    private Collection<Usuario> usuarios;   
    private Set<PeliculaPlataforma> peliculaPlataformas = new HashSet<PeliculaPlataforma>();

    
    
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

    @OneToMany(mappedBy = "plataforma")
	public Set<PeliculaPlataforma> getPeliculaPlataformas() {
		return peliculaPlataformas;
	}

	public void setPeliculaPlataformas(Set<PeliculaPlataforma> peliculaPlataformas) {
		this.peliculaPlataformas = peliculaPlataformas;
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
    
    @ManyToMany(mappedBy = "plataformas")
	public Collection<Usuario> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(Collection<Usuario> usuarios) {
		this.usuarios = usuarios;
	}

	 @Basic
	 @Column(name = "LOGO")
	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
	
	
}
