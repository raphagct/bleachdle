package raph.dev.backend.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.PostConstruct;
import lombok.Getter;
import org.springframework.stereotype.Service;
import raph.dev.backend.model.Bankai;
import raph.dev.backend.model.Character;
import raph.dev.backend.model.Citation;
import raph.dev.backend.model.Technique;

import java.io.IOException;
import java.io.InputStream;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@Getter
public class JsonDataLoader {

    private List<Character> characters;
    private List<Bankai> bankais;
    private List<Citation> citations;
    private List<Technique> techniques;

    @PostConstruct
    public void loadData() {
        ObjectMapper mapper = new ObjectMapper();

        try {
            // Load Characters
            InputStream charStream = getClass().getResourceAsStream("/data/characters.json");
            characters = mapper.readValue(charStream, new TypeReference<List<Character>>() {
            });
            Map<Long, Character> characterMap = characters.stream()
                    .collect(Collectors.toMap(Character::getId, Function.identity()));

            // Load Bankais
            InputStream bankaiStream = getClass().getResourceAsStream("/data/bankais.json");
            bankais = mapper.readValue(bankaiStream, new TypeReference<List<Bankai>>() {
            });
            bankais.forEach(b -> {
                if (b.getPersonnage() != null && b.getPersonnage().getId() != null) {
                    b.setPersonnage(characterMap.get(b.getPersonnage().getId()));
                }
            });

            // Load Citations
            InputStream citationStream = getClass().getResourceAsStream("/data/citations.json");
            citations = mapper.readValue(citationStream, new TypeReference<List<Citation>>() {
            });
            citations.forEach(c -> {
                if (c.getPersonnage() != null && c.getPersonnage().getId() != null) {
                    c.setPersonnage(characterMap.get(c.getPersonnage().getId()));
                }
            });

            // Load Techniques
            InputStream techniqueStream = getClass().getResourceAsStream("/data/techniques.json");
            techniques = mapper.readValue(techniqueStream, new TypeReference<List<Technique>>() {
            });
            techniques.forEach(t -> {
                if (t.getPersonnage() != null && t.getPersonnage().getId() != null) {
                    t.setPersonnage(characterMap.get(t.getPersonnage().getId()));
                }
            });

            System.out.println("Data loaded successfully: " + characters.size() + " characters.");

        } catch (IOException e) {
            throw new RuntimeException("Failed to load JSON data", e);
        }
    }
}
