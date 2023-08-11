package modelo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import modelo.entity.Comunicados;

public interface IComunicadosRepository extends JpaRepository<Comunicados, Integer> {

}