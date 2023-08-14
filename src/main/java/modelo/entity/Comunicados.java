package modelo.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import javax.persistence.Table;
@Entity
@Table(name = "comunicados")
public class Comunicados {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idComunicado")
    private int idComunicado;

    private String fecha;
    private String titulo;
    private String detalle;

    @ManyToOne
    @JoinColumn(name = "idProfesor")
    private Profesor profesor;
    
    
    @ManyToMany
    @JoinTable(
        name = "alumnocomunicado",
        joinColumns = @JoinColumn(name = "idComunicado"),
        inverseJoinColumns = @JoinColumn(name = "idAlumno")
    )
    private List<Alumno> alumnos = new ArrayList<>();

    // Constructor, getters, setters, etc.

    public Comunicados() {
        
    }

    public Comunicados(String fecha, String titulo, String detalle) {
        this.fecha = fecha;
        this.titulo = titulo;
        this.detalle = detalle;
    }

    public int getIdComunicado() {
        return idComunicado;
    }

    public void setIdComunicado(int idComunicado) {
        this.idComunicado = idComunicado;
    }

    public List<Alumno> getAlumnos() {
        return alumnos;
    }

    public void setAlumnos(List<Alumno> alumnos) {
        this.alumnos = alumnos;
    }

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}

	public Profesor getProfesor() {
		return profesor;
	}

	public void setProfesor(Profesor profesor) {
		this.profesor = profesor;
	}

    
}
