<%@ include file="header.jspf" %>
<form class="box" method="post" action="/login"><h2>Login</h2>
<c:if test="${param.registered != null}"><p class="ok">Registered! Please login.</p></c:if>
<c:if test="${not empty error}"><p class="err">${error}</p></c:if>
<input name="username" placeholder="Username" required>
<input name="password" type="password" placeholder="Password" required>
<button class="btn">Login</button></form>
<%@ include file="footer.jspf" %>
