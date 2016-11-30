package com.cs.action.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.UUID;

import org.apache.commons.io.IOUtils;

import com.cs.entity.Production;
import com.cs.service.admin.AdminService;
import com.opensymphony.xwork2.ActionSupport;

public class ProductionAction extends ActionSupport {

//	private ProductionService proService = new ProductionService();
	private AdminService adminService =new AdminService();
	// 上传文件需要的变量
	private File upload;// 文件
	private String uploadContentType;// 文件类型
	private String uploadFileName;// 文件名

	// 添加需要的变量
	private Production pro;


	// 删除的proId
	private int proID;


/**
 * 修改前ajax
 * @return
 */
	public String beforeEdit() {
		//后台获取数据
		pro=adminService.findProById(proID);
		
		return SUCCESS;
	}
	/**
	 * 修改的ajax
	 * @return
	 * @throws Exception 
	 */
	public String proEdit() throws Exception{
		
		//获取图片，上传的名字
		System.out.println("这里没修改之前---------\n"+pro);
		if(upload!=null){
			System.out.println("有文件");
			pro.setPic(uploadPic(upload));
		}
		//对象获取数据
		System.out.println("这里---------\n"+pro);
		//整理修改后的数据
		adminService.updatePro(pro);
		//对数据对象进行修改
		return SUCCESS;
	}
	/**
	 * 文件上传
	 */
	public String uploadPic(File upload) throws Exception {
		String s = UUID.randomUUID().toString();// 获取一个随机文件名
		String type = uploadFileName.substring(uploadFileName.lastIndexOf("."));// 获取图片类型
		String fn = s + type;// 上传的文件名
		// 图片上传的路径---项目的路径
		String savepath = "D:/repository/.git/CompetitionSystem/CompetitionSystem/WebRoot/img/production/" + fn;
		// String
		// savepath=ServletActionContext.getServletContext().getResourceAsStream("img/").toString()+fn;
		FileInputStream fis = new FileInputStream(upload);// 输入流
		FileOutputStream fos = new FileOutputStream(savepath);// 输出流
		IOUtils.copy(fis, fos);
		
		fos.flush();
		fos.close();
		fis.close();
		return fn;
		
	}
	
	
	/**
	 * 上传作品
	 * @throws Exception 
	 */
	public String savePro() throws Exception {
		// 获取上传文件的文件名
		String fn=uploadPic(upload);
		// 根据拿到的文件名、对象信息保存到数据库
		System.out.println(pro);
		pro.setPic(fn);
		if (adminService.savePro(pro) > 0) {
			return SUCCESS;
		}
		return "input";
	}

	/**
	 * 删除作品
	 * @return
	 */
	public String delPro() {
		// proServiceproID
		System.out.println(proID + "fdfgd");
		adminService.delectPro(proID);

		return SUCCESS;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public Production getPro() {
		return pro;
	}
	public void setPro(Production pro) {
		this.pro = pro;
	}
	public int getProID() {
		return proID;
	}
	public void setProID(int proID) {
		this.proID = proID;
	}

}
