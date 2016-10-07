<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@ page import="java.util.*,pacote.*" %>
<%Calendar today = Calendar.getInstance();%>
<%=today.getTime()%>
<table border='1'>   
<tr><td>ID</td><td>Nome</td> 
<td>Nascimento</td>
<td>Altura</td>
<td>Passaporte</td></tr>
    
<% DAO dao = new DAO();
   List<Pessoas> pessoas = dao.getLista();
   for (Pessoas pessoa : pessoas ) { %>
    <tr>
        <td><%=pessoa.getId()%></td>
        <td><%=pessoa.getNome()%></td>
        <td><%=pessoa.getNascimento().getTime()%></td>
        <td><%=pessoa.getAltura()%></td>
        <td><%=pessoa.getPassaporte()%></td>
    </tr>
<% } %>

</table>
</body>
</html>