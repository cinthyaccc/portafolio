package modelo.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import modelo.entity.Alumno;
import modelo.entity.Profesor;


public interface IAlumnoRepository extends JpaRepository<Alumno, Integer> {

	  Alumno findById(int id);
	    List<Alumno> findByRut(String rut);
	    @Query("SELECT DISTINCT a FROM Alumno a JOIN FETCH a.idNivel n LEFT JOIN FETCH n.profesores p WHERE p.id = :idProfesor")
	    List<Alumno> findAlumnosByProfesorId(@Param("idProfesor") int idProfesor);
	}



