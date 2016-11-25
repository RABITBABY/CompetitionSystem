package com.cs.dao.competition;

import java.util.List;

import com.cs.entity.Competition;
import com.cs.entity.Groups;

public interface CompetitionDao {

	/**
	 * 根据Groups中的comId查找学生所参加的所有比赛
	 * @return
	 */
	Competition findComByGNo(Groups groups);
}
