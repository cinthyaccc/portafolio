package modelo.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import modelo.entity.Alumno;


public interface IAlumnoRepository extends JpaRepository<Alumno, Integer> {

}
