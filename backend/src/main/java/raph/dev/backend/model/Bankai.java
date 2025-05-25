package raph.dev.backend.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "bankai")
public class Bankai {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nom;
    private String type;

    @ManyToOne
    @JoinColumn(name = "personnage_id", nullable = false)
    private Character personnage;

}
