package modelo.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import modelo.entity.Nivel;
import modelo.repository.INivelRepository;
import java.util.Optional;

@Service
public class NivelService {
	@Autowired
	private INivelRepository nivRepo;
		
	  @Autowired
	    public NivelService(INivelRepository nivRepo) {
	        this.nivRepo = nivRepo;
	    }
		
	public List<Nivel> getNivel(){
		return nivRepo.findAll();
	}
	
	public void crearNivel(Nivel ni) {
		nivRepo.save(ni);
	}
	
	@Transactional
	public List<Nivel> obtenerNivelesConProfesores() {
	    return nivRepo.findAllWithProfesores();
	}

	@Transactional
	public Nivel findById(int idNivel) {
	    Optional<Nivel> nivelOptional = nivRepo.findById(idNivel);
	    return nivelOptional.orElse(null);
	}
	 }

