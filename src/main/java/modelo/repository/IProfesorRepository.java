package modelo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import modelo.entity.Profesor;

public interface IProfesorRepository extends JpaRepository<Profesor, Integer> {

	 // Método para buscar un profesor por su ID
    Profesor findById(int id);
    List<Profesor> findByRut(String rut);
}

