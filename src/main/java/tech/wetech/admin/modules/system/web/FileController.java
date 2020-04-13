package tech.wetech.admin.modules.system.web;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import javax.annotation.Resource;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import tech.wetech.admin.core.common.ConfigProperties;
import tech.wetech.admin.core.common.FileConstant;
import tech.wetech.admin.core.utils.DateUtil;
import tech.wetech.admin.core.utils.FileUtil;
import tech.wetech.admin.core.utils.Logger;
import tech.wetech.admin.core.utils.Result;
import tech.wetech.admin.core.utils.UUIDUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@CrossOrigin
@Api(value = "file", tags = {"file"}, description = "文件上传")
@RestController
@RequestMapping(value = "/api/file",
consumes = MediaType.MULTIPART_FORM_DATA_VALUE,
produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
public class FileController {
	
	@Resource
	private ConfigProperties configProperties;
	
	@ApiOperation(value = "上传", notes = "上传")
	@RequestMapping(value = "/upload/{version:.+}", method = RequestMethod.POST, consumes="multipart/*", headers = "content-type=multipart/form-data")
	public Result<String> upload(
			//@ApiParam(name="file",value="上传的文件", required=true) FileEntity fileEntity,
            @ApiParam(name = "file",value = "上传的文件", required = true) MultipartFile file,
			@ApiParam(name="version",value="版本号", required=true, defaultValue ="v1.0.0" )@PathVariable("version") String version){
		String filePath = "";
		if(!file.isEmpty()){  
//			String rootPath = configProperties.getExcelPath();
			String rootPath = configProperties.getFilePath();
			String foldPath = rootPath + "/" + FileConstant.FILE_FOLD_BASE;//根目录文件夹
			FileUtil.judeDirExists(new File(foldPath));//判断根目录文件夹是否存在
			Date date = new Date();//同步时间
			String curDate = DateUtil.dateToStr(date, DateUtil.DATE_FORMATE_SIMPLE);
			String parFoldPath = foldPath  + "/" + curDate;//用户文件夹
			FileUtil.judeDirExists(new File(parFoldPath));//判断用户文件夹是否存在
			
			//生成uuid作为文件名称  
			String uuid = UUIDUtils.getUUID();  
			//获得文件类型（可以判断如果不是图片，禁止上传）  
			//String fileType= fileEntity.getFile().getContentType();  
			String orFileName =file.getOriginalFilename();
			//获得文件后缀名 
			//String suffixName=fileType.substring(fileType.indexOf("/")+1);
			String suffixName=orFileName.substring(orFileName.indexOf(".")+1);
			//得到 文件名
			String fileName = uuid+"."+suffixName; 
			//文件保存路径
			try {
				
				filePath = parFoldPath+"/"+fileName;
				file.transferTo(new File(filePath));
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				Logger.error(FileController.class,e.getMessage());
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				Logger.error(FileController.class,e.getMessage());
				e.printStackTrace();
			}// try catch  
			
		}//if dto.getFile()
		return Result.success(filePath);
	}
}
