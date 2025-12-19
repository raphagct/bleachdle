package raph.dev.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import raph.dev.backend.model.Technique;

@Repository
public interface TechniqueRepository extends JpaRepository<Technique, Long> {
}