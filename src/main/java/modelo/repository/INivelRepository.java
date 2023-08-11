package modelo.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import modelo.entity.Nivel;

public interface INivelRepository extends JpaRepository<Nivel, Integer> {
	
	
	@Query("SELECT DISTINCT n FROM Nivel n LEFT JOIN FETCH n.profesores")
	List<Nivel> findAllWithProfesores();
	// Agregar el método findById para buscar un nivel por su ID
    Optional<Nivel> findById(int id);
}
