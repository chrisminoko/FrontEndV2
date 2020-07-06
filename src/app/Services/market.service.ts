import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http'
import {Markets} from '../Models/Markets';
@Injectable({
  providedIn: 'root'
})
export class MarketService {

  Market :Markets[];
  constructor(private http:HttpClient) { }

  GetAllMarket(){
    return this.http.get("")
  }
}
