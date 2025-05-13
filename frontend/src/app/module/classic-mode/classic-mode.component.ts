import {Component, OnInit} from '@angular/core';
import {Character} from '../../model/character';
import {CharacterService} from '../../service/character.service';
import {FormsModule} from '@angular/forms';
import {SearchBarComponent} from '../../core/components/search-bar/search-bar.component';
import {NgForOf, NgIf} from '@angular/common';

@Component({
  selector: 'app-classic-mode',
  imports: [
    FormsModule,
    SearchBarComponent,
    NgIf,
    NgForOf
  ],
  templateUrl: './classic-mode.component.html',
  styleUrl: './classic-mode.component.scss'
})
export class ClassicModeComponent implements OnInit {
  characters: Character[] = [];
  selectedCharacters: Character[] = [];


  constructor(private characterService: CharacterService) {}

  ngOnInit(): void {
    this.characterService.getAllCharacters().subscribe(data => {
      this.characters = data;
      console.log('Characters:', this.characters);
    });
  }

  onCharacterSelected(character: Character) {
    this.selectedCharacters.push(character);
  }


}
