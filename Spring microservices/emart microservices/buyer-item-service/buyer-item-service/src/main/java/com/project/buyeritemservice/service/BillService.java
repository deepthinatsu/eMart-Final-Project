package com.project.buyeritemservice.service;

import java.util.Set;

import com.project.buyeritemservice.pojo.BillPojo;

public interface BillService {
	BillPojo saveBill(BillPojo billPojo);
	
	Set<BillPojo> getBill(int buyerId);
}
