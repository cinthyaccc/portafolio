package modelo.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import modelo.entity.Alumno;
import modelo.repository.IAlumnoRepository;

@Service
public class AlumnoService {
	@Autowired
	private IAlumnoRepository alumRepo;


		public AlumnoService() {
			super();
		}
		
		
		public List<Alumno> getAlumnos(){
			return alumRepo.findAll();
		}
		
		public void crearAlumnos(Alumno al) {   
		    alumRepo.save(al);
		}
		
		 public List<Alumno> filtrarPorRutAlumno(String rut) {
		        return alumRepo.findByRut(rut); 
		    }
		 
		 
		 
		    public List<Alumno> obtenerAlumnosPorProfesor(int idProfesor) {
		        return alumRepo.findAlumnosByProfesorId(idProfesor);
		    }
		    
		    
		    public Alumno obtenerAlumnoPorId(int idAlumno) {
		        return alumRepo.findById(idAlumno);
	}
		    

}

