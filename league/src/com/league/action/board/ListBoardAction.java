package com.league.action.board;

import java.util.List;

import com.league.bean.Board;
import com.league.service.BoardService;
import com.opensymphony.xwork2.ActionSupport;

public class ListBoardAction extends ActionSupport{

	Board board;
	BoardService service;
	List list;
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
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	
	@Override
	public String execute() throws Exception {
		list = this.service.findAllBoard();
		return SUCCESS;
	}
	
}
