<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<meta charset="UTF-8">
	<title>재고 조회</title>
</head>
<body>
	<form id="searchForm" autocomplete="off" action="/stock/stock_select?page=1&recordSize=10&pageSize=10">
	    <div class="form-group">
	        <select name="categoryBox" id="categoryBox">
				<option value="defaultValue" selected></option>
				<c:forEach var="list" items="${categorynums}">
					<option value="${list}">
						${list}
					</option>
				</c:forEach>
			
			</select>
			<input type="submit" value="카테고리 명으로 검색">
			
        
	    <div class="form-group">
		<select id="searchType" name="searchType" class="form-control">
           <option value="" selected>전체</option>
           <option value="product_name">제품 이름</option>
           <option value="product_company">회사명</option>
		</select>
	        <input type="search" id="keyword" name="keyword" placeholder="검색 열" />
	        <input type="submit" value="검색">
	    </div>
	    </div>
        
        
	    
	</form>
	<div class="container">
		
		<form>
			<table class="rwd-table">
				<thead>
					<tr>
						<td>재고 번호</td>
						<td>재고 이름</td>
						<td>재고 현재 수량</td>
						<td>재고 입고 수량</td>
						<td>재고 출고 수량</td>
						<td>재고 총 입고 금액</td>
						<td>재고 총 출고 금액</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${datas.list}" var="data">
						<tr>
							<td>${data.STOCKNUM}</td>
							<td>${data.PRODUCTNAME}</td>
							<c:choose>
								<c:when test="${data.STOCKQUANTITY < 11}">
									<td bgcolor="red">${data.STOCKQUANTITY}</td>
								</c:when>
								<c:otherwise>
									<td>${data.STOCKQUANTITY}</td>
								</c:otherwise>
							</c:choose>
							<td ><input value="${data.STOCKQUANTITYINBOUND}" type="submit" 
									formaction="/stock/stock_in/입/${data.STOCKNUM}/${data.PRODUCTNAME}">
							</td>
							<td><input value="${data.STOCKQUANTITYOUTBOUND}" type="submit"
									formaction="/stock/stock_out/출/${data.STOCKNUM}/${data.PRODUCTNAME}">
							</td>
							<td>${data.SUMPRICEINBOUND}</td>
							<td>${data.SUMPRICEOUTBOUND}</td>
						<tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
		<c:if test="${datas.pagination.totalPageCount < 1}">
        	<span>0</span>
	    </c:if>
	    <c:if test="${datas.pagination.existPrevPage eq true}">
	    	<span><a href='<c:url value="/stock/stock_select?page=${datas.pagination.startPage-1}&recordSize=10&pageSize=10&categoryBox=${categoryBox}&keyword=${param.keyword}&searchType=${param.searchType}"/>'>이전</a></span>
	    </c:if>
	    <c:if test="${datas.pagination.totalPageCount > 0}">
	   		<c:forEach begin="${datas.pagination.startPage}" end="${datas.pagination.endPage}" var="num">
	   			<span><a href='<c:url value="/stock/stock_select?page=${num}&recordSize=10&pageSize=10&categoryBox=${categoryBox}&keyword=${param.keyword}&searchType=${param.searchType}"/>'>${num}</a></span>
	   		</c:forEach>
	    </c:if>
	    <c:if test="${datas.pagination.existNextPage eq true}">
	        <span><a href='<c:url value="/stock/stock_select?page=${datas.pagination.endPage+1}&recordSize=10&pageSize=10&categoryBox=${categoryBox}&keyword=${param.keyword}&searchType=${param.searchType}"/>'>다음</a></span>
	    </c:if>
	</body>

</body>
</html>