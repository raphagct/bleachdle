package raph.dev.backend.model;

import lombok.Data;

@Data
public class Technique {

    private Long id;
    private String nom;
    private String gif_url;

    private Character personnage;

}