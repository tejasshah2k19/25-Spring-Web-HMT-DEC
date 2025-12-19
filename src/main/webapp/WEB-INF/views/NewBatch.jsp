<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="saveBatch" method="post">
		BatchName :  <input type="text" name="batchName"/>
					${result.getFieldError("batchName").defaultMessage}
		<br><br>
		Subject  :<input type="text" name="subjectName"/>
		${result.getFieldError("subjectName").defaultMessage}
		<br><br>
		FacultyName : <input type="text" name="facultyName"/>
		${result.getFieldError("facultyName").defaultMessage}
		<br><br>
		TotalHours : <input type="text" name="totalHours"/>
		${result.getFieldError("totalHours").defaultMessage}
		<br><br>
		<input type="submit" value="Add Batch"/> 
	</form>
	
</body>
</html>