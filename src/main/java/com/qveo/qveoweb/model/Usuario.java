package com.qveo.qveoweb.model;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;

@Entity
public class Usuario {
    private Integer id;
    private String nombre;
    private String apellidos;
    private String email;
    private String foto;
    private Date fechaNacimiento;
    private String sexo;
    private String password;
    private Collection<Lista> listas;
    private Rol rolByIdRol;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Usuario usuario = (Usuario) o;

        if (id != null ? !id.equals(usuario.id) : usuario.id != null) return false;
        if (nombre != null ? !nombre.equals(usuario.nombre) : usuario.nombre != null) return false;
        if (apellidos != null ? !apellidos.equals(usuario.apellidos) : usuario.apellidos != null) return false;
        if (email != null ? !email.equals(usuario.email) : usuario.email != null) return false;
        if (foto != null ? !foto.equals(usuario.foto) : usuario.foto != null) return false;
        if (fechaNacimiento != null ? !fechaNacimiento.equals(usuario.fechaNacimiento) : usuario.fechaNacimiento != null)
            return false;
        if (sexo != null ? !sexo.equals(usuario.sexo) : usuario.sexo != null) return false;
        if (password != null ? !password.equals(usuario.password) : usuario.password != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        result = 31 * result + (apellidos != null ? apellidos.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (foto != null ? foto.hashCode() : 0);
        result = 31 * result + (fechaNacimiento != null ? fechaNacimiento.hashCode() : 0);
        result = 31 * result + (sexo != null ? sexo.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "usuario")
    public Collection<Lista> getListas() {
        return listas;
    }

    public void setListas(Collection<Lista> listas) {
        this.listas = listas;
    }

    @ManyToOne
    @JoinColumn(name = "ID_ROL", referencedColumnName = "ID", nullable = false)
    public Rol getRolByIdRol() {
        return rolByIdRol;
    }

    public void setRolByIdRol(Rol rolByIdRol) {
        this.rolByIdRol = rolByIdRol;
    }
}
