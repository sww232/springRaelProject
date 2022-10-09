package com.example.rael.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class StockSelectDTO {
	String STOCKNUM;
	String PRODUCTNAME;
	int STOCKQUANTITY;
	int STOCKQUANTITYINBOUND;
	int STOCKQUANTITYOUTBOUND;
	int SUMPRICEINBOUND;
	int SUMPRICEOUTBOUND;
}
