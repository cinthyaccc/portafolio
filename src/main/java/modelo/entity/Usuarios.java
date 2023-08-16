package modelo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

@Table(name = "usuarios")
public class Usuarios {

@Id
@Column(name = "idUsuario")
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int idUsuario;
private String usuario;
private String password;
private String email;
private String rol;

//Constructor vacío sin parámetros
public Usuarios() {

}

public Usuarios(String usuario, String password, String email, String rol) {
	super();
	this.usuario = usuario;
	this.password = password;
	this.email = email;
	this.rol = rol;
}

public String getRol() {
	return rol;
}

public void setRol(String rol) {
	this.rol = rol;
}

public int getIdUsuario() {
	return idUsuario;
}

public void setIdUsuario(int idUsuario) {
	this.idUsuario = idUsuario;
}

public String getUsuario() {
	return usuario;
}

public void setUsuario(String usuario) {
	this.usuario = usuario;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}



}
