package raph.dev.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import raph.dev.backend.model.Character;
import raph.dev.backend.model.Citation;

import java.util.List;
import java.util.Optional;

@Repository
public interface CitationRepository extends JpaRepository<Citation, Long> {

    @Override
    Optional<Citation> findById(Long id);

    @Override
    List<Citation> findAll();

    @Query("SELECT DISTINCT c.personnage FROM Citation c")
    List<Character> findCharactersWithQuotes();

}