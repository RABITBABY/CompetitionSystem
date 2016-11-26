package com.cs.dao.student;

import java.util.List;

import com.cs.entity.GroupsDetail;
import com.cs.entity.Student;

public interface StudentDao {
    /**
     * 根据学号和密码查找学生
     * @return
     */
	Student findStudentByNo(Student student);
}
