package com.cs.dao.groupsDetail;

import java.util.List;

import com.cs.entity.GroupsDetail;
import com.cs.entity.Student;

public interface GroupsDetailDao {

	/**
	 * 根据studentId查询所在组别
	 * @return
	 */
	List<GroupsDetail> findGroupsDetailsBySNo(Student student);

	List<GroupsDetail> findGroupsDetailByGNo(int GroupsId);
}
