<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<body>
    <jsp:useBean id="dao" class="pacote.DAO"/>
    
    <table border="1">
      <tr>
            <td><b>#</b></td>
            <td><b>nome</b></td>
			<td><b>data nascimento</b></td>
            <td><b>altura</b></td>
      </tr>
      <c:forEach var="pessoa" items="${dao.lista}" varStatus="id">
        <tr bgcolor="#${id.count%2 == 0 ? 'bbffcc' : 'ffffbb' }" >
            <td>${id.count}</td>
            <td>${pessoa.nome}</td>
			<td>
			<fmt:formatDate 
			    value="${pessoa.nascimento.time}"
                pattern="dd/MM/yyyy"/>
         	</td>
            <td>${pessoa.altura}</td>
        </tr>
      </c:forEach>
      
</table>
</body>
</html>