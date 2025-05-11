package raph.dev.backend.model;

import jakarta.persistence.*;
import lombok.Data;

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
    private String affiliation;
    private String evolutive_forms;
    private String rank;
    private String introduction_arc;

}
