<%@ include file="header.jspf" %>
<form class="box" method="post" action="/checkout"><h2>Payment — ₹${total}</h2>
<c:if test="${not empty error}"><p class="err">${error}</p></c:if>
<input name="cardName" placeholder="Name on card" required>
<input name="cardNumber" placeholder="Card number (16 digits)" maxlength="19" required>
<input name="expiry" placeholder="MM/YY" maxlength="5" required>
<input name="cvv" type="password" placeholder="CVV" maxlength="4" required>
<button class="btn">Pay Now</button></form>
<%@ include file="footer.jspf" %>
