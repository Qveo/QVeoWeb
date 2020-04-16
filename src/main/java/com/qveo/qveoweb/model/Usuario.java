package com.qveo.qveoweb.model;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.sql.Date;
import java.util.Collection;

@Entity
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
    private String password;
    private Lista lista;
    private Rol rol;
    

    public Usuario() {
	}
    
    

	public Usuario(Integer id, String nombre, String apellidos, String email, String foto, Date fechaNacimiento,
			String sexo, String password, Rol rol) {
		this.id = id;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = email;
		this.foto = foto;
		this.fechaNacimiento = fechaNacimiento;
		this.sexo = sexo;
		this.password = password;
		this.rol = rol;
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
    
    @OneToOne(mappedBy = "usuario", cascade = CascadeType.ALL)
    public Lista getLista() {
        return lista;
    }

    public void setLista(Lista lista) {
        this.lista = lista;
    }
    
    @ManyToOne
    @JoinColumn(name = "ID_ROL", referencedColumnName = "ID", nullable = false)
    public Rol getRol() {
        return rol;
    }

    public void setRol(Rol rol) {
        this.rol = rol;
    }

}
