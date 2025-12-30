package raph.dev.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import raph.dev.backend.model.Bankai;
import raph.dev.backend.model.Character;
import raph.dev.backend.model.Citation;
import raph.dev.backend.model.Technique;

import java.util.List;
import java.util.Random;

@Service
public class DailyGuessService {

    @Autowired
    private JsonDataLoader dataLoader;

    private final Random random = new Random();

    public Character getRandomCharacter() {
        List<Character> characters = dataLoader.getCharacters();
        return characters.get(random.nextInt(characters.size()));
    }

    public Bankai getRandomBankai() {
        List<Bankai> bankaiList = dataLoader.getBankais();
        return bankaiList.get(random.nextInt(bankaiList.size()));
    }

    public Citation getRandomCitation() {
        List<Citation> citationsList = dataLoader.getCitations();
        return citationsList.get(random.nextInt(citationsList.size()));
    }

    public Technique getRandomTechniques() {
        List<Technique> techniquesList = dataLoader.getTechniques();
        return techniquesList.get(random.nextInt(techniquesList.size()));
    }
}
