import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { EmartService } from '../emart/emart.service';
import { Buyer } from '../emart/buyer';
import { Router } from '@angular/router';
import { LoginService } from '../login.service';

@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.css']
})
export class RegistrationComponent implements OnInit {
  Buyer_register:FormGroup;
  // currentBuyer: any;
  // buyers: Buyer[];


  constructor(private formBuilder:FormBuilder,private emartService: EmartService,private router: Router, private loginService: LoginService) { }

  ngOnInit(): void {
    this.Buyer_register=this.formBuilder.group({
      "buyer_id": 0,
      "buyer_username":['',Validators.required],
      "buyer_password":['',Validators.required],
      "buyer_email":['',[Validators.required,Validators.email]],
      "buyer_mobile":['',Validators.required],
      "buyer_date": new Date()
    });
    
  }
  // isValid()
  // { 
  //   let buyer_username = this.Buyer_register.controls.buyer_username.value;
  //   let buyer_password = this.Buyer_register.controls.buyer_password.value;
    

  //   if(this.loginBuyer(buyer_username,buyer_password)) {
  //     localStorage.removeItem('id');
  //     localStorage.setItem('id',this.currentBuyer.id.toString());
  //     this.router.navigate(['/login']);
  //   }
  //   else
  //   {
  //     alert("please login first")
  //   }





onSubmit(){


    this.emartService.addBuyer(this.Buyer_register.value).subscribe(data => {
      console.log("success");
      this.router.navigate(['']);

    }    );
  }  
  // loginBuyer(buyer_username: String, buyer_password: String) {
  //   for(let buyer of this.buyers) {
  //     if((buyer_username == buyer.username) && (buyer_password == buyer.password)) {
  //       this.currentBuyer = buyer;
  //       return true; 
  //     }
  //   }
  //   return false;
  // }
}
