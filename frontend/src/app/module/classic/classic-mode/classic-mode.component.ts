import {Component, OnInit} from '@angular/core';
import {Character} from '../../../model/character';
import {CharacterService} from '../../../service/character.service';
import {FormsModule} from '@angular/forms';
import {SearchBarComponent} from '../../../shared/search-bar/search-bar.component';
import {NgClass, NgForOf, NgIf} from '@angular/common';
import {RouterLink} from '@angular/router';
import {IndiceCardComponent} from '../indice-card-classic/indice-card.component';

@Component({
  selector: 'app-classic-mode',
  imports: [
    FormsModule,
    SearchBarComponent,
    NgIf,
    NgForOf,
    NgClass,
    RouterLink,
    IndiceCardComponent
  ],
  templateUrl: './classic-mode.component.html',
  styleUrl: './classic-mode.component.scss'
})
export class ClassicModeComponent implements OnInit {
  characters: Character[] = [];
  selectedCharacters: Character[] = [];
  characterToGuess!: Character;
  isFind : boolean = false;
  tries : number = 0;
  attributes: string[] = ['name', 'gender', 'affiliations', 'race', 'attributes', 'hierarchy', 'introduction_arc',];
  attributesFormatted: string[] = ['', 'Nom', 'Genre', 'Affiliations', 'Race', 'Attributs', 'Hiérarchie', "Arc d'introduction"];
  arcs = [
    { nom: "Prélude", ordre: 1 },
    { nom: "Arc de la Soul Society", ordre: 2 },
    { nom: "Arc de l’Invasion des Arrancars", ordre: 3 },
    { nom: "Arc de l'Assaut du Hueco Mundo", ordre: 4 },
    { nom: "Arc des Fullbringers", ordre: 5 },
    { nom: "Arc de la Guerre sanglante Millénaire", ordre: 6 },
  ];

  constructor(private characterService: CharacterService) {}

  ngOnInit(): void {
    this.characterService.getAllCharacters().subscribe(data => {
      this.characters = data;
    });
    this.characterService.getDailyCharacter().subscribe(data => {
      this.characterToGuess = data;
      });
  }

  onCharacterSelected(character: Character) {
    this.selectedCharacters.push(character);
    this.tries++;
    if (character.id == this.characterToGuess.id){
      this.isFind = true;
    }
  }

  getAttributeStatus(characterAttr: string, targetAttr: string ): 'match' | 'partial' | 'miss' {
    if(characterAttr === targetAttr){
      return 'match';
    } else if(characterAttr.includes(targetAttr)){
      return 'partial';
    }else{
      return 'miss';
    }
  }

  getArcIndication(chosen_arc: string, target_arc: string){
    if(chosen_arc != target_arc){
      const arc  = this.arcs.find(a => a.nom === chosen_arc);
      const arcToGuess  = this.arcs.find(a => a.nom === target_arc);
      if (arc && arcToGuess) {
        if (arc.ordre < arcToGuess.ordre){
          return '↑';
        }else if(arc.ordre > arcToGuess.ordre){
          return '↓';
        }
      }
    }
    return '';
  }










}
