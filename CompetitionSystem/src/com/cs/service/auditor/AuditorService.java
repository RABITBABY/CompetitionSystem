package com.cs.service.auditor;

import java.util.ArrayList;
import java.util.List;

import com.cs.dao.competition.CompetitionDao;
import com.cs.dao.competition.CompetitionDaoImpl;
import com.cs.entity.Competition;

public class AuditorService {
	private CompetitionDao comDao=new CompetitionDaoImpl();
	/**
	 * 根据系部id查找申报表：未审批
	 * @param deptId
	 * @return
	 */
	public List<Competition> getCompetitionsByDeptId(Integer deptId) {
		List<Competition> comList = comDao.findCompetitionsByDeptId(deptId);
		List<Competition> lists=new ArrayList<Competition>();
		for (Competition com:comList) {
			if (com.getStatus()==0||com.getStatus()==1) {
				lists.add(com);
			}
		}
		return lists;
	}
	
	/**
	 * 根据系部id查找申报表：已经过系部主人审批
	 * @param deptId
	 * @return
	 */
	public List<Competition> getAuditorCompetitionsByDeptId(Integer deptId) {
		List<Competition> comList = comDao.findCompetitionsByDeptId(deptId);
		List<Competition> lists=new ArrayList<Competition>();
		for (Competition com:comList) {
			if (com.getStatus()==1) {
				lists.add(com);
			}
		}
		return lists;
	}
	
	/**
	 * 查找某个系已经申报成功的申报表
	 * @param deptId
	 * @return
	 */
	public List<Competition> getPassCompetitionsByDeptId(Integer deptId) {
		List<Competition> comList = comDao.findCompetitionsByDeptId(deptId);
		List<Competition> lists=new ArrayList<Competition>();
		for (Competition com:comList) {
			if (com.getStatus()==2) {
				lists.add(com);
			}
		}
		return lists;
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
	
	/**
	 * 审批申报表
	 */
	public Boolean doAudit(Competition competition) {
		Boolean result = comDao.updateCompetitionsById(competition);
		return result;
	}
	
}
