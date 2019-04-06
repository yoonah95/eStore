<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<sf:hidden path="productId" />

	<div class="view-wrapper">
		<div class="row">
			<div class="col-md-6">
				<c:set var="imageFilename"
					value="/resources/images/${product.name}.jpg"></c:set>
				<h3>Product Detail</h3>
				<h7>Here is the detail information of the product</h7>
				<img src="<c:url value="${imageFilename}" />" alt="image"
					style="width: 80%" />
			</div>
			<div class="col-md-6">
			<div class="view-wrapper">
				<h3><b>${product.name}</b></h3>
				<p>${product.description}</p>

				<p><b>Manufacturer</b>:${product.manufacturer}</p>
				<p><b>Category</b>:${product.category}</p>

				<p><b>${product.price}원</b></p>
				</div>
			</div>
		</div>

	</div>
</body>
</html>