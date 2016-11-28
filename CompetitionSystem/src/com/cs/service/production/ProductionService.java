package com.cs.service.production;

import java.util.List;

import com.cs.dao.production.ProductionDaoImpl;
import com.cs.entity.Production;

public class ProductionService {
	private ProductionDaoImpl impl = new ProductionDaoImpl();

	public int savePro(Production p) {
		return impl.savePro(p);
	}
	
	public List<Production> selectAll(){
		return impl.selectall();
	}
	
	public void delectPro(int id){
		impl.delect(id);
	}
	public Production findById(int id) {
		return impl.findById(id);
	}
	
	public void update(Production pro){
		impl.update(pro);
	}
}
