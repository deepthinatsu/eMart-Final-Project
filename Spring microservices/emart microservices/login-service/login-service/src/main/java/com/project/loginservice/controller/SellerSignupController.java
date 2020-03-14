package com.project.loginservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.loginservice.pojo.SellerSignupPojo;
import com.project.loginservice.service.SellerSignupService;

@CrossOrigin
@RestController
@RequestMapping("emart")
public class SellerSignupController {

	
	@Autowired
	SellerSignupService sellerSignupService;
	
	
	@GetMapping("svalidate")
	
	SellerSignupPojo validateSellerSignup(@RequestHeader("Authorization") String data) {
		
		String token[] = data.split(":");
		SellerSignupPojo sellerSignupPojo = new SellerSignupPojo();
		sellerSignupPojo.setUsername(token[0]);
		sellerSignupPojo.setPassword(token[1]);
		
		
		return sellerSignupService.validateSellerSignup(sellerSignupPojo);
		
	}
//	@PostMapping("/addSeller")
//	SellerSignupPojo addSeller(@RequestBody SellerSignupPojo sellerSignupPojo) {
//		return sellerSignupService.addSeller(sellerSignupPojo);
//		
//	}
	
	
	
	
	
	
	
}
