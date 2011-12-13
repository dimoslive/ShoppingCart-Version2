<%-- 
    Document   : ShoppingCartTemplate
    Created on : 8 /12/ 2011, 10:03:18 
    Author     : dimos
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="beans.CartItem" %>



<H1>Shopping Cart</H1>
<H2>Products List</H2>

<FORM METHOD="post" ACTION='${param.action}' >

    <TABLE BORDER="1">

        <TR>
            <TD>No.</TD>
            <TD>Item</TD>
            <TD>Quantity</TD>
            <TD>Price</TD>
            <c:set var="count" value="0" />   
            <c:set var="total" value="0" />
        <c:forEach items='${sessionScope}' var='p'>

            </TR>
            <TD> <c:out value='${count}' /> </TD>
            <TD> <c:out value='${p.value.itemName}'/> </TD>
            <c:if test="${count=='0'}">
                <TD> <INPUT TYPE=text NAME="item2" VALUE=${p.value.numItems}> </TD>
            </c:if>
            <c:if test="${count=='1'}">
                <TD> <INPUT TYPE=text NAME="item1" VALUE=${p.value.numItems}> </TD>
            </c:if>
            <c:if test="${count=='2'}">
                <TD> <INPUT TYPE=text NAME="item0" VALUE=${p.value.numItems}> </TD>
            </c:if>
            <TD> <c:out value='${p.value.pricePerItem}'/> </TD>
            </TR>
            <c:set var="total" value="${total+(p.value.pricePerItem * p.value.numItems)}" />
            <c:set var="count" value="${count+1}" />

        </c:forEach>

        <TR>
            <TD COLSPAN=4><B>Total: <c:out value='${total}' /></B></TD>
        </TR>
  
    </TABLE>
    <INPUT TYPE=submit NAME=Page VALUE=Update>



</FORM>
</CENTER>

<jsp:include page='${param.footer}' flush="true"/>


