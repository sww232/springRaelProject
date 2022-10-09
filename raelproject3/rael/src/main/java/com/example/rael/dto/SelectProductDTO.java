package com.example.rael.dto;

import java.sql.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Setter
@Getter
public class SelectProductDTO {
	String PRODUCTNUM;
	int PRODUCTBYNUM;
	String PRODUCTVENDOR;
	String PRODUCTCOMPANY;
	String PRODUCTCOLOR;
	int PRODUCTPRICEINBOUND;
	int PRODUCTPRICEOUTBOUND;
	String PRODUCTLENGTH;
	String PRODUCTWEIGHT;
	String PRODUCTVOLT;
	Date APPENDDATE;
	Date UPDATEDATE;
	String PRODUCTDESCRIPTION;
}
