package modelo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import modelo.entity.Alumno;
import modelo.entity.AlumnoComunicado;
import modelo.entity.Comunicados;
import modelo.entity.Profesor;
import modelo.repository.IAlumnoRepository;
import modelo.repository.IComunicadosRepository;
import modelo.repository.IProfesorRepository;

@Service
public class ComunicadoService {
	@Autowired
	private IComunicadosRepository coRepo;
	@Autowired
	private IProfesorRepository prRepo;
	@Autowired
	private IAlumnoRepository alRepo;

		public ComunicadoService() {
			super();
		}
		
		public List<Comunicados> getComunicados(){
			return coRepo.findAll();
		}
		
		public void crearComunicados(Comunicados co) {   
		    coRepo.save(co);
		}
		
		public Profesor getProfesorPorId(int profesorId) {
		    return prRepo.findById(profesorId);
		}

		 public Alumno getAlumnoPorId(int idAlumno) {
		        return alRepo.findById(idAlumno);
		               
		    }
		
		
		 public void guardarComunicado(Comunicados comunicado) {
		        coRepo.save(comunicado);
		    }
	
		 public List<Comunicados> getComunicadosPorIdProfesor(int idProfesor) {
		        return coRepo.findByProfesorIdProfesor(idProfesor);
		    }
}




