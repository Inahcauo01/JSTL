<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="header.jsp" />
<p>
<%-- Affichage --%>
    <h2>
      <c:out value="Bonjour JSTL" />
    </h2>
    <p>
        <c:set var="total" value="${5 * 10}" />
        <p>Le total est : ${total}</p>
    </p>


<%-- Definir une variable--%>
    <c:set var="age" value="18" />

<%-- Conditions--%>
    <c:if test="${age gt 18}">
    <p>Vous êtes majeur.</p>
    </c:if>

    <c:if test="${age lt 18}">
        <p>Vous êtes mineur.</p>
    </c:if>

    <c:if test="${age eq 18}">
        <p>you're 18 y.o</p>
    </c:if>




<%-- switch --%>
    <c:set var="userType" value="Apprenant" />
    <c:choose>
        <c:when test="${userType eq 'Admin'}">
            <p>Vous êtes un administrateur.</p>
        </c:when>
        <c:when test="${userType eq 'Utilisateur'}">
            <p>Vous êtes un utilisateur standard.</p>
        </c:when>
        <c:otherwise>
            <p>Votre statut est inconnu.</p>
        </c:otherwise>
    </c:choose>


<%-- Foreach --%>
<h5>Liste de Fruits</h5>
<ul>
    <c:forEach items="${fruits}" var="fruit">
        <li>${fruit}</li>
    </c:forEach>
</ul>


</p>
</body>
</html>
