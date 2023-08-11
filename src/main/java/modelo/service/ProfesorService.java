package modelo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import modelo.entity.Profesor;

import modelo.repository.IProfesorRepository;

@Service
public class ProfesorService {

	@Autowired
	private IProfesorRepository proRepo;
		
		public ProfesorService() {
			super();
		}
		
	public List<Profesor> getProfesor(){
		return proRepo.findAll();
	}
	
	public void crearProfesor(Profesor pr) {
		proRepo.save(pr);
	}
}
