import {Component, OnInit} from '@angular/core';
import {NgClass, NgForOf, NgIf} from '@angular/common';
import {Panel} from 'primeng/panel';
import {RouterLink} from '@angular/router';
import {SearchBarComponent} from '../../shared/search-bar/search-bar.component';
import {Character} from '../../model/character';
import {Citation} from '../../model/citation';
import {CharacterService} from '../../service/character.service';
import {Technique} from '../../model/technique';

@Component({
  selector: 'app-techniques-mode',
  imports: [
    NgForOf,
    NgIf,
    Panel,
    RouterLink,
    SearchBarComponent,
    NgClass
  ],
  templateUrl: './techniques-mode.component.html',
  styleUrl: './techniques-mode.component.scss'
})
export class TechniquesModeComponent implements OnInit{

  characters: Character[] = [];
  techniqueToGuess!: Technique;
  selectedCharacters: Character[] = [];
  isFind: boolean = false;
  tries: number = 0;

  constructor(private characterService: CharacterService) {}

  ngOnInit(): void {
    this.characterService.getCharactersWithTechniques().subscribe(data => {
      this.characters = data;
    });
    this.characterService.getDailyTechnique().subscribe(data => {
      this.techniqueToGuess = data;
    });
  }

  onCharacterSelected(character: Character) {
    this.selectedCharacters.push(character);
    this.tries++;
    if (character.id == this.techniqueToGuess.personnage.id){
      this.isFind = true;
    }
  }

  getAttributeStatus(character : Character): 'match' | 'partial' | 'miss' {
    if(character.id === this.techniqueToGuess.personnage.id){
      return 'match';
    }else{
      return 'miss';
    }
  }

}
