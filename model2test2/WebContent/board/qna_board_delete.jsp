<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int board_num = (Integer)request.getAttribute("board_num");
	String nowPage = (String)request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC게시판</title>
<style type="text/css">
	#passForm{
		width: 400px;
		margin: auto;
		border: 1px solid red; 
	}
</style>
</head>
<body>
	<!-- 게시판 삭제 -->
	<section id = "passForm">
		<form action="boardDeletePro.do?board_num=<%=board_num%>" method="post" name = "deleteForm" >
			<input type = "hidden" name = "page" value = "<%=nowPage%>">
			<table>
				<tr>
					<td>
						<label>글 비밀번호 : </label>
					</td>
					<td>
						<input name = "board_pass" type = "password">
					</td>
				</tr>
				<tr>
					<td>
						<input type = "submit" value = "삭제">&nbsp;&nbsp;
						<input type = "button" value = "돌아가기" onclick = "javascript:history.go(-1)">
			</table>
		</form>
	</section>
</body>
</html>