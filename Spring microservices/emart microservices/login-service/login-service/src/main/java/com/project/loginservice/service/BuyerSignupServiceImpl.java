package com.project.loginservice.service;

import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.loginservice.dao.BuyerSignupDao;
import com.project.loginservice.entity.BillDetailsEntity;
import com.project.loginservice.entity.BillEntity;
import com.project.loginservice.entity.BuyerSignupEntity;
import com.project.loginservice.entity.CategoryEntity;
import com.project.loginservice.entity.ItemEntity;
import com.project.loginservice.entity.SellerSignupEntity;
import com.project.loginservice.entity.SubCategoryEntity;
import com.project.loginservice.pojo.BillDetailsPojo;
import com.project.loginservice.pojo.BillPojo;
import com.project.loginservice.pojo.BuyerSignupPojo;
import com.project.loginservice.pojo.CategoryPojo;
import com.project.loginservice.pojo.ItemPojo;
import com.project.loginservice.pojo.SellerSignupPojo;
import com.project.loginservice.pojo.SubCategoryPojo;



@Service
public class BuyerSignupServiceImpl implements BuyerSignupService {
	static Logger LOG = Logger.getLogger(BuyerSignupServiceImpl.class.getClass());
	@Autowired
	BuyerSignupDao buyerSignupDao;
    
	
	@Override
	public BuyerSignupPojo validateBuyerSignup(BuyerSignupPojo buyerSignupPojo) {
		BasicConfigurator.configure();
		LOG.info("entered validateBuyerSignup()");
		
		
		BuyerSignupEntity buyerSignupEntity = buyerSignupDao.findByUsernameAndPassword(buyerSignupPojo.getUsername(),buyerSignupPojo.getPassword());
		System.out.println(buyerSignupEntity);

		if (buyerSignupEntity != null) {
				
				Set<BillEntity> allBillsEntity = buyerSignupEntity.getAllBills();
				Set<BillPojo> allBillPojo = new HashSet<BillPojo>();
			

			for (BillEntity billEntity : allBillsEntity) {
				Set<BillDetailsEntity> allBillDetailsEntity = billEntity.getAllBillDetails();
				Set<BillDetailsPojo> allBillDetailsPojo = new HashSet<BillDetailsPojo>();
				
				for (BillDetailsEntity billDetailsEntity : allBillDetailsEntity) {

					ItemEntity itemEntity = billDetailsEntity.getItem();
					SubCategoryEntity subCategoryEntity = itemEntity.getSubcategory();
					CategoryEntity categoryEntity = subCategoryEntity.getCategory();
					SellerSignupEntity sellerEntity = itemEntity.getSellerId();

					SellerSignupPojo sellerPojo = new SellerSignupPojo(sellerEntity.getId(), 
												  sellerEntity.getUsername(),
												  sellerEntity.getPassword(), 
												  sellerEntity.getCompany(),
												  sellerEntity.getBrief(),
												  sellerEntity.getGst(), 
												  sellerEntity.getAddress(),
												  sellerEntity.getEmail(), 
												  sellerEntity.getWebsite(),
												  sellerEntity.getContact(), null);
					
					
					CategoryPojo categoryPojo = new CategoryPojo(categoryEntity.getId(),
												categoryEntity.getName(), 
												categoryEntity.getBrief());
					  
					SubCategoryPojo subCategoryPojo = new SubCategoryPojo(subCategoryEntity.getId(),
							                           subCategoryEntity.getName(),
							                           categoryPojo,
							                           subCategoryEntity.getBrief(),
							                           subCategoryEntity.getGstPercent());
					
					ItemPojo itemPojo = new ItemPojo(itemEntity.getId(), 
										itemEntity.getName(),
										sellerPojo,
										subCategoryPojo, 
										itemEntity.getPrice(), 
										itemEntity.getDescription(),
										itemEntity.getStock(), 
										itemEntity.getRemarks(),
										itemEntity.getImage()
							  
							  );

					BillDetailsPojo billDetailsPojo = new BillDetailsPojo(billDetailsEntity.getId(),
														null,
														itemPojo);
					allBillDetailsPojo.add(billDetailsPojo);
				}
				
				BillPojo billPojo = new BillPojo(billEntity.getId(), 
									billEntity.getType(),
									billEntity.getDate(),
									billEntity.getRemarks(), 
									billEntity.getAmount(), null,
									allBillDetailsPojo);
				
				allBillPojo.add(billPojo);
			}
			
			buyerSignupPojo = new BuyerSignupPojo(buyerSignupEntity.getId(), 
							buyerSignupEntity.getUsername(),
							buyerSignupEntity.getPassword(), 
							buyerSignupEntity.getEmail(), 
							buyerSignupEntity.getMobile(),
							buyerSignupEntity.getDate(), 
							allBillPojo);
		}
		BasicConfigurator.configure();
		LOG.info("exited validateBuyerSignup()");
		return buyerSignupPojo;
	}
	

@Override
public BuyerSignupPojo getBuyer(int BuyerId) {

BuyerSignupPojo buyerSignupPojo=null;
BuyerSignupEntity buyerEntity= buyerSignupDao.findById(BuyerId).get();
if (buyerEntity != null) {

		Set<BillEntity> allBills = buyerEntity.getAllBills();
		Set<BillPojo> allBillPojo = new HashSet<BillPojo>();
		//Set<BillDetailsPojo> allBillDetailsPojo = new HashSet<BillDetailsPojo>();
	
		for (BillEntity billEntity : allBills) {
		Set<BillDetailsEntity> allBillDetailsEntity = billEntity.getAllBillDetails();
		Set<BillDetailsPojo> allBillDetailsPojo = new HashSet<BillDetailsPojo>();
		
		for (BillDetailsEntity billDetailsEntity : allBillDetailsEntity) {
			ItemEntity itemEntity = billDetailsEntity.getItem();
			SubCategoryEntity subCategoryEntity = itemEntity.getSubcategory();
			CategoryEntity categoryEntity = subCategoryEntity.getCategory();
			 SellerSignupEntity sellersignupEntity=itemEntity.getSellerId();
			
			SellerSignupPojo sellerPojo=new SellerSignupPojo(sellersignupEntity.getId(),
										sellersignupEntity.getUsername(),
										sellersignupEntity.getPassword(),
										sellersignupEntity.getCompany(),
										sellersignupEntity.getBrief(),
										sellersignupEntity.getGst(),
										sellersignupEntity.getAddress(),
										sellersignupEntity.getEmail(),
										sellersignupEntity.getWebsite(),
										sellersignupEntity.getContact(), null);
			
			CategoryPojo categoryPojo = new CategoryPojo(categoryEntity.getId(), 
										categoryEntity.getName(),
										categoryEntity.getBrief());

			SubCategoryPojo subCategoryPojo = new SubCategoryPojo(subCategoryEntity.getId(),
											subCategoryEntity.getName(), 
											categoryPojo, 
											subCategoryEntity.getBrief(),
											subCategoryEntity.getGstPercent());

			ItemPojo itemPojo = new ItemPojo(itemEntity.getId(), 
					itemEntity.getName(), 
					sellerPojo,
					subCategoryPojo, 
					itemEntity.getPrice(),
					itemEntity.getDescription(),
					itemEntity.getStock(), 
					itemEntity.getRemarks(), 
					itemEntity.getImage()
		  
		  );
			
		BillDetailsPojo billDetailsPojo = new BillDetailsPojo(billDetailsEntity.getId(),
												null,
												itemPojo);
			allBillDetailsPojo.add(billDetailsPojo);
}
		BillPojo billPojo = new BillPojo(billEntity.getId(), 
				billEntity.getType(),
				billEntity.getDate(),
				billEntity.getRemarks(), 
				billEntity.getAmount(), null,
				allBillDetailsPojo);
			allBillPojo.add(billPojo);
}
		buyerSignupPojo = new BuyerSignupPojo(buyerEntity.getId(), 
					buyerEntity.getUsername(),
					buyerEntity.getPassword(), 
					buyerEntity.getEmail(), 
					buyerEntity.getMobile(),
					buyerEntity.getDate(), 
					allBillPojo);

}
return buyerSignupPojo;
}

}