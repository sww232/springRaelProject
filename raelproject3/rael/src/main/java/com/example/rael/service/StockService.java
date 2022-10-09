package com.example.rael.service;

import com.example.rael.dto.SearchDTO;
import com.example.rael.dto.StockHistoryDTO;
import com.example.rael.dto.StockSelectDTO;
import com.example.rael.paging.PagingResponse;

public interface StockService {
	PagingResponse<StockSelectDTO> SelectStock(SearchDTO searchDTO);
	PagingResponse<StockHistoryDTO> SelectStockHistory(SearchDTO searchDTO);
	int StockHistoryInsert(StockHistoryDTO stockHistoryDTO);
	int StockHistoryCancel(int stockseq);
}
