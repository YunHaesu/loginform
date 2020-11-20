<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.BoardBean" %>
<%
	BoardBean article = (BoardBean)request.getAttribute("article");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<style type="text/css">
#registForm {
	width: 500px;
	height: 610px;
	border: 1px solid red;
	margin: auto;
}

h2 {
	text-align: center;
}

table {
	margin: auto;
	width: 450px;
}

.td_left {
	width: 150px;
	background: orange;
}

.td_right {
	width: 300px;
	background: skyblue;
}

#commandCell {
	text-align: center;
}
</style>
</head>
<body>
	<!-- 게시판 등록 -->
	<section id = "writeForm">
		<h2>게시판 글 수정</h2>
		<form action="boardModifyPro.do" method="post" name = "ModifyForm">
		<input type = "hidden" name= "board_num" value = "<%=article.getBoard_num()%>">
			<table>
				<tr>
					<td class=  "td_left"><label for = "board_name">글쓴이</label> </td>
					<td class=  "td_right">
					<input type = "text" name = "board_name" id = "board_name" value = "<%=article.getBoard_name()%>">
					</td>
				</tr>
				<tr>
					<td class=  "td_left"><label for = "board_pass">비밀번호</label> </td>
					<td class=  "td_right"><input type = "password" name = "board_pass" id = "board_pass"></td>
				</tr>
				<tr>
					<td class=  "td_left"><label for = "board_subject">제 목</label> </td>
					<td class=  "td_right"><input type = "text" name = "board_subject" id = "board_subject" value = "<%=article.getBoard_subject()%>"></td>
				</tr>
				<tr>
					<td class=  "td_left"><label for = "board_content">내 용</label> </td>
					<td class=  "td_right"><textarea rows="15" cols="40" id = "board_content" name = "board_content"><%=article.getBoard_content()%></textarea></td>
				</tr>
			</table>
			<article id = "commandCell">
				<a href= "javascript:modifyboard()">[수정]</a>&nbsp;&nbsp;
				<a href = "javascript:history.go(-1)">[뒤로]</a>
				<script>
					function modifyboard() {
						ModifyForm.submit();
					}
				</script>
			</article>
		</form>
	</section>
</body>
</html>