<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="crud_controleFinanceiro.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
	<div class="container">

	<h1>Controle de Finanças</h1>
	<hr/>


	<table class="table table-hover">
		<th>Data</th>
		<th>Descrição</th>
		<th>Tipo</th>
		<th>Valor</th>
		<th>Editar</th>
		<th>Excluir</th>
	
	<%
		ControleDao cdao = new ControleDao();
		for (ControleFinanceiro c: cdao.listar()) {
	%>
			<tr>
				<td><%= c.getData() %></td>
				<td><%= c.getDescricao() %></td>
				<td><%= c.getTipo() %></td>
				<td><%= c.getValor() %></td>
				<td><a class="btn btn-primary" href="editarCadastro.jsp?id=<%= c.getIdcontrole()%>">Editar</a></td>
				<td><a href="excluir.jsp?id=<%= c.getIdcontrole() %>" class="btn btn-danger">Excluir</a></td>
			</tr>
	<% 
		}
	%>
	</table>
	
	<div class="text-right">
		<a href="controle.jsp" class="btn btn-primary">Novo</a>
	</div>
	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>
</body>
</html>