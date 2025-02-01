import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  private apiUrl = 'http://localhost:5000/api'; // Ajusta la URL según la API

  constructor(private http: HttpClient) {}

  getTasks(): Observable<any> {
    return this.http.get(`${this.apiUrl}/tasks`);
  }
}
