<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.BoardBean"%>
<%
	BoardBean article = (BoardBean) request.getAttribute("article");
	String nowpage = (String) request.getAttribute("page"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#articleForm{
		width: 500px;
		height: 500px;
		border: 1px solid red;
		margin: auto;
	}
	h2{
		text-align: center;
		
	}
	#basicInfoArea{
		height: 40px;
		text-align: center;
	}
	#articleContentArea{
		background: orange;
		margin-top: 20px;
		height: 350px;
		text-align: center;
		overflow: auto;
	}
	#commandList{
		margin: auto;
		width: 500px;
		text-align: center;
	}
</style>
</head>
<body>
	<section id = "articleForm">
		<h2>글 내용 상세 보기</h2>
		<article id = "basicInfoArea">
			제목 : 
			<%=article.getBoard_subject() %><br>
			첨부파일 : 
			<% if (!(article.getBoard_file()==null)) { %>
				<a href ="file_down.jsp?file_name=<%=article.getBoard_file()%>"><%= article.getBoard_file() %></a>
			<% } %>
			
		</article>
		<article id = "articleContentArea">
			<%=article.getBoard_content() %>
		</article>
	</section>
	<section id = "commandList">
		<a href = "boardReplyForm.do?board_num=<%=article.getBoard_num()%>&page=<%=nowpage%>">[답변]</a>
		<a href = "boardModifyForm.do?board_num=<%=article.getBoard_num()%>">[수정]</a>
		<a href = "boardDeleteForm.do?board_num=<%=article.getBoard_num()%>&page=<%=nowpage%>">[삭제]</a>
		<a href = "boardList.do?page=<%=nowpage%>">[목록]</a>
		&nbsp;&nbsp;
	</section>
</body>
</html>