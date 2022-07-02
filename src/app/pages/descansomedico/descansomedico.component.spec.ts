import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DescansomedicoComponent } from './descansomedico.component';

describe('DescansomedicoComponent', () => {
  let component: DescansomedicoComponent;
  let fixture: ComponentFixture<DescansomedicoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DescansomedicoComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(DescansomedicoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
