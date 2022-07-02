import { Component, OnInit } from '@angular/core';
import { FormBuilder,Validators } from '@angular/forms';


@Component({
  selector: 'app-vacaciones',
  templateUrl: './vacaciones.component.html',
  styleUrls: ['./vacaciones.component.css']
})
export class VacacionesComponent implements OnInit {

  constructor(
    private fb: FormBuilder
  ) { }

  vacacionesForm = this.fb.group({
    dias: this.fb.group({
      fechaini: ['', Validators.required],
      fechafin: ['', Validators.required]
    }),
      fechaini: [''],
      fechafin: ['']
    })


    __onSubmit() {
      if(this.vacacionesForm.valid) {
        console.log(this.vacacionesForm.value);
      } else { 
        alert("Formulario no valido...");
      }
    }

  ngOnInit(): void {
  }

}
