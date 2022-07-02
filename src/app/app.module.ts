import { NgModule } from '@angular/core';
import { ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';

import { AppComponent } from './app.component';
import { HomeComponent } from './pages/home/home.component';
import { LoginComponent } from './pages/login/login.component';
import { StaffComponent } from './pages/staff/staff.component';
import { VacacionesComponent } from './pages/vacaciones/vacaciones.component';
import { EstadosvacacionesComponent } from './pages/estadosvacaciones/estadosvacaciones.component';
import { CertificadosComponent } from './pages/certificados/certificados.component';
import { DependientesComponent } from './pages/dependientes/dependientes.component';
import { DescansomedicoComponent } from './pages/descansomedico/descansomedico.component';
import { ListdescansomedicoComponent } from './pages/listdescansomedico/listdescansomedico.component';
import { BoletasComponent } from './pages/boletas/boletas.component';
import { DatospersonalesComponent } from './pages/datospersonales/datospersonales.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    LoginComponent,
    StaffComponent,
    VacacionesComponent,
    EstadosvacacionesComponent,
    CertificadosComponent,
    DependientesComponent,
    DescansomedicoComponent,
    ListdescansomedicoComponent,
    BoletasComponent,
    DatospersonalesComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
