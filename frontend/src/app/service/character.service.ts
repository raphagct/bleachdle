import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { inject } from '@angular/core';
import { Observable } from 'rxjs';
import {Character} from '../model/character';
import {Bankai} from '../model/bankai';


@Injectable({
  providedIn: 'root'
})
export class CharacterService {
  private http = inject(HttpClient);
  private apiUrl = '/api';

  getAllCharacters(): Observable<Character[]> {
    return this.http.get<Character[]>(`${this.apiUrl}/all`);
  }

  getDailyCharacter() : Observable<Character> {
    return this.http.get<Character>(`${this.apiUrl}/daily/classic`);
  }

  getCharactersWithBankai() : Observable<Character[]> {
    return this.http.get<Character[]>(`${this.apiUrl}/bankai`);
  }

  getDailyBankai() : Observable<Bankai> {
    return this.http.get<Bankai>(`${this.apiUrl}/daily/bankai`);
  }
}
