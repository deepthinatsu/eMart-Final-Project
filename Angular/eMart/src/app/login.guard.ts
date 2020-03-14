import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { LoginService } from './login.service';
import { EmartService } from './emart/emart.service';

@Injectable({
  providedIn: 'root'
})
export class LoginGuard implements CanActivate {
  constructor(private loginService:LoginService, private router: Router, protected emartService: EmartService){}

  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
      const islogedin = !!this.emartService.existBuyer();
    if(islogedin){

    
      return true;
    }
    else{
      this.router.navigate(['']);
      alert("please login");
      return false;
    }
  }
  
}
