import { Injectable } from '@angular/core';
import { Category } from './category';
import { SubCategory } from './sub-category';
import { Item } from './item';
import { Bill } from './bill';
import { Seller } from './seller';
import { HttpClient, HttpHeaders } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class EmartService {

  categories : Category[];
  subCategories : SubCategory[];
  allItems : Item[];
  cartItems : any[];
  allBills : any;
  allSellers : Seller[];
  currentBuyer : any;
  allBuyers : any;

  constructor(protected http : HttpClient) {
    this.cartItems = [];
    this.allBills = [];

  }
  //httpUrl='http://localhost:8001/user/';
  //Accessing end point for retrieving all items.
  getAllItems() {
    return this.http.get("http://localhost:8022/ItemService/emart/item/all");
  }

  getCategories(): Category[] {
    return [].concat(this.categories);
  }

  getSubCategories(): SubCategory[] {
    return [].concat(this.subCategories);
  }
  setAllBills(billsList: any){
    this.allBills = billsList;
  }
  getAllBills() : Bill[] {
    return this.allBills;
  }
  //Accessing end point for retrieving an item.
  getItem(id : string): any {

    return this.http.get("http://localhost:8022/ItemService/emart/item/" + id);

  }

  addToCart(itemObj: any) {
 
    this.cartItems.push(itemObj);
  }

  getAllCart() {
    return [].concat(this.cartItems);
  }

  setAllCart(cartItems: any) {
    this.cartItems = cartItems;
  }

  deleteCartItem(itemNo : number) {
    let size = this.cartItems.length;
    for (let i = 0; i < size; i++) {
      if (this.cartItems[i].id == itemNo) {
        this.cartItems.splice(i, 1);
        break;
      }
    }
    return [].concat(this.cartItems);
  }

  //Accessing end point for adding the bill. 
  addBill(todayDate: Date, total: number) {

    let allBillDetails : any[] = [];
    for (let i = 0; i < this.cartItems.length; i++) {
      allBillDetails.push(
        {
          billDetailsId: 0,
          bill: null,
          item: this.cartItems[i]

        }
      );
    }


    let bill: any = {
      id: 0,
      type: 'credit',
      date: todayDate,
      remarks: '',
      amount: total,
      buyer: {
        id: this.currentBuyer.id
      },
      allBillDetails: allBillDetails
    }
    //this.allBills.push(bill);

    
    this.cartItems = [];
    allBillDetails = [];
    return this.http.post("http://localhost:8022/ItemService/emart/bill", bill);
  }
  setBuyerAndBills(currentBuyer: any) {
    this.currentBuyer = currentBuyer;
    this.allBills = currentBuyer.allBills;
  }

  //Accessing end point for buyer and retrieving its observable.
  getBuyer() {
    return this.http.get("http://localhost:8022/LoginService/emart/buyer/" + this.currentBuyer.id);
  }

  getCurrentBuyer() {
    return this.currentBuyer;
  }
  //Accessing end point for validating the buyer credintionals.
  validateBuyer(username: string, password: string) {
    let credentials = username + ":" + password;
    let headers = new HttpHeaders();
    headers = headers.set("Authorization", credentials);
    return this.http.get("http://localhost:8022/LoginService/emart/validate", { headers });


  }

  validateSeller(username: string, password: string) {
    let credentials = username + ":" + password;
    let headers = new HttpHeaders();
    headers = headers.set("Authorization", credentials);
    return this.http.get("http://localhost:8022/LoginService/emart/svalidate", {headers});
  }

  getAllBuyers() {
    return this.http.get("http://localhost:8022/BuyerService/emart/allBuyers");
  }
  addBuyer(buyer: any){
    return this.http.post("http://localhost:8022/BuyerService/emart/addBuyers", buyer);
    // return this.http.post<Buyer>(this.httpUrl , buyer);
  }
  // deleteBuyer(id: number): Observable<Buyer> {
  //   return this.http.delete<Buyer>(this.httpUrl + '/' + id);
  // }
  // updateBuyer(buyer: Buyer):Observable<Buyer>{
  //   return this.http.put<Buyer>(this.httpUrl,buyer);
  //   }
  //   getBuyerById(id: number):Observable<Buyer>{
  //     return this.http.get<Buyer>(this.httpUrl+id);
  //   }
    // getUserByCode(code:number):Observable<User>{
    //   return this.httpClient.get<User>(this.httpUrl+"activate/"+code);
    // }
    existBuyer() {
    return sessionStorage.getItem('item');
    }

    // addSeller(seller: any) {
    //   return this.http.post("http://localhost:8022/LoginService/emart/addSeller", seller);
    // }
}
