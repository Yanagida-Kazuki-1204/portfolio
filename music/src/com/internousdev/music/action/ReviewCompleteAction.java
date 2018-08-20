package com.internousdev.music.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.music.dao.ReviewCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ReviewCompleteAction extends ActionSupport implements SessionAware{

	private String title;
	private String star;
	private String comments;
	public Map<String,Object> session;
	private ReviewCompleteDAO reviewCompleteDAO = new ReviewCompleteDAO();

	public String execute() throws SQLException {
		reviewCompleteDAO.review(session.get("title").toString(),
				session.get("star").toString(),
				session.get("comments").toString());

		String result = SUCCESS;

		return result;
	}

	public String getTitle(){
		return title;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public String getStar(){
		return star;
	}
	public void setStar(String star){
		this.star = star;
	}
	public String getComments(){
		return comments;
	}
	public void setComments(String comments){
		this.comments = comments;
	}
	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
}