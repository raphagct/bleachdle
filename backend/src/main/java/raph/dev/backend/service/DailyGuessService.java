package raph.dev.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import raph.dev.backend.model.Character;
import raph.dev.backend.repository.CharacterRepository;

import java.util.List;
import java.util.Random;

@Service
public class DailyGuessService {

    @Autowired
    private CharacterRepository characterRepository;

    private final Random random = new Random();

    public Character getRandomCharacter() {
        try {
            List<Character> characters = characterRepository.findAll();
            System.out.println("Nombre de personnages récupérés : " + characters.size());

            if (characters.isEmpty()) {

                throw new RuntimeException("Aucun personnage disponible dans la base de données");
            }

            return characters.get(random.nextInt(characters.size()));
        } catch (Exception e) {
            throw new RuntimeException("Erreur lors de la récupération d'un personnage aléatoire", e);
        }
    }
}
