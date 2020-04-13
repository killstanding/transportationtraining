package tech.wetech.admin.core.common;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.Data;

@RestController
@Data
@Configuration
@PropertySource("classpath:app_env.properties")
@RequestMapping("/config")
public class ConfigProperties {
	
	@Value("${customer.app.version}")
	private String version;
	
	@Value("${customer.app.active.time}")
	private String time;
	
	@Value("${excel.path}")
	private String excelPath;
	
	@Value("${file.path}")
	private String filePath;
	
//	@RequestMapping("/show")
	public String show(){
		return toString();
	}

	@Override
	public String toString() {
		return "ConfigProperties [version=" + version + ", time=" + time + ", excelPath=" + excelPath + ", filePath="
				+ filePath + "]";
	}
}
