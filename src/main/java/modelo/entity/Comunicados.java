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

@Entity
@Table(name = "comunicados")
public class Comunicados {
	 @Id
	    @Column(name = "idAlumno")
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;
	 	private String fecha;
	    private String titulo;
	    private String detalle;
	    
	    @OneToMany(mappedBy = "comunicado")
	    private List<AlumnoComunicadoEntity> alumnoComunicados = new ArrayList<>();
	    @ManyToOne
	    @JoinColumn(name = "idProfesor")
	    private Profesor profesor;
	 
	public Comunicados() {
		
	}


	public Comunicados(String fecha, String titulo, String detalle) {
		super();
		this.fecha = fecha;
		this.titulo = titulo;
		this.detalle = detalle;
	}


	public List<AlumnoComunicadoEntity> getAlumnoComunicados() {
		return alumnoComunicados;
	}


	public void setAlumnoComunicados(List<AlumnoComunicadoEntity> alumnoComunicados) {
		this.alumnoComunicados = alumnoComunicados;
	}


	public Profesor getProfesor() {
		return profesor;
	}


	public void setProfesor(Profesor profesor) {
		this.profesor = profesor;
	}


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFecha() {
		return fecha;
	}


	public void setFecha(String fecha) {
		this.fecha = fecha;
	}


	public String getDetalle() {
		return detalle;
	}


	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}
	
}
