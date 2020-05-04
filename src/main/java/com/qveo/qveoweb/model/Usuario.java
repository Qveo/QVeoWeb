package com.qveo.qveoweb.model;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;
import java.util.ArrayList;
import java.util.Collection;

@Entity
@EntityListeners(AuditingEntityListener.class)
public class Usuario {
	
	
    private Integer id;
    @NotBlank(message="El nombre es obligatorio")
    @Size(min=2, max=50, message="No puede superar los 50 caracteres")
    private String nombre;
    @NotBlank(message="El apellido es obligatorio")
    private String apellidos;
    @NotEmpty @Email(message="El email debe ser válido")
    private String email;
    private String foto;
    @NotNull(message="La fecha es obligatoria")
    private Date fechaNacimiento;
    private String sexo;
    @NotNull(message="La contraseña es obligatoria")
    private String password;
    private Rol rol;
    @NotNull(message="El pais es obligatoria")
    private Pais pais;
    private Date fechaAlta;
	private Collection<Plataforma> plataformas;
    private Collection<Pelicula> peliculas;
    private Collection<Serie> series;
    
    public Usuario() {
    	
    }

    public Usuario(String nombre,String apellidos,String email, String foto,Date fechaNacimiento, String sexo, String password, Rol rol,
			Pais pais, Date fechaAlta) {
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = email;
		this.foto = foto;
		this.fechaNacimiento = fechaNacimiento;
		this.sexo = sexo;
		this.password = password;
		this.rol = rol;
		this.pais = pais;
		this.fechaAlta = fechaAlta;
		this.plataformas = new ArrayList<>();
		this.peliculas = new ArrayList<>();
		this.series = new ArrayList<>();
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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
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
