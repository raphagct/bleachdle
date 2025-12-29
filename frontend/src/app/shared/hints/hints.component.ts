import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CardModule } from 'primeng/card';

@Component({
    selector: 'app-hints',
    standalone: true,
    imports: [CommonModule, CardModule],
    templateUrl: './hints.component.html',
    styleUrl: './hints.component.scss'
})
export class HintsComponent {
    @Input() tries: number = 0;

    @Input() hint1Title: string = '';
    @Input() hint1UnlockTries: number = 0;
    @Input() hint1Value: string | undefined = '';
    @Input() hint1Type: 'text' | 'image' = 'text';

    @Input() hint2Title: string = '';
    @Input() hint2UnlockTries: number = 0;
    @Input() hint2Value: string | undefined = '';
    @Input() hint2Type: 'text' | 'image' = 'text';
    @Input() hint2Blur: boolean = false;
}
