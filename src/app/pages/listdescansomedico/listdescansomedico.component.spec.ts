import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListdescansomedicoComponent } from './listdescansomedico.component';

describe('ListdescansomedicoComponent', () => {
  let component: ListdescansomedicoComponent;
  let fixture: ComponentFixture<ListdescansomedicoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ListdescansomedicoComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ListdescansomedicoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
