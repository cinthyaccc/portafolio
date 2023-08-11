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
	}


