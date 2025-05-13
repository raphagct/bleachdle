import {Component, EventEmitter, Input, Output} from '@angular/core';
import {Character} from '../../../model/character';
import {AutoComplete, AutoCompleteSelectEvent} from 'primeng/autocomplete';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import {FloatLabel} from 'primeng/floatlabel';

@Component({
  selector: 'app-search-bar',
  standalone: true,
  imports: [
    AutoComplete,
    ReactiveFormsModule,
    FormsModule,
    FloatLabel
  ],
  templateUrl: './search-bar.component.html',
  styleUrl: './search-bar.component.scss'
})
export class SearchBarComponent  {
  @Input() concernedCharacters!: Character[];
  @Output() chosenCharacter = new EventEmitter<Character>();
  filteredCharacters: Character[] = [];
  value: any;
  selectedCharacters: Character[] = [];

  filterCharacters(event: any) {
    const query = event.query.toLowerCase();
    this.filteredCharacters = this.concernedCharacters
      .filter(character =>
      character.name.toLowerCase().includes(query)
      )
      .filter(character =>
        !this.selectedCharacters.includes(character)
      );
  }

  characterSelected(event: AutoCompleteSelectEvent) {
    const selected = event.value as Character;
    this.chosenCharacter.emit(selected);
    this.selectedCharacters.push(selected);
    this.value = '';
  }
}
