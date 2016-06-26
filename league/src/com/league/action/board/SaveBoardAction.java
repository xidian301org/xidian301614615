package com.league.action.board;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.league.bean.Board;
import com.league.service.BoardService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SaveBoardAction extends ActionSupport {

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

	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {

		Integer authority = (Integer) ActionContext.getContext().getSession()
				.get("authority");
		if (authority >= 3) {
			if(board.getContext().trim().equals("") || board.getContext().equals(""))
			{
				
				ActionContext.getContext().getSession().put("boardmessage", "���Բ���Ϊ��");
				return INPUT;
			}
			message = "";
			board.setDaytime(GetNowDate());
			this.service.saveBoard(board);

			return SUCCESS;
		} else {
			message = "δ��¼���˻�δͨ�����ʱ����ִ�иò�����";
			return ERROR;
		}
	}
//	@Override
//	public void validate() {
//		if(board.getContext().trim().equals("") || board.getContext().equals(""))
//		{
//			addAreaError("board.context", "���Բ���Ϊ��");
//			addActionError(anErrorMessage)
//		}
//	}


	public String GetNowDate(){
	    String temp_str="";
	    Date dt = new Date();
	    //����aa��ʾ�����硱�����硱    HH��ʾ24Сʱ��    �������hh��ʾ12Сʱ��
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aa");
	    temp_str=sdf.format(dt);
	    return temp_str;
	}

}
