import {Component, EventEmitter, Input, Output} from '@angular/core';
import {Character} from '../../../model/character';
import {AutoComplete, AutoCompleteSelectEvent} from 'primeng/autocomplete';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';

@Component({
  selector: 'app-search-bar',
  standalone: true,
  imports: [
    AutoComplete,
    ReactiveFormsModule,
    FormsModule
  ],
  templateUrl: './search-bar.component.html',
  styleUrl: './search-bar.component.scss'
})
export class SearchBarComponent  {
  @Input() concernedCharacters!: Character[];
  @Output() chosenCharacter = new EventEmitter<Character>();
  filteredCharacters: Character[] = [];
  value: any;

  filterCharacters(event: any) {
    const query = event.query.toLowerCase();
    this.filteredCharacters = this.concernedCharacters.filter(character =>
      character.name.toLowerCase().includes(query)
    );
  }

  characterSelected(event: AutoCompleteSelectEvent) {
    this.chosenCharacter.emit(event.value as Character);
    this.value = '';
  }
}
