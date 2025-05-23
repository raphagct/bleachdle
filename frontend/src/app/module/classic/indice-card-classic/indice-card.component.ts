import {Component, Input} from '@angular/core';
import {Panel} from 'primeng/panel';
import {NgIf} from '@angular/common';

@Component({
  selector: 'app-indice-card',
  imports: [
    Panel,
    NgIf
  ],
  templateUrl: './indice-card.component.html',
  styleUrl: './indice-card.component.scss'
})
export class IndiceCardComponent {
  @Input() characterImg!: string;
  @Input() characterAge!: string;
  @Input() tries!: number;

  seuilIndicePortrait = 7;
  seuilIndiceAge = 5;
  maxBlur = 10;

  hasClickedAge = false;
  hasClickedPortrait = false;

  get blurLevel(): number {
    if (this.tries <= this.seuilIndicePortrait) {
      return this.maxBlur;
    }
    const triesAfterThreshold = this.tries - this.seuilIndicePortrait;
    const maxSteps = 10;
    const blur = this.maxBlur * Math.max(0, (maxSteps - triesAfterThreshold) / maxSteps);
    return blur;
  }

  get remainingAgeTries(): number {
    return Math.max(0, this.seuilIndiceAge - this.tries);
  }

  get remainingPortraitTries(): number {
    return Math.max(0, this.seuilIndicePortrait - this.tries);
  }

  get isAgeAvailable(): boolean {
    return this.tries >= this.seuilIndiceAge;
  }

  get isPortraitAvailable(): boolean {
    return this.tries >= this.seuilIndicePortrait;
  }

  showAge() {
    if (this.isAgeAvailable) {
      this.hasClickedAge = true;
    }
  }

  showPortrait() {
    if (this.isPortraitAvailable) {
      this.hasClickedPortrait = true;
    }
  }
}

