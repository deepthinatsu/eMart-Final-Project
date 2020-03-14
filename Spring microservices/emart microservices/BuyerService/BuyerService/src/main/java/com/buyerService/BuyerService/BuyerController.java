package com.buyerService.BuyerService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin
@RequestMapping("emart")
public class BuyerController {

	@Autowired
	BuyerService buyerService;
	
@GetMapping("/allBuyers")
	
	public List<Buyer> getAllBuyers() {
		return buyerService.getAllBuyers();
		
	}
	
	@PostMapping("/addBuyers")
	public Buyer addBuyer(@RequestBody Buyer buyer) {
		System.out.println("add buyer:" + buyer);
		return buyerService.addBuyer(buyer);
	}
//	
//	@PutMapping("/allBuyers")
//	public Buyer update(Buyer buyer) {
//		return buyerService.update(buyer);
//	}
	
//	@DeleteMapping("/allBuyer/{id}")
//	public void delete(int buyer_id) {
//		 buyerService.delete(buyer_id);
//		
//	}
	
	@GetMapping("/allBuyers/{id}")
	public Buyer getBuyerById(int buyer_id) {
		return buyerService.getBuyerById(buyer_id);
	}
	
	
	
}
