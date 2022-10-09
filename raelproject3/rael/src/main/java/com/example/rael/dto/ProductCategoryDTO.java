package com.example.rael.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
public class ProductCategoryDTO {
	private int PRODUCTCATEGORYNUM;
	private String PRODUCTCATEGORYNAME;
}