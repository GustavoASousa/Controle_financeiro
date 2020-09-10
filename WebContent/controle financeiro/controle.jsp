<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
	<div class="container">

	<h1>Cadastro de finanças</h1>
	<hr/>
	
	<form action="salvar.jsp" method="post">
		<div class="input-group mb-4">
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="inputGroup-sizing-default">Data</span>
		  </div>
		  <input type="date" name="data" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
		</div>
		
		<div class="input-group mb-4">
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="inputGroup-sizing-default">Descrição</span>
		  </div>
		  <input type="text" name="descricao" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
		</div>
		<div class="input-group mb-4">
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="inputGroup-sizing-default">Tipo</span>
		  </div>
		  <input type="text" name="tipo" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
		</div>
		<div class="input-group mb-4">
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="inputGroup-sizing-default">Valor</span>
		  </div>
		  <input type="number" step="any" name="valor" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
		</div>
		

		<input  class="btn btn-primary" type="submit" value="salvar"/>
		<a href=index.jsp  class="btn btn-danger">cancelar</a>	
	</form>
	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>
</body>
</html>