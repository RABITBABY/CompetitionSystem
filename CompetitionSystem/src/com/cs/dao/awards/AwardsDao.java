package com.cs.dao.awards;

import java.util.List;

import com.cs.entity.Awards;
import com.cs.entity.Groups;
import com.cs.entity.Student;

public interface AwardsDao {

	/**
	 * 根据groupsNo查询获得的奖项
	 * 一个组只有一个奖项
	 * @return
	 */
	Awards findStudentAwardByGNo(Groups groups);
	
	List<Awards> allAwards();
	
	
	
}
