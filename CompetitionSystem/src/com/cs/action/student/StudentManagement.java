package com.cs.action.student;

import java.io.InputStream;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.jboss.weld.context.ApplicationContext;

import com.opensymphony.xwork2.ActionSupport;

public class StudentManagement extends ActionSupport implements RequestAware{

	private Map<String, Object> request;
	private String page;
	
	public String toIndex(){
		return SUCCESS;
	}
	public String toComManager(){
		page="studentComManage.jsp";
		return SUCCESS;
	}


	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
	
	public String getPage() {
		return page;
	}
	
	public void setPage(String page) {
		this.page = page;
	}
}
