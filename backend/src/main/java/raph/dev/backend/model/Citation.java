package raph.dev.backend.model;

import lombok.Data;

@Data
public class Citation {

    private Long id;

    private String contenu;
    private String destinataire;

    private Character personnage;

}