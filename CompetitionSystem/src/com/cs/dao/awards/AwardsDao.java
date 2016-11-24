package com.cs.dao.awards;

import java.util.List;

import com.cs.entity.Awards;
import com.cs.entity.Student;

public interface AwardsDao {

	/**
	 * 查询某个学生的获奖信息
	 * @return
	 */
	List<Awards> findStudentAward(Student student);
}
