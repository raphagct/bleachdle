package raph.dev.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import raph.dev.backend.model.Character;

import java.util.List;
import java.util.Optional;

@Repository
public interface CharacterRepository extends JpaRepository<Character,Long> {

    @Override
    Optional<Character> findById(Long id);

    @Override
    List<Character> findAll();
}
