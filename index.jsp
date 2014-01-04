<%@ page import="java.util.*" %>
<html>
<head><title>JSP test</title></head>
<body>

<h2>HTTP Request Headers Received</h2>
<table>
<%
Enumeration enumeration = request.getHeaderNames();
while (enumeration.hasMoreElements()) {
String name = (String) enumeration.nextElement();
String value = request.getHeader(name);
%>
<tr><td><%= name %></td><td><%= value %></td></tr>
<%
}
%>
</table>


	Wylosuj liczbe powyzej 0.95
  <%
    double num = Math.random();
    if (num > 0.95) {
  %>
      <h2>Masz szczescie :)!</h2><p>(<%= num %>)</p>
  <%
    } else {
  %>
      <h2>Sprobuj jeszcze raz </h2><p>(<%= num %>)</p>
  <%
    }
  %>
  <a href="<%= request.getRequestURI() %>"><h3>Jeszcze raz</h3></a>
</body>
</html>