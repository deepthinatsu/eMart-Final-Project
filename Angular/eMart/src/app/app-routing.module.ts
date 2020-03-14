import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ItemDisplayComponent } from './emart/item/item-display/item-display.component';
import { ItemListComponent } from './emart/item/item-list/item-list.component';
import { CartListComponent } from './emart/cart/cart-list/cart-list.component';
import { BillViewComponent } from './emart/bill/bill-view/bill-view.component';
import { BillListComponent } from './emart/bill/bill-list/bill-list.component';
import { LoginComponent } from './emart/signup/login/login.component';
import { LogoutComponent } from './emart/signup/logout/logout.component';
import { RegistrationComponent } from './registration/registration.component';
import { AboutusComponent } from './eMart/aboutus/aboutus.component';
import { SellerItemlistComponent } from './eMart/seller-itemlist/seller-itemlist.component';
import { SellerSignupComponent } from './emart/signup/seller-signup/seller-signup.component';
import { LoginGuard } from './login.guard';
// import { PageNotFoundComponent } from './page-not-found.component';

const routes: Routes = [
                        
                        {
                          path: 'item-display/:iId',
                          component: ItemDisplayComponent, canActivate:[LoginGuard]
                        },
                        {
                          path: 'item-list',
                          component: ItemListComponent, canActivate:[LoginGuard]
                        },
                        {
                          path: 'cart-list',
                          component: CartListComponent, canActivate:[LoginGuard]
                        },
                        {
                          path: 'bill-view',
                          component: BillViewComponent, canActivate:[LoginGuard]
                        },
                        {
                          path: 'bill-list',
                          component: BillListComponent, canActivate:[LoginGuard]
                        },
                        {
                          path: 'logout',
                          component: LogoutComponent
                        },
                        {path: 'register',component: RegistrationComponent},
                        {
                          path: '',
                            component:LoginComponent
                      },
                      {
                        path: 'aboutus',
                          component: AboutusComponent
                      },
                      {
                        path: 'seller-ilist',
                          component: SellerItemlistComponent, canActivate:[LoginGuard]
                      },
                      {
                        path: 'seller-signup',
                          component: SellerSignupComponent
                      }
                      // {
                      //   path: 'notFound',
                      //     component: PageNotFoundComponent
                      // }
                        ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
