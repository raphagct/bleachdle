import {Component, OnInit} from '@angular/core';
import {NgClass, NgForOf, NgIf} from "@angular/common";
import {Panel} from "primeng/panel";
import {RouterLink} from "@angular/router";
import {SearchBarComponent} from "../../shared/search-bar/search-bar.component";
import {Character} from '../../model/character';
import {CharacterService} from '../../service/character.service';
import {Citation} from '../../model/citation';

@Component({
  selector: 'app-quotes-mode',
  imports: [
    NgForOf,
    NgIf,
    Panel,
    RouterLink,
    SearchBarComponent,
    NgClass
  ],
  templateUrl: './quotes-mode.component.html',
  styleUrl: './quotes-mode.component.scss'
})
export class QuotesModeComponent implements OnInit{

  characters: Character[] = [];
  quoteToGuess!: Citation;
  selectedCharacters: Character[] = [];
  isFind: boolean = false;
  tries: number = 0;

  constructor(private characterService: CharacterService) {}

  ngOnInit(): void {
    this.characterService.getCharactersWithQuotes().subscribe(data => {
      this.characters = data;
    });
    this.characterService.getDailyQuote().subscribe(data => {
      this.quoteToGuess = data;
    });
  }

  onCharacterSelected(character: Character) {
    this.selectedCharacters.push(character);
    this.tries++;
    if (character.id == this.quoteToGuess.personnage.id){
      this.isFind = true;
    }
  }

  getAttributeStatus(character : Character): 'match' | 'partial' | 'miss' {
    if(character.id === this.quoteToGuess.personnage.id){
      return 'match';
    }else{
      return 'miss';
    }
  }

}
