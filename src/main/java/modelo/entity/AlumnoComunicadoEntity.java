package modelo.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "alumno_comunicado")
public class AlumnoComunicadoEntity implements Serializable {

	private static final long serialVersionUID = 1L; // Agrega esta línea
    @Id
    @ManyToOne
    @JoinColumn(name = "idAlumno")
    private Alumno alumno;

    @Id
    @ManyToOne
    @JoinColumn(name = "idComunicado")
    private Comunicados comunicado;

    public AlumnoComunicadoEntity() {
    	
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
    
    // Constructor, getters y setters
}
