package com.league.service;

import java.util.List;

import com.league.bean.Board;
import com.league.dao.BoardDao;

public class BoardService {

	BoardDao boardDao;
	
	
	public BoardDao getBoardDao() {
		return boardDao;
	}

	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}

	public void saveBoard(Board board)
	{
		this.boardDao.saveBoard(board);
	}
	
	public void deleteBoard(Board board)
	{
		this.boardDao.deleteBoard(board);
	}
	
	public List findAllBoard()
	{
		return this.boardDao.FindAllBoard();
	}
	
	public Board findById(Integer id)
	{
		return this.boardDao.FindById(id);
	}
}
