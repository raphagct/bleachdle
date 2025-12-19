package raph.dev.backend.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import raph.dev.backend.model.Bankai;
import raph.dev.backend.model.Character;

import java.util.List;
import java.util.Optional;

public interface BankaiRepository extends JpaRepository<Bankai,Long> {

    @Override
    Optional<Bankai> findById(Long id);
    @Override
    List<Bankai> findAll();


}