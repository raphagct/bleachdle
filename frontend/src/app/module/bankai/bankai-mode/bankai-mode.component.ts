import {Component, OnInit} from '@angular/core';
import {CharacterService} from '../../../service/character.service';
import {Character} from '../../../model/character';
import {SearchBarComponent} from '../../../shared/search-bar/search-bar.component';
import {Bankai} from '../../../model/bankai';

@Component({
  selector: 'app-bankai-mode',
  imports: [
    SearchBarComponent
  ],
  templateUrl: './bankai-mode.component.html',
  styleUrl: './bankai-mode.component.scss'
})
export class BankaiModeComponent implements OnInit{
  characters: Character[] = [];
  bankaiToGuess!: Bankai;
  constructor(private characterService: CharacterService) {}

  ngOnInit(): void {
    this.characterService.getCharactersWithBankai().subscribe(data => {
      this.characters = data;
    });
    this.characterService.getDailyBankai().subscribe(data => {
      this.bankaiToGuess = data;
    });
  }



}
