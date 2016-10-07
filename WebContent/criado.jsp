<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<%@ page import="java.util.*,pacote.*,java.text.*" %>
<%DAO dao = new DAO();

Pessoas pessoa = new Pessoas();
pessoa.setNome(request.getParameter("nome"));   
pessoa.setAltura(Double.valueOf(request.getParameter("altura")));
/*Passaporte*/
pessoa.setPassaporte(request.getParameter("passaporte"));
String nascimento = request.getParameter("nascimento");
Date data = null;
try {
data = new SimpleDateFormat("dd/MM/yyyy").parse(nascimento);
} catch (ParseException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
Calendar dataNascimento = Calendar.getInstance();
dataNascimento.setTime(data);
pessoa.setNascimento(dataNascimento);

dao.adiciona(pessoa);

dao.close();%>
<h1>Criado</h1>
</body>
</html>


