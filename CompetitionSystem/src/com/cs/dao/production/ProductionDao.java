package com.cs.dao.production;

import java.util.List;

import com.cs.entity.Production;

public interface ProductionDao {

	public int savePro(Production p);//保存
	
	public void delect(int id);//删除
	
	public List<Production> selectall();//所有
	
	public  Production findById(int id);//根据Id找
	
	public void update(Production pro);//更新
	
	public List<Production> recProduction(int acount);
}
