package raph.dev.backend.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "techniques")
public class Technique {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nom;
    private String gif_url;

    @ManyToOne
    @JoinColumn(name = "personnage_id", nullable = false)
    private Character personnage;

}