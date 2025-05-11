import {Component, OnInit} from '@angular/core';
import {NgForOf} from "@angular/common";
import {Character} from '../../model/character';
import {CharacterService} from '../../service/character.service';

@Component({
  selector: 'app-classic-mode',
    imports: [
        NgForOf
    ],
  templateUrl: './classic-mode.component.html',
  styleUrl: './classic-mode.component.scss'
})
export class ClassicModeComponent implements OnInit {
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
