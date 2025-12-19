<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Signup</h2>
	<form action="processCalc" method="post">
	
		N1:<input type="text" name="n1"/><br><br>
		N2: <input type="text" name="n2"/><br><br>
		
		
		Add <input type="radio" name="choice" value="add"/>
		Sub <input type="radio" name="choice" value="sub"/>
		Mul <input type="radio" name="choice" value="mul"/>
		Div <input type="radio" name="choice" value="div"/>
		
		<br><br>
	
		<input type="submit" value="Submit"/>
	</form>
</body>
</html>