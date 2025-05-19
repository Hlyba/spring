import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet } from '@angular/router';
import { Employee } from './employee';
import { EmployeeService } from './employee.service'; 
import { HttpErrorResponse } from '@angular/common/http';
import { OnInit } from '@angular/core';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  standalone: true,
  imports: [CommonModule]
})
export class AppComponent implements OnInit {
onOpenModal(arg0: null,arg1: string) {
throw new Error('Method not implemented.');
}
searchEmployees(arg0: any) {
throw new Error('Method not implemented.');
}
  title(title: any) {
    throw new Error('Method not implemented.');
  }
  public employees: Employee[] | undefined;
  constructor(private employeeService: EmployeeService) { }

  ngOnInit(): void {
    this.getEmployees();
  }

  public getEmployees(): void {
    this.employeeService.getEmployees().subscribe(
      (response: Employee[]) => {
        this.employees = response;
      },
      (error: HttpErrorResponse) => {
        alert(error.message);}
    );
  }
}
