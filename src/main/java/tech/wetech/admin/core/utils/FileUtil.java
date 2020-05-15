package tech.wetech.admin.core.utils;

import java.io.File;
import java.io.IOException;

public class FileUtil {
	
	// 判断文件是否存在
	public static void judeFileExists(File file) {

		if (file.exists()) {
			System.out.println("file exists");
			Logger.info(FileUtil.class,"file exists");
		} else {
			System.out.println("file not exists, create it ...");
			Logger.info(FileUtil.class,"file not exists, create it ...");
			try {
				file.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				Logger.error(FileUtil.class,e.getMessage());
				e.printStackTrace();
				
			}
		}

	}

	// 判断文件夹是否存在
	public static void judeDirExists(File file) {

		if (file.exists()) {
			if (file.isDirectory()) {
				System.out.println("dir exists");
				Logger.info(FileUtil.class,"dir exists");
			} else {
				System.out.println("the same name file exists, can not create dir");
				Logger.info(FileUtil.class,"the same name file exists, can not create dir");
			}
		} else {
			System.out.println("dir not exists, create it ...");
			Logger.info(FileUtil.class,"dir not exists, create it ...");
			file.mkdirs();
		}

	}
}
