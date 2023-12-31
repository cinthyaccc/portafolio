package modelo.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity

@Table (name = "profesor")
@JsonIgnoreProperties
public class Profesor {
@Id
@Column(name = "idProfesor")
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int idProfesor;
private String nombre;
private String apellido;
private String rut;
private String direccion;
private String telefono;
private String gradoAcademico;
private String fechaNacimiento;

@ManyToOne
@JoinColumn(name = "idNivel")
private Nivel nivel;


@OneToMany(mappedBy = "profesor")
private List<Comunicados> comunicados = new ArrayList<>();

//Constructor Vacio
public Profesor() {
   }

public Profesor(String nombre, String apellido, String rut, String fechaNacimiento, String direccion, String telefono, String gradoAcademico, Nivel nivel) {
	super();
	this.nombre = nombre;
	this.apellido = apellido;
	this.rut = rut;
	this.fechaNacimiento = fechaNacimiento;
	this.direccion = direccion;
	this.telefono = telefono;
	this.gradoAcademico = gradoAcademico;
	this.nivel = nivel;
}
// Getters y setters para el atributo "idNivel"

public String getFechaNacimiento() {
	return fechaNacimiento;
}

public String getGradoAcademico() {
	return gradoAcademico;
}

public void setGradoAcademico(String gradoAcademico) {
	this.gradoAcademico = gradoAcademico;
}

public void setFechaNacimiento(String fechaNacimiento) {
	this.fechaNacimiento = fechaNacimiento;
}

public Nivel getNivel() {
	return nivel;
}

public void setNivel(Nivel nivel) {
	this.nivel = nivel;
}

public void setIidNivel(Nivel idNivel) {
    this.nivel = idNivel;
}

public int getIdProfesor() {
	return idProfesor;
}

public void setIdProfesor(int idProfesor) {
	this.idProfesor = idProfesor;
}

public String getNombre() {
	return nombre;
}

public void setNombre(String nombre) {
	this.nombre = nombre;
}

public String getApellido() {
	return apellido;
}

public void setApellido(String apellido) {
	this.apellido = apellido;
}

public String getRut() {
	return rut;
}

public void setRut(String rut) {
	this.rut = rut;
}

public String getDireccion() {
	return direccion;
}

public void setDireccion(String direccion) {
	this.direccion = direccion;
}

public String getTelefono() {
	return telefono;
}

public void setTelefono(String telefono) {
	this.telefono = telefono;
}
public String getSeccion() {
    return nivel != null ? nivel.getSeccion() : null;
}



}
