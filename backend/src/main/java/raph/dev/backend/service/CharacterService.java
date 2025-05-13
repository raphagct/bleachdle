package raph.dev.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import raph.dev.backend.model.Character;
import raph.dev.backend.repository.CharacterRepository;

import java.util.List;
import java.util.Optional;


@Service
public class CharacterService {

    @Autowired
    private CharacterRepository characterRepository;

    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }

    public Optional<Character> getCharacterById(Long id) {
        return characterRepository.findById(id);
    }
}
