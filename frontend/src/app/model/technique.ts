import {Character} from './character';

export interface Technique {
  id: number;
  nom: string;
  gif_url: string;
  personnage: Character;
}
