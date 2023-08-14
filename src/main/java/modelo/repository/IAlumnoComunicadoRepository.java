package modelo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import modelo.entity.AlumnoComunicado;

@Repository
public interface IAlumnoComunicadoRepository extends JpaRepository<AlumnoComunicado, Long> {
    // Puedes definir métodos adicionales aquí si necesitas consultas personalizadas
}