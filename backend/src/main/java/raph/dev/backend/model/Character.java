package raph.dev.backend.model;

import lombok.Data;

@Data
public class Character {

    private Long id;

    private String name;
    private String gender;
    private String age;
    private String race;
    private String affiliation;
    private String evolutive_forms;
    private String rank;
    private String introduction_arc;
    private String image;
    private String indice_vitale;
}