package modelo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import modelo.entity.Alumno;
import modelo.entity.AlumnoComunicado;
import modelo.entity.Comunicados;
import modelo.repository.IAlumnoComunicadoRepository;
@Service
public class AlumnoComunicadoService {
	@Autowired
	 private final IAlumnoComunicadoRepository acRepo;
		
	  
	    public AlumnoComunicadoService(IAlumnoComunicadoRepository acRepo) {
	        this.acRepo = acRepo;
	    }

	    public void guardarEnTablaIntermedia(Alumno alumno, Comunicados comunicado) {
	        AlumnoComunicado alumnoComunicado = new AlumnoComunicado();
	        alumnoComunicado.setAlumno(alumno);
	        alumnoComunicado.setComunicado(comunicado);
		    
	        acRepo.save(alumnoComunicado);  // Guardar en el repositorio
	    }
	}

