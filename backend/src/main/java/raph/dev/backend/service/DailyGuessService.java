package raph.dev.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import raph.dev.backend.model.Bankai;
import raph.dev.backend.model.Character;
import raph.dev.backend.model.Citation;
import raph.dev.backend.model.Technique;
import raph.dev.backend.repository.BankaiRepository;
import raph.dev.backend.repository.ClassicRepository;
import raph.dev.backend.repository.CitationRepository;
import raph.dev.backend.repository.TechniqueRepository;

import java.util.List;
import java.util.Random;

@Service
public class DailyGuessService {

    @Autowired
    private ClassicRepository classicRepository;

    @Autowired
    private BankaiRepository bankaiRepository;

    @Autowired
    private CitationRepository citationRepository;

    @Autowired
    private TechniqueRepository techniqueRepository;


    private final Random random = new Random();

    public Character getRandomCharacter() {
        List<Character> characters = classicRepository.findAll();

        return characters.get(random.nextInt(characters.size()));
    }

    public Bankai getRandomBankai() {
        List<Bankai> bankaiList = bankaiRepository.findAll();
        return bankaiList.get(random.nextInt(bankaiList.size()));
    }

    public Citation getRandomCitation() {
        List<Citation> citationsList = citationRepository.findAll();
        return citationsList.get(random.nextInt(citationsList.size()));
    }

    public Technique getRandomTechniques() {
        List<Technique> techniquesList = techniqueRepository.findAll();
        return techniquesList.get(random.nextInt(techniquesList.size()));
    }
}