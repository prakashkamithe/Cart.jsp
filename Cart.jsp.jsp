Cart.jsp
===================


<%@ page language="java" contentType="text/html"%>
   
<%@include file="Header.jsp" %>

<div class="container">
<table class="table table-boardered">
	<tr class="danger">
	<td colspan="6"><center>Wishlist</center></td>
	</tr>
	<tr>
	
	<td>product Id</td>
	<td>Product Name</td>
	<td>Quantity</td>
	<td>Price</td>
	<td>SubTotal</td>
	<td>Operation</td>
	</tr>
	
	
	<c:forEach items="${cartItemList}" var="cartItem">
	<form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>"method="get">
	 	<tr class="info">
	 	
	 	
	 	<td>${cartItem.productid}</td>
	     <td>${cartItem.productName}</td>
	     <td><input type="type="text"value="${cartItem.quantity}" name="quantity"></td>
	     <td>${cartItem.price}</td>
	     <td>${cartItem.price * cartItem.quantity}</td>
	     <td>
	     	
	     	<input type ="submit" value="update" btn="btn-success"/>
	     	<a href="<c:url value="/deleteCartItem/${CartItem.cartItemId}"/>"class="btn btn-danger">Delete</a>" 
	     	</td>
	     	</tr>
	     	</form>
	     </c:forEach>
	     
	     <tr class="warning">
	     <td colspan="4"> Total Purchase Amount</td>
	     <td colspan="2">${grandTotal}</td>
	     </tr>
	     
	     <tr class="info">
	     <td colspan="3">
	     
	     <center><a href="<c:url value="/productDisplay"/>"class=" btn btn-success"> Continue Your Shopping</a></center>
	     </td>
	     
	     <td colspan="3">
	     	<center><a href="<c:url value="/checkout"/>"class="btn btn-sucess"> Check Out</a></center>
	    </td>
	    </tr>
	    
</table>
</div>