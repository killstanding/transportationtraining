package tech.wetech.admin.modules.system.web;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tech.wetech.admin.core.common.ConfigProperties;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.core.utils.ResultCodeEnum;
import tech.wetech.admin.modules.training.vo.FileVo;

@CrossOrigin
@Api(value = "download", tags = {"download"}, description = "文件下载")
@Controller
@RequestMapping(value = "/download")
public class DownloadController {
	
	@Resource
	private ConfigProperties configProperties;
	
	/**
     * 下载
     * @return
     */
	@ApiOperation(value = "下载", notes = "下载")
	@GetMapping("/download")
    @ResponseBody
    public Result<String> download(HttpServletResponse response,String filename) throws UnsupportedEncodingException
    {
//        LocalDate end = LocalDate.now();  
//        LocalDate start = end.minusDays(14);
//        String filename = "稿源抓取周报-" + end.format(DateTimeFormatter.ISO_DATE) + ".xlsx";
		//String filename = fileVo.getPath();
        String filepath = configProperties.getExcelPath() +"/"+ filename;
        // 如果文件名不为空，则进行下载
        if (filename != null) {
            File file = new File(filepath);
            // 如果文件存在，则进行下载
            if (file.exists()) {
                // 配置文件下载
                response.setHeader("content-type", "application/octet-stream");
                response.setContentType("application/octet-stream");
                // 下载文件能正常显示中文
                response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(filename, "UTF-8"));
                // 实现文件下载
                byte[] buffer = new byte[1024];
                FileInputStream fis = null;
                BufferedInputStream bis = null;
                try {
                    fis = new FileInputStream(file);
                    bis = new BufferedInputStream(fis);
                    OutputStream os = response.getOutputStream();
                    int i = bis.read(buffer);
                    while (i != -1) {
                        os.write(buffer, 0, i);
                        i = bis.read(buffer);
                    }
                    System.out.println("Download  successfully!");
                    return Result.success();
 
                } catch (Exception e) {
                	e.printStackTrace();
                    System.out.println("Download  failed!");
                    return Result.failure(ResultCodeEnum.INTERNAL_SERVER_ERROR);
 
                } finally {
                    if (bis != null) {
                        try {
                            bis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        return Result.failure(ResultCodeEnum.BAD_REQUEST);
    }
}
