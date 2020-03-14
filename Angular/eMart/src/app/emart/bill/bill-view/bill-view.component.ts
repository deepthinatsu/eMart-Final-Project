import { Component, OnInit } from '@angular/core';
import { EmartService } from '../../emart.service';
import { Item } from '../../item';
import { BillDetails } from '../../bill-details';
import { Bill } from '../../bill';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-bill-view',
  templateUrl: './bill-view.component.html',
  styleUrls: ['./bill-view.component.css']
})
export class BillViewComponent implements OnInit {
  cartItems: Item[];
  buyerName: string;
  buyerId: string = '1';
  todayDate: Date = new Date();
  amount: number = 0;
  allBills: Bill[];
  allBillDetails: BillDetails[];
  currentBuyer: any;
  DiscountAmount: number;
  Totalamount: number;

  constructor(protected emartService: EmartService,
    protected router: Router, protected activatedRoute: ActivatedRoute) { }

  ngOnInit(): void {
    this.currentBuyer = this.emartService.getCurrentBuyer(); 
    this.cartItems = this.emartService.getAllCart();
    let size = this.cartItems.length;
    for (let i = 0; i < size; i++) {
      this.amount = this.amount + this.cartItems[i].price
    }
    this.DiscountAmount = this.amount*(0.1);
    this.Totalamount = this.amount - this.DiscountAmount;
  }

  //
  addBill() {
    this.emartService.addBill(this.todayDate, this.Totalamount )
      .subscribe(
        (response) => {
          this.emartService.getBuyer()
            .subscribe(
              (response) => {
                this.currentBuyer = response;
                this.emartService.setBuyerAndBills(this.currentBuyer);
              }
            )
        }
      );
    this.router.navigate(['item-list']);
  }
}
