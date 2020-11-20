<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<style type="text/css">
#registForm {
	width: 500px;
	height: 600px;
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
		<h2>게시판 글 등록</h2>
		<form action="boardWritePro.do" method="post" enctype="multipart/form-data" name = "boardform">
			<table>
				<tr>
					<td class=  "td_left"><label for = "board_name">글쓴이</label> </td>
					<td class=  "td_right"><input type = "text" name = "board_name" id = "board_name" required="required"> </td>
				</tr>
				<tr>
					<td class=  "td_left"><label for = "board_pass">비밀번호</label> </td>
					<td class=  "td_right"><input type = "password" name = "board_pass" id = "board_pass" required="required"> </td>
				</tr>
				<tr>
					<td class=  "td_left"><label for = "board_subject">제 목</label> </td>
					<td class=  "td_right"><input type = "text" name = "board_subject" id = "board_subject" required="required"> </td>
				</tr>
				<tr>
					<td class=  "td_left"><label for = "board_content">내 용</label> </td>
					<td class=  "td_right"><textarea rows="15" cols="40" id = "board_content" name = "board_content" required="required"></textarea> </td>
				</tr>
				<tr>
					<td class=  "td_left"><label for = "board_file">파일첨부</label> </td>
					<td class=  "td_right"><input type = "file" name = "board_file" id = "board_file" required="required"> </td>
				</tr>
			</table>
			<article id = "commandCell">
				<input type = "submit" value = "등록">&nbsp;&nbsp;
				<input type = "reset" value = "다시쓰기">
			</article>
		</form>
	</section>
</body>
</html>