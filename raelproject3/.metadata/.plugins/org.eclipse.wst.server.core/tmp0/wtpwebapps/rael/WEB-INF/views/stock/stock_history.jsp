<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<meta charset="UTF-8">
	<title>재고 입/출고 기록</title>
</head>
<body>
	<div class="container">
		<table class="rwd-table">
		<thead>
			<tr>
				<td>입/출고 번호</td>
				<td>재고 번호</td>
				<td>재고 이름</td>
				<td>입/출고 수량</td>
				<td>재고 입/출고 상태</td>
				<td>입/출고 가격</td>
				<td>총 가격</td>
				<td>등록날짜</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${datas.list}" var="data">
				<tr>
					<td>${data.STOCKSEQUENCE}</td>
					<td>${data.STOCKNUM}</td>
					<td>${data.STOCKNAME}</td>
					<td>${data.STOCKQUANTITY}</td>
					<c:choose>
						<c:when test="${data.STOCKSTATE eq 'NA'}">
							<td bgcolor="red">${data.STOCKSTATE}</td>
						</c:when>
						<c:otherwise>
							<td>${data.STOCKSTATE}</td>
						</c:otherwise>
					</c:choose>
					<td>${data.STOCKPRICE}</td>
					<td>${data.STOCKPRICESUM}</td>
					<td>${data.STOCKAPPENDDATE}</td>
					
				<tr>
			</c:forEach>
		</tbody>
		</table>
	    <c:if test="${datas.pagination.totalPageCount < 1}">
	        <span>0</span>
	    </c:if>
	    <c:if test="${datas.pagination.totalPageCount > 0}">
	   		<c:forEach begin="${datas.pagination.startPage}" end="${datas.pagination.endPage}" var="num">
	   			<span><a href='<c:url value="/stock/stock_history?page=${num}&recordSize=10&pageSize=10"/>'>${num}</a></span>
	   		</c:forEach>
	    </c:if>
	    <c:if test="${param.pagination.existPrevPage eq true}">
	    	<span><a href='<c:url value="/stock/stock_history?page=${datas.pagination.startPage-1}&recordSize=10&pageSize=10"/>'>이전</a></span>
	    </c:if>
	    <c:if test="${param.pagination.existNextPage eq true}">
	        <span><a href='<c:url value="/stock/stock_history?page=${datas.pagination.endPage+1}&recordSize=10&pageSize=10"/>'>다음</a></span>
	    </c:if>
	</div>

</body>
</html>