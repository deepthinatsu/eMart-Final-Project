package com.buyerService.BuyerService;

import java.util.List;

public interface BuyerService {

	public Buyer addBuyer(Buyer buyer);
	
//	public Buyer update(Buyer buyer);
	
//	public void delete(int buyer_id);
//	
	public List<Buyer> getAllBuyers();
	
	public Buyer getBuyerById(int buyer_id);
}
