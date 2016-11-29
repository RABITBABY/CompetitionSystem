package com.cs.action.student;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.jboss.weld.context.ApplicationContext;

import com.cs.entity.Awards;
import com.cs.entity.Competition;
import com.cs.entity.Groups;
import com.cs.entity.Project;
import com.cs.entity.Student;
import com.cs.service.student.StudentService;
import com.opensymphony.xwork2.ActionSupport;

public class StudentAction extends ActionSupport implements RequestAware,SessionAware{

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
		Integer comAccount=stuService.findSuccessGroupsAccount(student);
		request.put("comAccount",comAccount);
		return SUCCESS;
	}
	
	public String toCompManage(){		
		Student student=new Student();
		student.setStudentNo(1);
		//学生报名参加竞赛的详情
		List<Groups> groupsList=stuService.findStudentGroupsProj(student);
		request.put("groupsList", groupsList);
		
		return SUCCESS;
	}

	public String toInfo(){		
		Student student=new Student();
		student.setStudentNo(1);
		student.setPassword("123456");
		Student studentInfo=stuService.findStudentByNoAndPwd(student);
		request.put("studentInfo", studentInfo);
		return SUCCESS;
	}
	
	public String toMessage(){		

		return SUCCESS;
	}
	
	public String toAward(){	
		Student student=new Student();
		student.setStudentNo(1);
		//学生获奖详情
	    List<Awards> awards = stuService.findStudentAwards(student);
	    request.put("awards", awards);
		return SUCCESS;
	}
	
	public String toDownload(){		

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
