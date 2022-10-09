<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/css/style.css">
		<meta charset="UTF-8">
		<title>출고</title>
	</head>
	<body>
		<h1>출고 창 입니다.</h1>
		<form action='/stock/stock_out/INSERT' method="post">
			<input type='hidden' name='stock state' value='출' readonly>
			<div>
				<ul>
					<li>
						<label for='stock num'> 재고 번호 </label>
						<input type='text' name='stock num' value="${stocknum}" readonly>	
					</li>
					<li>
						<label for='stock name'> 재고 명 </label>
						<input type='text' name='stock name' value="${stockname}" readonly>
					</li>
					<li>
						<label for='stock quantity'> 출고 수량 </label>
						<input type='text' name='stock quantity' placeholder="출고 수량을 입력해주세요.">
					</li>
					<li>
						<label for='stock price'> 출고 상품 가격(수정가능) </label>
						<input type='text' name='stock price' value="${stockprice}">
					</li>
						
					
				</ul>		
			</div>
			<input type='submit' value="등록">
		</form>
	</body>
</html>