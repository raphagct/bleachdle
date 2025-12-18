import {Component, OnInit} from '@angular/core';
import {CharacterService} from '../../../service/character.service';
import {Character} from '../../../model/character';
import {SearchBarComponent} from '../../../shared/search-bar/search-bar.component';
import {Bankai} from '../../../model/bankai';
import {NgClass, NgForOf, NgIf} from '@angular/common';
import {RouterLink} from '@angular/router';
import {Panel} from 'primeng/panel';

@Component({
  selector: 'app-bankai-mode',
  imports: [
    SearchBarComponent,
    NgForOf,
    NgIf,
    RouterLink,
    Panel,
    NgClass
  ],
  templateUrl: './bankai-mode.component.html',
  styleUrl: './bankai-mode.component.scss'
})
export class BankaiModeComponent implements OnInit{
  characters: Character[] = [];
  bankaiToGuess!: Bankai;
  selectedCharacters: Character[] = [];
  isFind: boolean = false;
  tries: number = 0;

  constructor(private characterService: CharacterService) {}

  ngOnInit(): void {
    this.characterService.getCharactersWithBankai().subscribe(data => {
      this.characters = data;
    });
    this.characterService.getDailyBankai().subscribe(data => {
      this.bankaiToGuess = data;
    });
  }

  onCharacterSelected(character: Character) {
    this.selectedCharacters.push(character);
    this.tries++;
    if (character.id == this.bankaiToGuess.personnage.id){
      this.isFind = true;
    }
  }

  getAttributeStatus(character : Character): 'match' | 'partial' | 'miss' {
    if(character.id === this.bankaiToGuess.personnage.id){
      return 'match';
    }else{
      return 'miss';
    }
  }



}
