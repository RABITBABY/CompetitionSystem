package com.cs.action.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.UUID;

import org.apache.commons.io.IOUtils;

import com.cs.entity.Adminster;
import com.cs.entity.FileUpload;
import com.cs.service.admin.AdminService;
import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport {
		AdminService aService=new AdminService();
		// 上传文件需要的变量
		private File upload;// 文件
		private String uploadContentType;// 文件类型
		private String uploadFileName;// 文件名
		private int fileId;
		
		
		public String upload() throws Exception{
			
			// 下载到项目实际的加密名字
			String fn=uploadfile(upload);
			//上传时的文件名 uploadFileName
			System.out.println(fn+"--"+uploadFileName);
			//获取当前登录的管理员账号
			Adminster admin=new Adminster();
			admin.setAdminNo("12345");
			FileUpload file=new FileUpload();
			file.setFileName(uploadFileName);
			file.setSaveName(fn);
			file.setUploadDate(new Date());
			file.setUploadUser(admin);
			if(aService.uploadfile(file)>0){
				return SUCCESS;
			}
			return "input";
		}
//上传文件的真是文件名
		public String uploadfile(File upload) throws Exception {
			String s = UUID.randomUUID().toString();// 获取一个随机文件名
			String type = uploadFileName.substring(uploadFileName.lastIndexOf("."));// 获取图片类型
			String fn = s + type;// 上传的文件名
			// 图片上传的路径---项目的路径
			String savepath = "D:/repository/.git/CompetitionSystem/CompetitionSystem/WebRoot/file/" + fn;
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
			
		//删除文件
		public String deleteFile(){
			System.out.println(fileId+"文件的ID");
			aService.deleteFile(fileId);
			return SUCCESS;
		}
		
		//++++++++++++++getter  setter++++++++++++++++++

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

		public int getFileId() {
			return fileId;
		}

		public void setFileId(int fileId) {
			this.fileId = fileId;
		}
		
}
