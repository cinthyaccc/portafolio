package modelo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import modelo.entity.Usuarios;

public interface IRegistroUsuarioRepository extends JpaRepository<Usuarios, Integer> {
	

}
