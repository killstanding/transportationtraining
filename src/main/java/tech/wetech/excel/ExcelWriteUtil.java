package tech.wetech.excel;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.metadata.BaseRowModel;
import com.alibaba.excel.metadata.Font;
import com.alibaba.excel.metadata.Sheet;
import com.alibaba.excel.metadata.TableStyle;
import com.alibaba.excel.support.ExcelTypeEnum;

public class ExcelWriteUtil {
	
	private final static Logger logger = LoggerFactory.getLogger(ExcelReadUtil.class);
	
	/**
	 * 数据写入excel
	 */
	public static<T extends BaseRowModel>  String writeData(String path,List<T> data,Class<? extends BaseRowModel> clazz,String title) {
		OutputStream out = null;
		ExcelWriter writer = null;
		String fileName = new Date().getTime()+".xls";
		String filePath = path+"/"+fileName;
		try {
			
			out = new FileOutputStream(filePath);
			writer = EasyExcelFactory.getWriter(out, ExcelTypeEnum.XLS,true);
			
			//sheet1,
		    Sheet sheet1 = new Sheet(1, 2, clazz, title, null);
		    sheet1.setTableStyle(createTableStyle());
	        writer.write(data, sheet1);
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			logger.error(e.getMessage());
			e.printStackTrace();
		}finally {
			if(writer!=null) writer.finish();
			try {
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				logger.error(e.getMessage());
				e.printStackTrace();
			}//try catch
		}//finally
		return fileName;
	}
	
	
	public static TableStyle createTableStyle() {
        TableStyle tableStyle = new TableStyle();
        Font headFont = new Font();
        headFont.setBold(true);
        headFont.setFontHeightInPoints((short)14);
        headFont.setFontName("宋体");
        tableStyle.setTableHeadFont(headFont);
        tableStyle.setTableHeadBackGroundColor(IndexedColors.YELLOW);

        Font contentFont = new Font();
        //contentFont.setBold(true);
        contentFont.setFontHeightInPoints((short)14);
        contentFont.setFontName("宋体");
        tableStyle.setTableContentFont(contentFont);
        tableStyle.setTableContentBackGroundColor(IndexedColors.WHITE);
        return tableStyle;
    }
}
