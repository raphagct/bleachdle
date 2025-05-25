package raph.dev.backend.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

@Data
@Entity
@Table(name = "personnages")
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String gender;
    private String age;
    private String race;
    private String affiliations;
    private String attributes;
    private String hierarchy;
    private String introduction_arc;
    private String image;

}
