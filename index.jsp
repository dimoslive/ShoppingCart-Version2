<%-- 
    Document   : index
    Created on : 8 /12/ 2011, 9:57:12 
    Author     : dimos
--%>

<%@ page import="beans.CartItem" %>

<jsp:useBean id="item0" class="beans.CartItem" scope="session" >
     <jsp:setProperty name="item0" property="itemName" value="Water" />
     <jsp:setProperty name="item0" property="pricePerItem" value="1.29" />
</jsp:useBean>

<jsp:useBean id="item1" class="beans.CartItem" scope="session" >
     <jsp:setProperty name="item1" property="itemName" value="Sugar" />
     <jsp:setProperty name="item1" property="pricePerItem" value="6.95" />
</jsp:useBean>

<jsp:useBean id="item2" class="beans.CartItem" scope="session" >
     <jsp:setProperty name="item2" property="itemName" value="Cafe" />
     <jsp:setProperty name="item2" property="pricePerItem" value="18.5" />
</jsp:useBean>

<jsp:forward page="ShoppingCartTemplate.jsp" >
     <jsp:param name="action" value="ResultPage.jsp" />
     <jsp:param name="footer" value="footer.html" />
</jsp:forward>
