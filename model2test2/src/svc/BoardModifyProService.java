package svc;

import java.sql.Connection;

import dao.BoardDAO;

import static db.JdbcUtil.*;
import vo.BoardBean;

public class BoardModifyProService {

	public boolean isArtcleWriter(int board_num, String pass) throws Exception {
		boolean isArticleWriter = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		isArticleWriter = boardDAO.isArticleBoardWriter(board_num, pass);
		if (con != null)
			close(con);
		return isArticleWriter;
	}

	public boolean modifyArticle(BoardBean article) throws Exception {
		boolean isModifySuccess = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int updateCount = boardDAO.updateArticle(article);

		if (updateCount > 0) {
			commit(con);
			isModifySuccess = true;

		} else {
			rollback(con);
		}
		if (con != null)
			close(con);
		return isModifySuccess;
	}

}
