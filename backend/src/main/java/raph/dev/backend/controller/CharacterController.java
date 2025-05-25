package raph.dev.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import raph.dev.backend.model.Bankai;
import raph.dev.backend.model.Character;
import raph.dev.backend.service.CharacterService;
import raph.dev.backend.service.DailyGuessService;

import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping("/api")
public class CharacterController {

    @Autowired
    private CharacterService characterService;

    @Autowired
    private DailyGuessService dailyGuessService;

    @GetMapping("/all")
    public List<Character> getAllCharacters() {
        return characterService.getAllCharacters();
    }

    @GetMapping("/{id}")
    public Optional<Character> getCharacterById(@PathVariable Long id) {
        return characterService.getCharacterById(id);
    }

    @GetMapping("/daily/classic")
    public Character getRandomCharacter() {
        return dailyGuessService.getRandomCharacter();
    }

    @GetMapping("/daily/bankai")
    public Bankai getRandomBankai() {
        return dailyGuessService.getRandomBankai();
    }

    @GetMapping("/bankai")
    public List<Character> getCharactersWithBankai() {
        return characterService.getCharactersWithBankai();
    }
}
