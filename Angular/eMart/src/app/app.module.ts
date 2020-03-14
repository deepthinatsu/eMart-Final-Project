import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { ItemListComponent } from './emart/item/item-list/item-list.component';
import { ItemDisplayComponent } from './emart/item/item-display/item-display.component';
import { CartListComponent } from './emart/cart/cart-list/cart-list.component';
import { BillViewComponent } from './emart/bill/bill-view/bill-view.component';
import { BillListComponent } from './emart/bill/bill-list/bill-list.component';
import { LoginComponent } from './emart/signup/login/login.component';
import { BuyerSignupComponent } from './emart/signup/buyer-signup/buyer-signup.component';
import { SellerSignupComponent } from './emart/signup/seller-signup/seller-signup.component';
import { HeaderComponent } from './emart/header/header.component';
import { LogoutComponent } from './emart/signup/logout/logout.component';
import { RegistrationComponent } from './registration/registration.component';
import { AboutusComponent } from './eMart/aboutus/aboutus.component';
import { SellerItemlistComponent } from './eMart/seller-itemlist/seller-itemlist.component';
// import { PageNotFoundComponent } from './page-not-found.component';
// import { RouterModule } from '@angular/router';


@NgModule({
  declarations: [
    AppComponent,
    ItemListComponent,
    ItemDisplayComponent,
    CartListComponent,
    BillViewComponent,
    BillListComponent,
    LoginComponent,
    BuyerSignupComponent,
    SellerSignupComponent,
    HeaderComponent,
    LogoutComponent,
    RegistrationComponent,
    AboutusComponent,
    SellerItemlistComponent,
    // PageNotFoundComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    // RouterModule.forRoot(appRoutes)
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
