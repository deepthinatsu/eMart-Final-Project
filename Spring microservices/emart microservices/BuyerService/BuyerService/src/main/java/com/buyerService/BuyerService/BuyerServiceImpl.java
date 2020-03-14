package com.buyerService.BuyerService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class BuyerServiceImpl implements BuyerService {
	
	
	@Autowired
	
	BuyerServiceDao buyerDao;

	@Override
	public Buyer addBuyer(Buyer buyer) {

		buyer = buyerDao.saveAndFlush(buyer);
		
		return buyer;
	}

//	@Override
//	public Buyer update(Buyer buyer) {
//		
//		
//		return buyerDao.save(buyer);
//	}

//	@Override
//	public void delete(int buyer_id) {
//		buyerDao.deleteById(buyer_id);
//		
//	}

	@Override
	public List<Buyer> getAllBuyers() {
		
		return buyerDao.findAll();
		
		
	}

	@Override
	public Buyer getBuyerById(int buyer_id) {
		
		Optional<Buyer> buyer = buyerDao.findById(buyer_id);
		
		return buyer.get();
	}

	
	}
