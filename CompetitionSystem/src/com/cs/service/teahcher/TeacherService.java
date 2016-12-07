package com.cs.service.teahcher;

import java.util.List;

import com.cs.dao.competition.CompetitionDao;
import com.cs.dao.competition.CompetitionDaoImpl;
import com.cs.entity.Competition;

public class TeacherService {

	/**
	 * 根据教师id查找申报表
	 */
	private CompetitionDao cDao=new CompetitionDaoImpl();
	public List<Competition> findCompetitionsByTeachId(Integer teacherId) {
		List<Competition> comList = cDao.findCompetitionsByTeachId(teacherId);
		return comList;
	}
	
	/**
	 * 根据申报表id查找申报表
	 */
	public Competition findCompetitionsById(Integer comId) {
		Competition com = cDao.findCompetitionsById(comId);
		return com;
	}
	
}
