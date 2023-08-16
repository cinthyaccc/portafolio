package modelo.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import modelo.entity.Usuarios;
import modelo.repository.IRegistroUsuarioRepository;


@Service
public class RegistroUsuarioService {
	@Autowired
	private IRegistroUsuarioRepository ruRepo;
		
	  @Autowired
	    public RegistroUsuarioService(IRegistroUsuarioRepository ruRepo) {
	        this.ruRepo = ruRepo;
	    }
		
	
	
	public void crearRegistroUsuario(Usuarios us) {
		ruRepo.save(us);
	}
}
