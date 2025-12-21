import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { inject } from '@angular/core';
import { Observable } from 'rxjs';
import {Character} from '../model/character';
import {Bankai} from '../model/bankai';
import {Citation} from '../model/citation';
import {Technique} from '../model/technique';


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

  getCharactersWithQuotes() : Observable<Character[]> {
    return this.http.get<Character[]>(`${this.apiUrl}/quotes`);
  }

  getCharactersWithTechniques() : Observable<Character[]> {
    return this.http.get<Character[]>(`${this.apiUrl}/techniques`);
  }

  getDailyBankai() : Observable<Bankai> {
    return this.http.get<Bankai>(`${this.apiUrl}/daily/bankai`);
  }

  getDailyQuote() : Observable<Citation> {
    return this.http.get<Citation>(`${this.apiUrl}/daily/quote`);
  }

  getDailyTechnique() : Observable<Technique> {
    return this.http.get<Technique>(`${this.apiUrl}/daily/technique`);
  }
}
