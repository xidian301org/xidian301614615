package com.league.action.board;

import com.league.bean.Board;
import com.league.service.BoardService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteBoardAction extends ActionSupport{
	Board board;
	BoardService service;
	String message;

	public Board getBoard() {
		return board;
	}

	public void setBoard(Board board) {
		this.board = board;
	}

	public BoardService getService() {
		return service;
	}

	public void setService(BoardService service) {
		this.service = service;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String execute() throws Exception {

		Integer authority = (Integer) ActionContext.getContext().getSession()
				.get("authority");
		if (authority >= 8) {
			message = "";
			this.service.deleteBoard(board);

			return SUCCESS;
		} else {
			message = "您没有执行该操作的权力！";
			return ERROR;
		}
	}
}
