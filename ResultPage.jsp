<%-- 
    Document   : ResultPage
    Created on : 8 /12/ 2011, 10:02:20 
    Author     : dimos
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="beans.CartItem" %>

<jsp:useBean id="item0" class="beans.CartItem" scope="session" />
<jsp:setProperty name="item0" property="numItems" value="${param.item0}"/>


<jsp:useBean id="item1" class="beans.CartItem" scope="session" />
<jsp:setProperty name="item1" property="numItems" value="${param.item1}"/>

<jsp:useBean id="item2" class="beans.CartItem" scope="session" />
<jsp:setProperty name="item2" property="numItems" value="${param.item2}"/>


<jsp:forward page="ShoppingCartTemplate.jsp" >
     <jsp:param name="action" value="ResultPage.jsp" />
     <jsp:param name="footer" value="footer.html" />
</jsp:forward>
