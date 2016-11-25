package com.cs.action.student;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.jboss.weld.context.ApplicationContext;

import com.cs.entity.Awards;
import com.cs.entity.Competition;
import com.cs.entity.Student;
import com.cs.service.student.StudentService;
import com.opensymphony.xwork2.ActionSupport;

public class StudentManagement extends ActionSupport implements RequestAware,SessionAware{

	private Map<String, Object> request;
	
	private Map<String, Object> session;
	
	StudentService stuService=new StudentService();
	
	public String toIndex(){
			
		Student student=new Student();
		student.setStudentNo(1);
		//学生获奖次数
		List<Awards> awards = stuService.findStudentAwards(student);	
		request.put("awardsAccount", awards.size());
		//学生参加竞赛次数
		List<Competition> competitions=stuService.findStudentCompetition(student);
		request.put("comAccount", competitions.size());
		return SUCCESS;
	}
	
	public String toCompManage(){		
		Student student=new Student();
		student.setStudentNo(1);
		//学生参加竞赛次数
		List<Competition> competitions=stuService.findStudentCompetition(student);
		request.put("comAccount", competitions);
		return SUCCESS;
	}



	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}
	
	
}
