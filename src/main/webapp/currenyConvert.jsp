<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Converter</title>
</head>
<body>
<%--<%!--%>
<%--    float rate = 22000;--%>
<%--    float usd = 2;--%>
<%--    float vnd = rate * usd;--%>

<%--%>--%>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate * usd;
    PrintWriter writer = response.getWriter();
    if (rate > 0) {
        writer.println("<h1>Rate: " + rate);
        writer.println("<h1>USD: " + usd);
        writer.println("<h1>VND: " + vnd);
%>

<h1>Rate: <%=rate%></h1>
<h1>USD: <%=usd%></h1>
<h1>VND: <%=vnd%></h1>

<% } %>
</body>
</html>
