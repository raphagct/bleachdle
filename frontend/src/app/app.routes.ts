import { Routes } from '@angular/router';
import {LandingPageComponent} from './module/landing-page/landing-page.component';
import {ClassicModeComponent} from './module/classic/classic-mode/classic-mode.component';
import {BankaiModeComponent} from './module/bankai/bankai-mode/bankai-mode.component';
import {QuotesModeComponent} from './module/quotes-mode/quotes-mode.component';
import {TechniquesModeComponent} from './module/techniques-mode/techniques-mode.component';

export const routes: Routes = [
  { path: '', component: LandingPageComponent },
  { path: 'classic', component: ClassicModeComponent },
  { path: 'bankai', component: BankaiModeComponent },
  {path: 'quotes', component: QuotesModeComponent},
  {path: 'techniques', component: TechniquesModeComponent}
];
