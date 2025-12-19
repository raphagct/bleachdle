package raph.dev.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import raph.dev.backend.model.Citation;

@Repository
public interface CitationRepository extends JpaRepository<Citation, Long> {
}