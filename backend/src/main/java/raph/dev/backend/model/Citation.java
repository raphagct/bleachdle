package raph.dev.backend.model;

import jakarta.persistence.*;
import lombok.Data;
@Data
@Entity
@Table(name = "citations")
public class Citation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String contenu;
    private String destinataire;

    @ManyToOne
    @JoinColumn(name = "personnage_id", nullable = false)
    private Character personnage;

}