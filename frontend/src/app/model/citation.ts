import {Character} from './character';

export interface Citation {
  id: number;
  contenu: string;
  destinataire: string;
  personnage: Character;
}
