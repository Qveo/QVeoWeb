package com.qveo.qveoweb.model;

import javax.persistence.*;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.util.Date;
import java.util.Collection;

@Entity
@EntityListeners(AuditingEntityListener.class)
public class Usuario {
    private Integer id;
    private String nombre;
    private String apellidos;
    private String email;
    private String foto;
    private Date fechaNacimiento;
    private String sexo;
    private String password;
    private Rol rol;
    private Pais pais;
    private Date fechaAlta;
	private Collection<Plataforma> plataformas;
    private Collection<Pelicula> peliculas;
    private Collection<Serie> series;

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

    @Basic
    @Column(name = "APELLIDOS")
    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    @Basic
    @Column(name = "EMAIL")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "FOTO")
    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    @Basic
    @Column(name = "FECHA_NACIMIENTO")
    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    @Basic
    @Column(name = "SEXO")
    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    @Basic
    @Column(name = "PASSWORD")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @ManyToOne
    @JoinColumn(name = "ID_ROL", referencedColumnName = "ID", nullable = false)
    public Rol getRol() {
        return rol;
    }

    public void setRol(Rol rol) {
        this.rol = rol;
    }
    
    @ManyToOne()
    @JoinColumn(name = "ID_PAIS", referencedColumnName = "ID", nullable = false)
	public Pais getPais() {
		return pais;
	}

	public void setPais(Pais pais) {
		this.pais = pais;
	}
	
	@CreatedDate
	@Column(name = "FECHA_ALTA")
	@Temporal(TemporalType.TIMESTAMP)
	public Date getFechaAlta() {
		return fechaAlta;
	}
	
	public void setFechaAlta(Date fechaAlta) {
		this.fechaAlta = fechaAlta;
	}
	
	@ManyToMany
    @JoinTable(
            name ="usuario_plataforma",
            joinColumns = @JoinColumn(name = "id_usuario", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_plataforma", nullable = false)
    )
	public Collection<Plataforma> getPlataformas() {
		return plataformas;
	}

	public void setPlataformas(Collection<Plataforma> plataformas) {
		this.plataformas = plataformas;
	}
	
	@ManyToMany
    @JoinTable(
            name ="usuario_pelicula",
            joinColumns = @JoinColumn(name = "id_usuario", nullable = false),
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
            name ="usuario_serie",
            joinColumns = @JoinColumn(name = "id_usuario", nullable = false),
            inverseJoinColumns = @JoinColumn(name="id_serie", nullable = false)
    )
	public Collection<Serie> getSeries() {
		return series;
	}

	public void setSeries(Collection<Serie> series) {
		this.series = series;
	}
	
}
