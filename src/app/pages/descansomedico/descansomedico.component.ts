import { Component, OnInit } from '@angular/core';
import { FormBuilder,Validators } from '@angular/forms';

@Component({
  selector: 'app-descansomedico',
  templateUrl: './descansomedico.component.html',
  styleUrls: ['./descansomedico.component.css']
})
export class DescansomedicoComponent implements OnInit {

  constructor(
    private fb: FormBuilder
  ) { }

  descansomedicoForm = this.fb.group({
    dias: this.fb.group({
      fechaini: ['', Validators.required],
      fechafin: ['', Validators.required]
    }),
      fechaini: [''],
      fechafin: ['']
    })  

  __onSubmit() {
    if(this.descansomedicoForm.valid) {
      console.log(this.descansomedicoForm.value);
    } else { 
      alert("Formulario no valido...");
    }
  }
  
  ngOnInit(): void {
  }
  


}


