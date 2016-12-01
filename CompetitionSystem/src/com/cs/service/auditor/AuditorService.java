package com.cs.service.auditor;

import java.util.List;

import com.cs.dao.competition.CompetitionDao;
import com.cs.dao.competition.CompetitionDaoImpl;
import com.cs.entity.Competition;

public class AuditorService {
	private CompetitionDao comDao=new CompetitionDaoImpl();
	/**
	 * 根据系部id查找申报表
	 * @param deptId
	 * @return
	 */
	public List<Competition> getCompetitionsByDeptId(Integer deptId) {
		List<Competition> comList = comDao.findCompetitionsByDeptId(deptId);
		return comList;
	}
	/**
	 * 查找某个系已经申报成功的申报表
	 * @param deptId
	 * @return
	 */
	public List<Competition> getPassCompetitionsByDeptId(Integer deptId) {
		List<Competition> comList = comDao.findPassCompetitionsByDeptId(deptId);
		return comList;
	}
	
	/**
	 * 根据id查找申报表
	 * @param deptId
	 * @return
	 */
	public Competition getCompetitionsById(Integer comId) {
		Competition com = comDao.findCompetitionsById(comId);
		return com;
	}
}
