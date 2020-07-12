import { Component, OnInit } from '@angular/core';
import{BetslipService} from '../Services/betslip.service';
import {Betslip} from '../Models/betslip';
import { from } from 'rxjs';

@Component({
  selector: 'app-betslip',
  templateUrl: './betslip.component.html',
  styleUrls: ['./betslip.component.css']
})
export class BetslipComponent implements OnInit {

  constructor(private _betSlipService:BetslipService) { }
  iterm=[];
  count=0;
  message='';
  finalOdds:number;
  multiplePayout:number;
  multipleStake:number;
  ngOnInit(): void {
  this.iterm=this._betSlipService.item;
    
  }

  remove(event:any){
    return this._betSlipService.removeEvent(event)
  }

  onKey(stake: number,odds:number,id:number) {
    this._betSlipService.calculateBetPayout(stake,odds,id);
}

  ngAfterViewChecked(): void {
    //Called after every check of the component's view. Applies to components only.
    //Add 'implements AfterViewChecked' to the class.
    this.iterm=this._betSlipService.item;
    this.count=this.iterm.length;
    
  }

  clearBetSlip(){
    return this._betSlipService.clearBetSlip()
  }
  Bets:Betslip[];

  calculateCostBaseOnPayout(payout:number, odd:number,id:number){
    this._betSlipService.claculateCostBasedOnPayout(payout,odd,id)
  }
  calculatePayout(stake:number,odds:number){
    return stake*odds;
  }

}
