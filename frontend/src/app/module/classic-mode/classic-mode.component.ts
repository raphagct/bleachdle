import {Component, OnInit} from '@angular/core';
import {Character} from '../../model/character';
import {CharacterService} from '../../service/character.service';
import {FormsModule} from '@angular/forms';
import {SearchBarComponent} from '../../core/components/search-bar/search-bar.component';
import {NgClass, NgForOf, NgIf} from '@angular/common';
import {RouterLink} from '@angular/router';

@Component({
  selector: 'app-classic-mode',
  imports: [
    FormsModule,
    SearchBarComponent,
    NgIf,
    NgForOf,
    NgClass,
    RouterLink
  ],
  templateUrl: './classic-mode.component.html',
  styleUrl: './classic-mode.component.scss'
})
export class ClassicModeComponent implements OnInit {
  characters: Character[] = [];
  selectedCharacters: Character[] = [];
  characterToGuess!: Character;
  isFind : boolean = false;
  attributes: string[] = ['name', 'gender', 'affiliations', 'race', 'attributes', 'hierarchy', 'introduction_arc',];
  attributesFormatted: string[] = ['', 'Nom', 'Genre', 'Affiliations', 'Race', 'Attributs', 'Hiérarchie', "Arc d'introduction"];

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








}
