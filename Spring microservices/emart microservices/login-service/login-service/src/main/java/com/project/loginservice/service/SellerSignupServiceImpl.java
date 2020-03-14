package com.project.loginservice.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.loginservice.dao.SellerSignupDao;
import com.project.loginservice.entity.CategoryEntity;
import com.project.loginservice.entity.ItemEntity;
import com.project.loginservice.entity.SellerSignupEntity;
import com.project.loginservice.entity.SubCategoryEntity;
import com.project.loginservice.pojo.CategoryPojo;
import com.project.loginservice.pojo.ItemPojo;
import com.project.loginservice.pojo.SellerSignupPojo;
import com.project.loginservice.pojo.SubCategoryPojo;

@Service
public class SellerSignupServiceImpl implements SellerSignupService {
	
	@Autowired
	SellerSignupDao sellerSignupDao;
	
	
	
	@Override
	public SellerSignupPojo validateSellerSignup(SellerSignupPojo sellerSignupPojo) {
		
		
		SellerSignupEntity sellerSignupEntity = sellerSignupDao.findByUsernameAndPassword(sellerSignupPojo.getUsername(),sellerSignupPojo.getPassword());
		System.out.println(sellerSignupEntity);
		if(sellerSignupEntity != null) {
			Set<ItemEntity> allItemsEntity = sellerSignupEntity.getAllItems();
			Set<ItemPojo> allItems = new HashSet<ItemPojo>();
			for(ItemEntity itemEntity : allItemsEntity) {
				SubCategoryEntity subCategoryEntity = itemEntity.getSubcategory();
				CategoryEntity categoryEntity = subCategoryEntity.getCategory();
				CategoryPojo categoryPojo = new CategoryPojo(categoryEntity.getId(),categoryEntity.getName(),categoryEntity.getBrief());
				SubCategoryPojo subCategoryPojo = new SubCategoryPojo(
						subCategoryEntity.getId(),subCategoryEntity.getName(),categoryPojo, subCategoryEntity.getBrief(),subCategoryEntity.getGstPercent());
				ItemPojo itemPojo = new ItemPojo(itemEntity.getId(),itemEntity.getName(),null, subCategoryPojo, itemEntity.getPrice(),itemEntity.getDescription(),itemEntity.getStock(),itemEntity.getRemarks(),itemEntity.getImage());
				allItems.add(itemPojo);
			}
			sellerSignupPojo = new SellerSignupPojo(sellerSignupEntity.getId(),sellerSignupEntity.getUsername(),sellerSignupEntity.getPassword(),sellerSignupEntity.getCompany(),sellerSignupEntity.getBrief(),sellerSignupEntity.getGst(),sellerSignupEntity.getAddress(),sellerSignupEntity.getEmail(),sellerSignupEntity.getWebsite(),sellerSignupEntity.getContact(),allItems);
		}
		
		
		return sellerSignupPojo;
	}



//	@Override
//	public SellerSignupPojo addSeller(SellerSignupPojo sellerSignupPojo) {
//		SellerSignupEntity sellerSignupEntity = new SellerSignupEntity(sellerSignupPojo.getId(),sellerSignupPojo.getUsername(),sellerSignupPojo.getPassword(),
//				sellerSignupPojo.getCompany(),sellerSignupPojo.getBrief(),sellerSignupPojo.getGst(),sellerSignupPojo.getAddress(),sellerSignupPojo.getEmail(),sellerSignupPojo.getWebsite(),sellerSignupPojo.getContact(), null);
//		sellerSignupEntity = sellerSignupDao.saveAndFlush(sellerSignupEntity);
//		
//		return sellerSignupPojo ;
//	}

}
