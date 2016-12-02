package com.cs.dao.production;

import java.util.List;

import com.cs.entity.Production;

public interface ProductionDao {

	public int savePro(Production p);
	
	public void delect(int id);
	
	public List<Production> selectall();
	
	public  Production findById(int id);
	
	public void update(Production pro);
}
