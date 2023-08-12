package modelo.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@JsonIgnoreProperties({"nivel.profesores"})
@Table(name = "alumno")
public class Alumno {
    @Id
    @Column(name = "idAlumno")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idAlumno;
    private String nombre;
    private String apellido;
    private String rut;
    private String fechaNacimiento;
    private String direccion;
    private String nombrePadre;
    private String nombreMadre;
    private int telefono;
    private String email;

    // Cambia el tipo del atributo a Nivel y especifica el nombre de la columna
    @OneToOne
    @JoinColumn(name = "idNivel")
    private Nivel idNivel;

    @OneToMany(mappedBy = "alumno")
    private List<AlumnoComunicadoEntity> alumnoComunicados = new ArrayList<>();

   
    //Contructor Vacio
    public Alumno() {
       
    }
    
    // Constructor con el atributo "idNivel" del tipo Nivel
    public Alumno(String nombre, String apellido, String rut, String fechaNacimiento, String direccion,
                  String nombrePadre, String nombreMadre, int telefono, Nivel idNivel, String email) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.rut = rut;
        this.fechaNacimiento = fechaNacimiento;
        this.direccion = direccion;
        this.nombrePadre = nombrePadre;
        this.nombreMadre = nombreMadre;
        this.telefono = telefono;
        this.email = email;
        this.idNivel = idNivel;
    }

    // Getters y setters para el atributo "idNivel"
    public Nivel getIdNivel() {
        return idNivel;
    }

    public void setIdNivel(Nivel idNivel) {
        this.idNivel = idNivel;
    }


    public int getIdAlumno() {
		return idAlumno;
	}

	public void setIdAlumno(int idAlumno) {
		this.idAlumno = idAlumno;
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

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getNombrePadre() {
		return nombrePadre;
	}

	public void setNombrePadre(String nombrePadre) {
		this.nombrePadre = nombrePadre;
	}

	public String getNombreMadre() {
		return nombreMadre;
	}

	public void setNombreMadre(String nombreMadre) {
		this.nombreMadre = nombreMadre;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSeccion() {
        return idNivel != null ? idNivel.getSeccion() : null;
	}
}
