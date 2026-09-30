<%@ include file="header.jspf" %>
<h2>Products</h2>
<form class="filter" method="get" action="/products">
<input name="min" type="number" value="${min}" placeholder="Min ₹">
<input name="max" type="number" value="${max}" placeholder="Max ₹">
<select name="category"><option value="">All categories</option>
<c:forEach var="c" items="${categories}"><option value="${c}" ${c == category ? 'selected' : ''}>${c}</option></c:forEach></select>
<button class="btn">Filter</button></form>
<c:if test="${empty products}"><p>No products in this range.</p></c:if>
<%@ include file="cards.jspf" %>
<%@ include file="footer.jspf" %>
