package com.cs.action.user;

import java.util.Map;

import com.cs.entity.Adminster;
import com.cs.entity.Student;
import com.cs.entity.Teacher;
import com.cs.service.user.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	UserService userService = new UserService();

	private String username;
	private String password;
	private int role;

	
	public String login() {
		 ActionContext actionContext = ActionContext.getContext();
	     Map session = actionContext.getSession();
	     
		System.out.println(username + "--" + password + "--" + role);
		if (role == 3) {// 管理员
			// 获取管理员对象
			Adminster admin = userService.isAdmin(username);
			if (admin != null) {
				if (password.equals(admin.getPassword())) {// 检验密码是否成功
					// 对象添加到session
					System.out.println("===============您========");
					session.put("user", admin);
					return "admin";
				}
			}
		} else if (role == 2) {// 老师
			Teacher teacher = userService.isTeach(Integer.parseInt(username));
			if (teacher != null) {
				if (password.equals(teacher.getPassword())) {// 检验密码是否成功
					session.put("user", teacher);
					
					if(teacher.getExaminer()==0){
						
						return "teach";
					}else{
						if("教学处".equals(teacher.getDepartment().getDepartmentName())){
							
							return "departAuditor";
						}
						return "auditor";
					}
				}
			}
		} else if (role == 1) {// 学生
			Student stu = userService.isStu(Integer.parseInt(username));
			if (stu != null) {
				if (password.equals(stu.getPassword())) {// 检验密码是否成功
					System.out.println("===============您stu========");
					session.put("user", stu);
					return "stu";
				}
			}
		}

		return "input";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

}
