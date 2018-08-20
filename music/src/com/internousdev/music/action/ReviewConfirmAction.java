package com.internousdev.music.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ReviewConfirmAction extends ActionSupport implements SessionAware{

	private String title;
	private String star;
	private String comments;
	public Map<String,Object> session;
	private String errorMessage;

	public String execute(){

		String result = SUCCESS;
		if(!(title.equals(""))
				&& !(star.equals(""))
				&& !(comments.equals(""))){
			session.put("title",title);
			session.put("star",star);
			session.put("comments",comments);
		}else{
			setErrorMessage("未入力の項目があります。");
			result = ERROR;
		}
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
	public String getErrorMessage(){
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage = errorMessage;
	}
}