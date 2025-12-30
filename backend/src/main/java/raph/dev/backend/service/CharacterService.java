package raph.dev.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import raph.dev.backend.model.Bankai;
import raph.dev.backend.model.Character;
import raph.dev.backend.model.Citation;
import raph.dev.backend.model.Technique;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CharacterService {

    @Autowired
    private JsonDataLoader dataLoader;

    public List<Character> getAllCharacters() {
        return dataLoader.getCharacters();
    }

    public Optional<Character> getCharacterById(Long id) {
        return dataLoader.getCharacters().stream()
                .filter(c -> c.getId().equals(id))
                .findFirst();
    }

    public List<Character> getCharactersWithBankai() {
        return dataLoader.getBankais().stream()
                .map(Bankai::getPersonnage)
                .distinct()
                .collect(Collectors.toList());
    }

    public List<Character> getCharactersWithQuotes() {
        return dataLoader.getCitations().stream()
                .map(Citation::getPersonnage)
                .distinct()
                .collect(Collectors.toList());
    }

    public List<Character> getCharactersWithTechniques() {
        return dataLoader.getTechniques().stream()
                .map(Technique::getPersonnage)
                .distinct()
                .collect(Collectors.toList());
    }
}
