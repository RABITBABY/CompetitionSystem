package com.cs.dao.fileUpload;

import java.util.List;

import com.cs.entity.FileUpload;


public interface FileUploadDao {

	public List<FileUpload> allFile();
	public int uploadFile(FileUpload file);
	public void deletcFile(int fileid);
	
}
