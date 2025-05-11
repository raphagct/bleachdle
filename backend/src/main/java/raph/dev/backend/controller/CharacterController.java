package raph.dev.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import raph.dev.backend.model.Character;
import raph.dev.backend.service.CharacterService;

import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping("/api/characters")
public class CharacterController {

    @Autowired
    private CharacterService characterService;

    @GetMapping("/all")
    public List<Character> getAllCharacters() {
        return characterService.getAllCharacters();
    }

    @GetMapping("/{id}")
    public Optional<Character> getCharacterById(@PathVariable Long id) {
        return characterService.getCharacterById(id);
    }
}
