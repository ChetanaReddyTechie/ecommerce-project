<%@ include file="header.jspf" %>
<div class="detail"><img src="${p.image_url}" alt="">
<div><h2>${p.name}</h2><p>${p.description}</p>
<p><b>Category:</b> ${p.category} &nbsp; <b>Color:</b> ${p.color}</p>
<p><b>Rating:</b> ⭐ ${p.rating}</p>
<p><b>Availability:</b> <c:choose><c:when test="${p.stock > 0}">In stock (${p.stock})</c:when><c:otherwise>Out of stock</c:otherwise></c:choose></p>
<p class="price">₹${p.price}</p>
<form method="post" action="/cart/add/${p.id}"><button class="btn" ${p.stock > 0 ? '' : 'disabled'}>Add to Cart</button></form></div></div>
<%@ include file="footer.jspf" %>
