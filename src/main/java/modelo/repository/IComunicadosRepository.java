package modelo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import modelo.entity.Comunicados;

public interface IComunicadosRepository extends JpaRepository<Comunicados, Integer> {
	List<Comunicados> findByProfesorIdProfesor(int idProfesor);
}