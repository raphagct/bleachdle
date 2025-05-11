import {Component, OnInit} from '@angular/core';
import { RouterOutlet } from '@angular/router';
import {CharacterService} from './service/character.service';
import {NgForOf} from '@angular/common';
import {Character} from './model/character';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, NgForOf],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent implements OnInit{
  characters: Character[] = [];
  selectedCharacter?: Character;

  constructor(private characterService: CharacterService) {}

  ngOnInit(): void {
    this.characterService.getAllCharacters().subscribe(data => {
      this.characters = data;
    });
    this.characterService.getCharacterById(1).subscribe(character => {
      this.selectedCharacter = character;
    });
  }



}
