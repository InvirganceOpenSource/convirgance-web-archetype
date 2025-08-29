<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="convirgance:web" prefix="virge" %>
<!doctype html>

<virge:service var="customers" path="/api/sample">
    <virge:parameter name="state" value="${param.state}" />
</virge:service>

<html>
    <head>
        <title>Example JSP page</title>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th align="left">ID</th>
                    <th align="left">Name</th>
                    <th align="left">Address 1</th>
                    <th align="left">Address 2</th>
                    <th align="left">City</th>
                    <th align="left">State</th>
                    <th align="left">Zip Code</th>
                    <th align="left">Credit Limit</th>
                    <th align="left">Discount Code</th>
                </tr>
            </thead>
            <tbody>
            <virge:iterate var="customer" items="${customers}">
                <tr>
                    <td>${virge:html(customer.CUSTOMER_ID)}</td>
                    <td>${virge:html(customer.NAME)}</td>
                    <td>${virge:html(customer.ADDRESSLINE1)}</td>
                    <td>${virge:html(customer.ADDRESSLINE2)}</td>
                    <td>${virge:html(customer.CITY)}</td>
                    <virge:if test="${empty param.state}">
                    <td><a href="?state=${virge:html(customer.STATE)}">${virge:html(customer.STATE)}</a></td>
                    </virge:if>
                    <virge:if test="${not empty param.state}">
                    <td>${virge:html(customer.STATE)}</td>
                    </virge:if>
                    <td>${virge:html(customer.ZIP)}</td>
                    <td>${virge:html(customer.CREDIT_LIMIT)}</td>
                    <td>${virge:html(customer.DISCOUNT_CODE)}</td>
                </tr>
            </virge:iterate>
            </tbody>
        </table>
    </body>
</html>