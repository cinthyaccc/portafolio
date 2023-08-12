package modelo.entity;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity

@Table(name = "nivel")
public class Nivel {
@Id
@Column(name = "idNivel")
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int idNivel;
private String nombreNivel;
private String seccion;

@OneToMany(mappedBy = "nivel", cascade = CascadeType.ALL)
private List<Profesor> profesores;

//Constructor vacío sin parámetros
public Nivel() {
    // Deja este constructor vacío, no es necesario agregar código aquí
}
public Nivel(String nombreNivel, String seccion) {
	super();
	
	this.nombreNivel = nombreNivel;
	this.seccion = seccion;
}

public List<Profesor> getProfesores() {
	return profesores;
}
public void setProfesores(List<Profesor> profesores) {
	this.profesores = profesores;
}
public int getIdNivel() {
	return idNivel;
}
public void setIdNivel(int idNivel) {
	this.idNivel = idNivel;
}
public String getNombreNivel() {
	return nombreNivel;
}
public void setNombreNivel(String nombreNivel) {
	this.nombreNivel = nombreNivel;
}
public String getSeccion() {
	return seccion;
}
public void setSeccion(String seccion) {
	this.seccion = seccion;
}



@Override
public String toString() {
    return  nombreNivel;
}
}



