package raph.dev.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import raph.dev.backend.model.Character;
import raph.dev.backend.model.Citation;
import raph.dev.backend.model.Technique;

import java.util.List;
import java.util.Optional;

@Repository
public interface TechniqueRepository extends JpaRepository<Technique, Long> {

    @Override
    Optional<Technique> findById(Long id);

    @Override
    List<Technique> findAll();

    @Query("SELECT DISTINCT t.personnage FROM Technique t")
    List<Character> findCharactersWithTechnique();
}