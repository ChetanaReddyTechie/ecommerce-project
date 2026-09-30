<%@ include file="header.jspf" %>
<h2>Your Cart</h2>
<c:choose><c:when test="${empty items}"><p>Cart is empty. <a href="/products">Shop now</a></p></c:when>
<c:otherwise><div class="scroll"><table><tr><th>Item</th><th>Price</th><th>Qty</th><th>Subtotal</th><th></th></tr>
<c:forEach var="i" items="${items}"><tr><td>${i.name}</td><td>₹${i.price}</td>
<td><form method="post" action="/cart/update/${i.id}"><input class="qty" type="number" name="quantity" value="${i.quantity}" min="0"><button>Update</button></form></td>
<td>₹${i.subtotal}</td>
<td><form method="post" action="/cart/remove/${i.id}"><button>Remove</button></form></td></tr></c:forEach></table></div>
<h3>Total: ₹${total}</h3><a class="btn" href="/checkout">Proceed to Payment</a></c:otherwise></c:choose>
<%@ include file="footer.jspf" %>
