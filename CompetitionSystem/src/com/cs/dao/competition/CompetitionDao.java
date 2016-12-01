package com.cs.dao.competition;

import java.util.List;

import com.cs.entity.Competition;
import com.cs.entity.Groups;

public interface CompetitionDao {

    /**
     * 根据系id找到竞赛审批表未审批的申报表
     * @param deptId
     * @return
     */
	List<Competition> findCompetitionsByDeptId(Integer deptId);
	
	 /**
     * 根据系id找到已申报通过的竞赛审批表
     * @param deptId
     * @return
     */
	List<Competition> findPassCompetitionsByDeptId(Integer deptId);
	
	/**
     * 根据申报表id查找申报表
     * @param deptId
     * @return
     */
	Competition findCompetitionsById(Integer comId);
}
