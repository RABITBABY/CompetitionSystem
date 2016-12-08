package com.cs.service.user;

import com.cs.dao.administer.AdminsterDaoImpl;
import com.cs.dao.student.StudentDaoImpl;
import com.cs.dao.teacher.TeacherDaoImpl;
import com.cs.entity.Adminster;
import com.cs.entity.Student;
import com.cs.entity.Teacher;

public class UserService {
	//学生
	StudentDaoImpl stuImpl=new StudentDaoImpl();
	//老师
	TeacherDaoImpl teachImpl=new TeacherDaoImpl();
	//管理员
	AdminsterDaoImpl adminImpl=new AdminsterDaoImpl();
	
	public Student isStu(int id){
		return stuImpl.findStudentByNo(id);
	}
	
	public Teacher isTeach(int id){
		return teachImpl.findTeachByNo(id);
	}
	
	public Adminster isAdmin(String no){
		return adminImpl.findAdminById(no);
	}
	
}
