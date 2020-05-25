package com.qveo.qveoweb.dto;

import com.qveo.qveoweb.model.Usuario;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class PersonalInfoDto {
    private Integer id;
    private String foto;
    private String nombre;
    private String apellidos;
    private String sexo;
    private String email;
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    private Date fechaNacimiento;

    public PersonalInfoDto() {
    }

    public PersonalInfoDto(Usuario usuario) {
        this.id = usuario.getId();
        this.foto = usuario.getFoto();
        this.nombre = usuario.getNombre();
        this.apellidos = usuario.getApellidos();
        this.sexo = usuario.getSexo();
        this.email = usuario.getEmail();
        this.fechaNacimiento = usuario.getFechaNacimiento();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
}
