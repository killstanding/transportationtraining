package tech.wetech.admin.modules.system.common;


public class CommonVariable {
	//默认角色编号
	public static final int TRAINING_ROOM_ADMIN_ROLE_ID = 7;//实训室管理员角色编号
	
	public static final int DEVICE_ADMIN_ROLE_ID = 8;//设备管理员角色编号
	
	public static final int CONSUMABLES_ADMIN_ROLE_ID = 11;//耗材管理员角色编号
	
	public static final int TOOL_ADMIN_ROLE_ID = 12;//工具管理员角色编号
	
	public static final int COURSES_ADMIN_ROLE_ID = 13;//课程管理员角色编号
	
	public static final int TEACHER_ROLE_ID = 9;//教师角色编号
	
	public static final int DIRECTOR_ROLE_ID = 10;//主任角色编号
	
	//编号前缀
	public static final String NUMBER_PREFIX_DEVICE = "DEV";//设备编号前缀
	
	public static final String NUMBER_PREFIX_TRAINING_ROOM = "TRA";//实训室编号前缀
	
	public static final String NUMBER_PREFIX_CONSUMABLES = "CON";//耗材编号前缀
	
	public static final String NUMBER_PREFIX_TOOLS = "T";//工具编号前缀
	
	public static final String NUMBER_PREFIX_INSPECTION_RECORD = "IR";//巡检记录编号前缀
	
	public static final String NUMBER_PREFIX_MAINTENANCE_RECORD = "MR";//维修申请单编号前缀
	
	public static final String NUMBER_PREFIX_COLLECTION_RECORD = "CR";//领用单编号前缀
	
	public static String getNumberPrefix(String numberPrefix,String dateStr,int id){
		StringBuilder sb = new StringBuilder();
		sb.append(numberPrefix).append(dateStr).append(id);
		return sb.toString();
	}
	
}

