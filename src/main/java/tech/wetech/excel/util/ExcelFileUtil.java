package tech.wetech.excel.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class ExcelFileUtil {

    public static InputStream getResourcesFileInputStreamTest(String fileName) {
        return Thread.currentThread().getContextClassLoader().getResourceAsStream("resource/" + fileName);
    }
    
    public static InputStream getResourcesFileInputStream(String fileName) throws FileNotFoundException {
    	BufferedInputStream in = new BufferedInputStream( new FileInputStream(fileName));
        return in;
    }
}
