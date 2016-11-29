package com.cs.dao.competition;

import java.util.List;

import com.cs.entity.Competition;
import com.cs.entity.Groups;

public interface CompetitionDao {

    /**
     * 根据系id找到竞赛审批表
     * @param deptId
     * @return
     */
	List<Competition> findCompetitionsByDeptId(Integer deptId);
}
