<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<% if(exception != null) exception.printStackTrace(); %>
<html>
    <head>
        <title>Error <%= response.getStatus() %></title>
    </head>
    <body>
        <h2>Error code <%= response.getStatus() %></h2>
        <p>
<% if(exception != null){ %>
        <pre><%=exception.getMessage() %></pre>
<% } %>
        </p>
    </body>
</html>