package raph.dev.backend.model;

import jakarta.persistence.*;
import lombok.Data;
@Data
@Entity
@Table(name = "citations")
public class Citations {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String citation;
    private String destinataire;
    private String arc;

    @ManyToOne
    @JoinColumn(name = "personnage_id", nullable = false)
    private Character personnage;

}