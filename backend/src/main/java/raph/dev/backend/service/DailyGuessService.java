package raph.dev.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import raph.dev.backend.model.Character;
import java.util.List;
import java.util.Random;

@Service
public class DailyGuessService {

    @Autowired
    private CharacterService characterService;

    private final Random random = new Random();

    public Character getRandomCharacter() {
        List<Character> characters = characterService.getAllCharacters();
        return characters.get(random.nextInt(characters.size()));
    }
}
