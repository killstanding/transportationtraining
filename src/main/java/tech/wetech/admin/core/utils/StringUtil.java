package tech.wetech.admin.core.utils;

public class StringUtil {
  
	public static int strToInt(String str){
		if(str==null||str.equals("")) return 0;
		return Integer.parseInt(str);
	}
}
