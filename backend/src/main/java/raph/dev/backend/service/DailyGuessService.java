package raph.dev.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import raph.dev.backend.model.Bankai;
import raph.dev.backend.model.Character;
import raph.dev.backend.repository.BankaiRepository;
import raph.dev.backend.repository.CharacterRepository;

import java.util.List;
import java.util.Random;

@Service
public class DailyGuessService {

    @Autowired
    private CharacterRepository characterRepository;

    @Autowired
    private BankaiRepository bankaiRepository;


    private final Random random = new Random();

    public Character getRandomCharacter() {
        List<Character> characters = characterRepository.findAll();

        return characters.get(random.nextInt(characters.size()));
    }

    public Bankai getRandomBankai() {
        List<Bankai> bankaiList = bankaiRepository.findAll();
        return bankaiList.get(random.nextInt(bankaiList.size()));
    }
}
