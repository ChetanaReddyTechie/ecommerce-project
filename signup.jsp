<%@ include file="header.jspf" %>
<form class="box" method="post" action="/signup"><h2>Signup</h2>
<c:if test="${not empty error}"><p class="err">${error}</p></c:if>
<input name="username" placeholder="Username" required>
<input name="email" type="email" placeholder="Email" required>
<input name="password" type="password" placeholder="Password" minlength="6" required>
<button class="btn">Create account</button></form>
<%@ include file="footer.jspf" %>
