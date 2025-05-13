import { Routes } from '@angular/router';
import {LandingPageComponent} from './module/landing-page/landing-page.component';
import {ClassicModeComponent} from './module/classic-mode/classic-mode.component';
import {BankaiModeComponent} from './module/bankai-mode/bankai-mode.component';

export const routes: Routes = [
  { path: '', component: LandingPageComponent },
  { path: 'classic', component: ClassicModeComponent },
  { path: 'bankai', component: BankaiModeComponent },
];
