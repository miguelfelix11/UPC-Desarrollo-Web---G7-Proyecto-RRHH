import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { BoletasComponent } from "./pages/boletas/boletas.component";
import { CertificadosComponent } from "./pages/certificados/certificados.component";
import { DatospersonalesComponent } from "./pages/datospersonales/datospersonales.component";
import { DependientesComponent } from "./pages/dependientes/dependientes.component";
import { DescansomedicoComponent } from "./pages/descansomedico/descansomedico.component";
import { EstadosvacacionesComponent } from "./pages/estadosvacaciones/estadosvacaciones.component";
import { HomeComponent } from "./pages/home/home.component";
import { ListdescansomedicoComponent } from "./pages/listdescansomedico/listdescansomedico.component";
import { LoginComponent } from "./pages/login/login.component";
import { StaffComponent } from "./pages/staff/staff.component";
import { VacacionesComponent } from "./pages/vacaciones/vacaciones.component";

const routes: Routes = [
    { path: 'login',component: LoginComponent},
    { path: 'home', component: HomeComponent},
    { path: 'staff', component: StaffComponent},
    { path: 'vacaciones', component: VacacionesComponent},
    { path: 'estadosvacaciones', component: EstadosvacacionesComponent},   
    { path: 'certificados', component: CertificadosComponent}, 
    { path: 'dependientes', component: DependientesComponent}, 
    { path: 'descansomedico', component: DescansomedicoComponent}, 
    { path: 'listdescansomedico', component: ListdescansomedicoComponent}, 
    { path: 'boletas', component: BoletasComponent}, 
    { path: 'datospersonales', component: DatospersonalesComponent},    
    { path: '', redirectTo: 'home', pathMatch: 'full' }
];

@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
})

export class AppRoutingModule {}