<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	 	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <meta charset="UTF-8">
			<title>카테고리 조회</title>
	
		<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	    <link
	        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	        rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="/css/sb-admin-2.min.css" rel="stylesheet">
	    <script src="/vendor/jquery/jquery.min.js"></script>
	    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	    <!-- Core plugin JavaScript-->
	    <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>
	
	    <!-- Custom scripts for all pages-->
	    <script src="/js/sb-admin-2.min.js"></script>
	
	    <!-- Page level plugins -->
	    <script src="/vendor/datatables/jquery.dataTables.min.js"></script>
	    <script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	
	    <!-- Page level custom scripts -->
	    <script src="/js/demo/datatables-demo.js"></script>
	
	    <!-- Custom styles for this page -->
	    <link href="/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	
	</head>
<body id="page-top">
	<form>
	<div class="modal fade" id="moaModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">상품 등록을 위한 카테고리 선택</h5>
						<button class="close" type="button" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span>
						</button>
						</div>
						<div class="modal-body">
							<select name="categoryBox1" id="categoryBox1">
								<option value="defaultValue" selected></option>
								<c:forEach var="list" items="${categorynums}">
									<option value="${list}">
										${list}
									</option>
								</c:forEach>
							</select>
						</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="button" data-dismiss="modal">Cancel</button>
						<button class="btn btn-primary" type="submit" formaction="/product/product_insert">Choice</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="moaModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">상품 추가 등록을 위한 카테고리 선택</h5>
						<button class="close" type="button" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span>
						</button>
						</div>
						<div class="modal-body">
							<select name="categoryBox2" id="categoryBox2">
								<option value="defaultValue" selected></option>
								<c:forEach var="list" items="${categorynums}">
									<option value="${list}">
										${list}
									</option>
								</c:forEach>
							</select>
						</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="button" data-dismiss="modal">Cancel</button>
						<button class="btn btn-primary" type="submit" formaction="/product/product_insert_detail">Choice</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="moaModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">상품명/상세정보 수정을 위한 카테고리 선택</h5>
						<button class="close" type="button" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span>
						</button>
						</div>
						<div class="modal-body">
							<select name="categoryBox3" id="categoryBox3">
								<option value="defaultValue" selected></option>
								<c:forEach var="list" items="${categorynums}">
									<option value="${list}">
										${list}
									</option>
								</c:forEach>
							</select>
						</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="button" data-dismiss="modal">Cancel</button>
						<button class="btn btn-primary" type="submit" formaction="/product/product_update">Choice</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div id="wrapper">
		 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">RAEL</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="/">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>처음으로</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                상품
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>상품 분류</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">상풍 분류 탭</h6>
                        <a class="collapse-item" href="/product/category_select?page=1&recordSize=10&pageSize=10">상품 분류 조회</a>
                        <a class="collapse-item" href="/product/category_insert?insertresult=0">상품 분류 등록</a>
                        <a class="collapse-item" href="/product/category_update">상품 분류 수정</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>상품</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">상품 탭</h6>
                        <a class="collapse-item" href="/product/all_select?page=1&recordSize=10&pageSize=10">상품 조회</a>
                        <a class="collapse-item" href="#" data-toggle="modal" data-target="#moaModal1">
							<i class="fas fa-arrow-right"></i>상품 등록
						</a>
						<a class="collapse-item" href="#" data-toggle="modal" data-target="#moaModal2">
							<i class="fas fa-arrow-right"></i>상품 추가 등록
						</a>
						<a class="collapse-item" href="#" data-toggle="modal" data-target="#moaModal3">
							<i class="fas fa-arrow-right"></i>상품명/상세정보 수정
						</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                재고
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>재고</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">재고</h6>
                        <a class="collapse-item" href="/stock/stock_select?page=1&recordSize=10&pageSize=10">재고 조회 및 입/출고</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">재고 입/출고</h6>
                        <a class="collapse-item" href="/stock/stock_history?page=1&recordSize=10&pageSize=10">내역</a>
                        <a class="collapse-item" href="/stock/stock_history_cancel?page=1&recordSize=10&pageSize=10">취소</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search 
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>
					-->
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>
                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">라엘이</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_rocket.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
    	<!-- End of Topbar -->
    	<div class="container-fluid">
		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">카테고리 조회 탭</h1>
		<div class="card shadow mb-4">
			<div class="card-header py-3">
			    <h6 class="m-0 font-weight-bold text-primary">상품 카테고리</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
						<div class="row">
							<form>
								<div class="dataTable_filter" id="dataTable_filter">
									<select name="categoryBox" id="categoryBox">
										<option value="defaultValue" selected></option>
										<c:forEach var="list" items="${categoryhead}">
											<option value="${list}">
												${list}
											</option>
										</c:forEach>
									</select>
									<input type="submit" value="카테고리 명으로 검색">
								</div>
							</form>	
						</div>
						<div class="row">
							<div class="col-sm-12">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<td>Category Number</td>
											<td>Category Name</td>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<td>Category Number</td>
											<td>Category Name</td>
										</tr>
									</tfoot>
									<tbody>
										<c:forEach items="${datas.list}" var="data">
											<tr>
												<td>${data.PRODUCTCATEGORYNUM}
												<td>${data.PRODUCTCATEGORYNAME}
											<tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 col-md-5">
								<div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">
									<c:if test="${shownumber >= allcount}">
										Showing ${datas.pagination.limitStart + 1} to ${allcount} of ${allcount}
									</c:if>
									<c:if test="${shownumber < allcount}">
										Showing ${datas.pagination.limitStart + 1} to ${datas.pagination.limitStart + 10} of ${allcount}
									</c:if>
								</div>
							</div>		
							<div class="col-sm-12 col-md-7">
								<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
									<ul class="pagination">
									    <c:if test="${datas.pagination.totalPageCount < 1}">
									        <li>0</li>
									    </c:if>
									    <c:if test="${datas.pagination.existPrevPage eq true}">
									    	<li class="paginate_button page-item previous">
									    		<a aria-controls="dataTable" data-dt-idx="${num}" class="page-link"
									    			href='<c:url value="/product/category_select?page=${datas.pagination.startPage-1}&recordSize=10&pageSize=10&categoryBox=${categoryBox}"/>'>PREVIOUS</a>
									    	</li>
									    </c:if>
									    <c:if test="${datas.pagination.totalPageCount > 0}">
									   		<c:forEach begin="${datas.pagination.startPage}" end="${datas.pagination.endPage}" var="num">
									   			<li class="paignate_button page-item">
									   				<a  aria-controls="dataTable" data-dt-idx="${num}" class="page-link"
									   					href='<c:url value="/product/category_select?page=${num}&recordSize=10&pageSize=100&categoryBox=${categoryBox}"/>'>${num}</a>
									   			</li>
									   		</c:forEach>
									    </c:if>
									    <c:if test="${datas.pagination.existNextPage eq true}">
									        <li class="paginate_button page-item next" id="dataTable_next">
									        	<a aria-controls="dataTable" data-dt-idx="${num}" class="page-link"
									        		href='<c:url value="/product/category_select?page=${datas.pagination.endPage+1}&recordSize=10&pageSize=10&categoryBox=${categoryBox}"/>'>NEXT</a>
									       </li>
									    </c:if>
						    		</ul>
					    		</div>
					    	</div>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    	</div>
	</div>
</div>


	
</body>
</html>