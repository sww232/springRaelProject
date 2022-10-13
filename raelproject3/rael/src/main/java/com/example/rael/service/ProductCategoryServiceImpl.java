package com.example.rael.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.rael.dto.ProductCategoryDTO;
import com.example.rael.dto.SearchDTO;
import com.example.rael.mapper.ProductCategoryMapper;
import com.example.rael.paging.Pagination;
import com.example.rael.paging.PagingResponse;

@Service
@Transactional
public class ProductCategoryServiceImpl implements ProductCategoryService{
	
	@Autowired
	ProductCategoryMapper productCategoryMapper;
	
	// SELECT categorynum, categoryname FROM RAEL_PRODUCT_CATEGORY
	public PagingResponse<ProductCategoryDTO> SelectCategory(SearchDTO param) {
		int count = productCategoryMapper.Count(param);
		Pagination pagination = new Pagination(count, param);
		param.setPagination(pagination);
        List<ProductCategoryDTO> list = productCategoryMapper.SelectCategory(param);
		return new PagingResponse<>(list, pagination);
	}
	
	// INSERT INTO RAEL_PRODUCT_CATEGORY
	public int InsertCategory(ProductCategoryDTO productCategoryDTO) {
		return productCategoryMapper.InsertCategory(productCategoryDTO);
	}
	public int CreateCategorySEQ(Map<String, String> categorynum) {
		return productCategoryMapper.CreateCategorySEQ(categorynum);
	};
	
	// UPDATE RAEL_PRODUCT_CATEGORY SET
	public int UpdateCategory(ProductCategoryDTO productCategoryDTO) {
		return productCategoryMapper.UpdateCategory(productCategoryDTO);
	}
	
	public String SelectForUpdate(int categorynum) {
		return productCategoryMapper.SelectForUpdate(categorynum);
	}
	
	public int Count(SearchDTO searchDTO) {
		return productCategoryMapper.Count(searchDTO);
	}
	
	public List<String> SelectHeadCategory(){
		return productCategoryMapper.SelectHeadCategory();
	}
}
