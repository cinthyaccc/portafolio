package modelo.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "alumnocomunicado")
public class AlumnoComunicado implements Serializable {

	private static final long serialVersionUID = 1L; // Agrega esta línea
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Indica que la clave es autoincremental
    private int IdAlumnoComunicado;
    
    @ManyToOne
    @JoinColumn(name = "idAlumno")
    private Alumno alumno;

  
    @ManyToOne
    @JoinColumn(name = "idComunicado")
    private Comunicados comunicado;

    public AlumnoComunicado() {
    	
    }

	public Alumno getAlumno() {
		return alumno;
	}

	public void setAlumno(Alumno alumno) {
		this.alumno = alumno;
	}

	public Comunicados getComunicado() {
		return comunicado;
	}

	public void setComunicado(Comunicados comunicado) {
		this.comunicado = comunicado;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getIdAlumnoComunicado() {
		return IdAlumnoComunicado;
	}

	public void setIdAlumnoComunicado(int idAlumnoComunicado) {
		IdAlumnoComunicado = idAlumnoComunicado;
	}
    
    
}
