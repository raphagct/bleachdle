package raph.dev.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import raph.dev.backend.model.Character;
import raph.dev.backend.model.Citation;
import raph.dev.backend.repository.BankaiRepository;
import raph.dev.backend.repository.CitationRepository;
import raph.dev.backend.repository.ClassicRepository;
import raph.dev.backend.repository.TechniqueRepository;

import java.util.List;
import java.util.Optional;


@Service
public class CharacterService {

    @Autowired
    private ClassicRepository classicRepository;
    @Autowired
    private BankaiRepository bankaiRepository;

    @Autowired
    private CitationRepository citationRepository;

    @Autowired
    private TechniqueRepository techniqueRepository;

    public List<Character> getAllCharacters() {
        return classicRepository.findAll();
    }

    public Optional<Character> getCharacterById(Long id) {
        return classicRepository.findById(id);
    }

    public List<Character> getCharactersWithBankai() {
        return bankaiRepository.findCharactersWithBankai();
    }
    public List<Character> getCharactersWithQuotes() {
        return citationRepository.findCharactersWithQuotes();
    }

    public List<Character> getCharactersWithTechniques() {
        return techniqueRepository.findCharactersWithTechnique();
    }


}