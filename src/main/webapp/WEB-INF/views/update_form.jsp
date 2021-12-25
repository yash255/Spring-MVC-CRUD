<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container mt-3">
<div class="row">
<div class="col-md-6 offset-md-3">
<h1 class="text-center mb-3">Change Product Details</h1>
<form action="${pageContext.request.contextPath }/handle-product" method="post">

<input type="hidden" value="${product.id }" name="id" />
    <div class="mb-3">
    <label for="name" class="form-label">Product Name</label>
    <input type="text" required class="form-control" id="name" name="name" placeholder="Enter Product Name" value="${product.name }">
  </div>
 
 <div class="mb-3">
    <label for="description" class="form-label">Product Description</label>
    <textarea type="text" required rows="5" class="form-control" id="description" name="description" placeholder="Enter Product Description">${product.description }</textarea>
  </div>
  
   <div class="mb-3">
    <label for="price" class="form-label">Product Price</label>
    <input type="number" required class="form-control" id="price" name="price" placeholder="Enter Product Price" value="${product.price }">
  </div>
  
  <div class="container text-center">
  <a href="${pageContext.request.contextPath }/" class="btn btn-outline-warning">Back</a>
  <button type="submit" class="btn btn-primary">Update</button>
  </div>
  
</form>

</div>
</div>
</div>
</body>
</html>