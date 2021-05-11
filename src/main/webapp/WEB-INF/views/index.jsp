<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
<style>
h2 {
	text-align: center;
}

.t1 {
	background-color: Coral;
	margin: auto;
}

.t2 {
	background-color: Lavender;
	margin: auto;
}
</style>
</head>
<body style="background-color: CadetBlue;">
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
	<h2>Add Note</h2>

	<form action="saveNote" method="post">
		<table class="t1" style="with: 50%" border="2">
			<tr>
				<td>Note ID</td>
				<td><input type="number" id="noteId" name="noteId"></td>
			</tr>

			<tr>
				<td>Title</td>
				<td><input type="text" id="noteTitle" name="noteTitle"></td>
			</tr>

			<tr>
				<td>Content</td>
				<td><input type="textarea" id="noteContent" name="noteContent"></td>
			</tr>

			<tr>
				<td>Status</td>
				<td><input type="text" id="noteStatus" name="noteStatus"></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Add Note" /></td>
			</tr>

		</table>
	</form>
	<br>
	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<h2>Saved Notes</h2>
	<table class="t2" style="with: 50%" border="2">
	
		
		<tr>
			<td>Note ID</td>
			<td>Title</td>
			<td>Content</td>
			<td>Status</td>
			<td>Created at</td>
		</tr>
		
			<c:forEach items="${SavedNotes}" var="note">
			<tr>
				<td>${note.noteId}</td>
				<td>${note.noteTitle}</td>
				<td>${note.noteContent}</td>
				<td>${note.noteStatus}</td>
				<td>${note.createdAt}</td>
				<td><a href="deleteNote?noteId=${note.noteId}"><button>Delete</button></a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>