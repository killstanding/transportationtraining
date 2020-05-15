package tech.wetech.excel;

import java.io.InputStream;
import java.util.List;

import org.slf4j.LoggerFactory;
import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.metadata.BaseRowModel;
import com.alibaba.excel.metadata.Sheet;

import tech.wetech.excel.util.ExcelFileUtil;

import org.slf4j.Logger;

public class ExcelReadUtil {
	
	private final static Logger logger = LoggerFactory.getLogger(ExcelReadUtil.class);
    /**
     * 读取excel数据
     * @return
     */
	@SuppressWarnings("finally")
	public static List<Object> readExcelData(String filePath,Class<? extends BaseRowModel> clazz) {
		InputStream inputStream = null;
		List<Object> data = null;
		try {
			inputStream = ExcelFileUtil.getResourcesFileInputStream(filePath);
			data = EasyExcelFactory.read(inputStream, new Sheet(1, 2,clazz));
			logger.info("获取数据"+data.size()+"条");
		}catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}finally {
			if(inputStream != null) {
				try {
					inputStream.close();
				}catch(Exception e) {
					e.printStackTrace();
					logger.error(e.getMessage());
				}
			}
			//print(data);
			return data;
		}
	}
	
	
	public static void print(List<Object> datas){
		int i = 0;
		for(Object ob: datas) {
			System.out.println(i++);
			System.out.println(ob);
		}
	}
}