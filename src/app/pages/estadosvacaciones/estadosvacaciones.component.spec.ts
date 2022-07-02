import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EstadosvacacionesComponent } from './estadosvacaciones.component';

describe('EstadosvacacionesComponent', () => {
  let component: EstadosvacacionesComponent;
  let fixture: ComponentFixture<EstadosvacacionesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EstadosvacacionesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EstadosvacacionesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
