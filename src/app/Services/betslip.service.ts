import { Injectable } from '@angular/core';
import {Betslip} from '../Models/betslip';
import { from } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class BetslipService {
  item=[];
  total=0;
  _idCounter=1;
  _value:Betslip;
  multiplePayout:number;
  multipleStake:number;

  constructor() { }

  AddToBetSlip(bet:any,punterchoice:string,odds:number){
    console.log('In the method');
    this._value={
      Id:this._idCounter,
      TypeofEvent:'Soccer',
      Event:bet,
      punterBetSelection:punterchoice,
      selectionodds:odds,
      payout:0,
      stake:0,
      warning:false,
      realtedMessage:null
      
      
    };
    this.item.push(this._value);
    this._idCounter++;
    this.updateBetSlipID();
  }


  updateBetSlipID(){
    for(let index=0;index<this.item.length;index++){
        const element=this.item[index];
        element.id=index+1;
    }
  }

  checkifBetExist(bet:any,punterchoice:string):Boolean{
    var _flag=false;
    for(let index=0; index<this.item.length;index++){
      const element= this.item[index];
      if(element.event.id==bet.id && element.punterBetSelection==punterchoice){
        _flag=true;
        break;
      }
    }
    return _flag;
  }











  clearBetSlip(){
    this.total=0;
    this.item.splice(0,this.item.length);
  }

  removeEvent(event:any){
    	this.item.splice(this.item.lastIndexOf(event),1)
  }


  calculateBetPayout(stake:number,odds:number,id:number){
    var calculation= stake*odds;
    this.item[id-1].payout=Number(calculation);
  }

  claculateCostBasedOnPayout(payout:number,odds:number,id:number){

    var amount= payout/odds;
    this.item[id-1].stake=Math.round(Number(amount*100))/100;
  }

}
