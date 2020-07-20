package tech.wetech.admin.core.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * 日期工具
 *
 * @author zhaohuihua
 * @version V1.0 2015年10月23日
 */
public class DateUtil {

	/**
	 * 月份数字list
	 */
	public static List<Integer> MONTH_LIST = new ArrayList<Integer>(); 
	public static List<String> MONTH_LIST_STR = new ArrayList<String>(); 
	static{
		for (int i = 1; i <= 12; i++) {
			MONTH_LIST.add(i);
			String str = i+"";
			if(str.length()==1){
				str = "0" + i;
			}
			MONTH_LIST_STR.add(str);
		}
	}


	/** 一秒有多少毫秒 **/
	public static final long RATE_SECOND = 1000;
	/** 一分钟有多少毫秒 **/
	public static final long RATE_MINUTE = 60 * RATE_SECOND;
	/** 一小时有多少毫秒 **/
	public static final long RATE_HOUR = 60 * RATE_MINUTE;
	/** 一天有多少毫秒 **/
	public static final long RATE_DAY = 24 * RATE_HOUR;

	public static Date addYear(Date date, int year) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.YEAR, year);
		return calendar.getTime();
	}

	public static Date addMonth(Date date, int month) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.MONTH, month);
		return calendar.getTime();
	}

	public static Date addDay(Date date, int day) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DAY_OF_MONTH, day);
		return calendar.getTime();
	}

	public static Date addMinute(Date date, int minute) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.MINUTE, minute);
		return calendar.getTime();
	}

	public static Date addSecond(Date date, int second) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.SECOND, second);
		return calendar.getTime();
	}

	public static Date addMillisecond(Date date, int millisecond) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.MILLISECOND, millisecond);
		return calendar.getTime();
	}

	public static Date setYear(Date date, int year) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.YEAR, year);
		return calendar.getTime();
	}

	public static Date setMonth(Date date, int month) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.MONTH, month);
		return calendar.getTime();
	}

	public static Date setDay(Date date, int day) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.DAY_OF_MONTH, day);
		return calendar.getTime();
	}

	public static Date setMinute(Date date, int minute) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.MINUTE, minute);
		return calendar.getTime();
	}

	public static Date setSecond(Date date, int second) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.SECOND, second);
		return calendar.getTime();
	}

	public static Date setMillisecond(Date date, int millisecond) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.MILLISECOND, millisecond);
		return calendar.getTime();
	}

	/**
	 * 转换为标准的字符串, 如 2012-08-08 20:00:00.000
	 *
	 * @param date 待处理的日期
	 * @return 日期字符串
	 */
	public static String toNormativeString(Date date) {
		if (date == null) {
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		return sdf.format(date);
	}

	/**
	 * 转换为日期字符串, 如 2012-08-08
	 *
	 * @param date 待处理的日期
	 * @return 日期字符串
	 */
	public static String toDateString(Date date) {
		if (date == null) {
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}

	/**
	 * 转换为时间字符串, 如 20:00:00.000
	 *
	 * @param date 待处理的日期
	 * @return 时间字符串
	 */
	public static String toTimeString(Date date) {
		if (date == null) {
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
		return sdf.format(date);
	}

	/**
	 * 转换为日期加时间字符串, 如 2012-08-08 20:00:00
	 *
	 * @param date 待处理的日期
	 * @return 日期字符串
	 */
	public static String toDateTimeString(Date date) {
		if (date == null) {
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}

	/**
	 * 转换为第1时间<br>
	 * Calendar.YEAR=当年第1时间, Calendar.MONTH=当月第1时间, Calendar.DAY_OF_MONTH=当日第1时间, ...<br>
	 * 如 toFirstTime(2016-08-08 20:30:40.500, Calendar.YEAR) --- 2016-01-01 00:00:00.000<br>
	 * 如 toFirstTime(2016-08-08 20:30:40.500, Calendar.MONTH) --- 2016-08-01 00:00:00.000<br>
	 * 如 toFirstTime(2016-08-08 20:30:40.500, Calendar.DAY_OF_MONTH) --- 2016-08-08 00:00:00.000<br>
	 * 如 toFirstTime(2016-08-08 20:30:40.500, Calendar.HOUR_OF_DAY) --- 2016-08-08 20:00:00.000<br>
	 * 如 toFirstTime(2016-08-08 20:30:40.500, Calendar.MINUTE) --- 2016-08-08 20:30:00.000<br>
	 * 如 toFirstTime(2016-08-08 20:30:40.500, Calendar.SECOND) --- 2016-08-08 20:30:40.000<br>
	 *
	 * @param date 待处理的日期
	 * @param field 类型
	 * @return 第1时间
	 */
	public static Date toFirstTime(Date date, int field) {
		if (date == null) {
			return null;
		}
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		switch (field) {
		case Calendar.YEAR:
			calendar.set(Calendar.MONTH, Calendar.JANUARY);
		case Calendar.MONTH:
			calendar.set(Calendar.DAY_OF_MONTH, 1);
		case Calendar.DAY_OF_MONTH:
			calendar.set(Calendar.HOUR_OF_DAY, 0);
		case Calendar.HOUR_OF_DAY:
			calendar.set(Calendar.MINUTE, 0);
		case Calendar.MINUTE:
			calendar.set(Calendar.SECOND, 0);
		case Calendar.SECOND:
			calendar.set(Calendar.MILLISECOND, 0);
		}
		return calendar.getTime();
	}

	/**
	 * 转换为最后时间<br>
	 * Calendar.YEAR=当年最后时间, Calendar.MONTH=当月最后时间, Calendar.DAY_OF_MONTH=当日最后时间, ...<br>
	 * 如 toLastTime(2016-08-08 20:30:40.500, Calendar.YEAR) --- 2016-12-31 23:59:59.999<br>
	 * 如 toLastTime(2016-08-08 20:30:40.500, Calendar.MONTH) --- 2016-08-31 23:59:59.999<br>
	 * 如 toLastTime(2016-08-08 20:30:40.500, Calendar.DAY_OF_MONTH) --- 2016-08-08 23:59:59.999<br>
	 * 如 toLastTime(2016-08-08 20:30:40.500, Calendar.HOUR_OF_DAY) --- 2016-08-08 20:59:59.999<br>
	 * 如 toLastTime(2016-08-08 20:30:40.500, Calendar.MINUTE) --- 2016-08-08 20:30:59.999<br>
	 * 如 toLastTime(2016-08-08 20:30:40.500, Calendar.SECOND) --- 2016-08-08 20:30:40.999<br>
	 *
	 * @param date 待处理的日期
	 * @param field 类型
	 * @return 最后时间
	 */
	public static Date toLastTime(Date date, int field) {
		if (date == null) {
			return null;
		}
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		switch (field) {
		case Calendar.YEAR:
			calendar.set(Calendar.MONTH, Calendar.DECEMBER);
		case Calendar.MONTH:
			// 下月1日的前一天
			calendar.add(Calendar.MONTH, 1);
			calendar.set(Calendar.DAY_OF_MONTH, 1);
			calendar.add(Calendar.DAY_OF_MONTH, -1);
		case Calendar.DAY_OF_MONTH:
			calendar.set(Calendar.HOUR_OF_DAY, 23);
		case Calendar.HOUR_OF_DAY:
			calendar.set(Calendar.MINUTE, 59);
		case Calendar.MINUTE:
			calendar.set(Calendar.SECOND, 59);
		case Calendar.SECOND:
			calendar.set(Calendar.MILLISECOND, 999);
		}
		return calendar.getTime();
	}

	/**
	 * 转换为结束时间, 即设置时分秒为00:00:00
	 *
	 * @param date 待处理的日期
	 * @return 结束时间
	 */
	public static Date toStartTime(Date date) {
		if (date == null) {
			return null;
		}
		return toFirstTime(date, Calendar.DAY_OF_MONTH);
	}

	/**
	 * 转换为结束时间, 即设置时分秒为23:59:59
	 *
	 * @param date 待处理的日期
	 * @return 结束时间
	 */
	public static Date toEndTime(Date date) {
		if (date == null) {
			return null;
		}
		return toLastTime(date, Calendar.DAY_OF_MONTH);
	}

	/**
	 * 获取当天的毫秒数
	 *
	 * @param date
	 * @return
	 */
	public static long getMillisOfDay(Date date) {
		Date start = toStartTime(date);
		return date.getTime() - start.getTime();
	}



	public static final String MONTH_FORMATE = "yyyy-MM";
	public static final String MONTH_FORMATE_WITHOUT_YEAR = "MM";
	public static final String MONTH_FORMATE_SIMPLE = "yyyyMM";
	public static final String DATE_FORMATE = "yyyy-MM-dd";
	public static final String DATE_FORMATE_WITHOUT_YEAR = "MM-dd";
	public static final String DATE_FORMATE_SIMPLE = "yyyyMMdd";
	public static final String YEAR_FORMATE = "yyyy";
	public static final String TIME_FORMATE = "yyyy-MM-dd HH:mm:ss";
	public static final String MINUTE_FORMATE = "HH:mm";
	public static final String HOUR_FORMATE = "HH";
	public static final String[] weekDays = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" }; 

	/**
	 * 字符串转换成时间
	 * @param date
	 * @param format
	 * @return
	 */
	public static Date strToDate(String date, String format) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		try {
			return sdf.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 日期类型转换成指定格式的字符串
	 * @param date
	 * @param format
	 * @return
	 */
	public static String dateToStr(Date date, String format) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}

	/**
	 * 获取去年的现在的时间
	 * @param d
	 * @return
	 */
	public static Date getLastYear(Date d){
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		c.add(Calendar.YEAR, -1);
		Date y = c.getTime();
		return y;
	}
	public static String getWeek(Date today) {
		String week = "";
		Calendar c = Calendar.getInstance();
		c.setTime(today);
		int weekday = c.get(Calendar.DAY_OF_WEEK);
		if (weekday == 1) {
			week = "周日";
		} else if (weekday == 2) {
			week = "周一";
		} else if (weekday == 3) {
			week = "周二";
		} else if (weekday == 4) {
			week = "周三";
		} else if (weekday == 5) {
			week = "周四";
		} else if (weekday == 6) {
			week = "周五";
		} else if (weekday == 7) {
			week = "周六";
		}
		return week;
	}

	/**
	 * 获取上周周几的日期,默认一周从周一开始
	 * 
	 * @param dayOfWeek
	 * @param weekOffset
	 * @return
	 */
	public static Date getDayOfWeek(int dayOfWeek, int weekOffset) {
		return getDayOfWeek(Calendar.MONDAY, dayOfWeek, weekOffset);
	}

	/**
	 * 获取上(下)周周几的日期
	 * 
	 * @param firstDayOfWeek {@link Calendar} 值范围 <code>SUNDAY</code>,
	 *                       <code>MONDAY</code>, <code>TUESDAY</code>,
	 *                       <code>WEDNESDAY</code>, <code>THURSDAY</code>,
	 *                       <code>FRIDAY</code>, and <code>SATURDAY</code>
	 * @param dayOfWeek      {@link Calendar}
	 * @param weekOffset     周偏移，上周为-1，本周为0，下周为1，以此类推
	 * @return
	 */
	public static Date getDayOfWeek(int firstDayOfWeek, int dayOfWeek, int weekOffset) {
		if (dayOfWeek > Calendar.SATURDAY || dayOfWeek < Calendar.SUNDAY) {
			return null;
		}
		if (firstDayOfWeek > Calendar.SATURDAY || firstDayOfWeek < Calendar.SUNDAY) {
			return null;
		}
		Calendar date = Calendar.getInstance(Locale.CHINA);
		date.setFirstDayOfWeek(firstDayOfWeek);
		// 周数减一，即上周
		date.add(Calendar.WEEK_OF_MONTH, weekOffset);
		// 日子设为周几
		date.set(Calendar.DAY_OF_WEEK, dayOfWeek);
		// 时分秒全部置0
		date.set(Calendar.HOUR_OF_DAY, 0);
		date.set(Calendar.MINUTE, 0);
		date.set(Calendar.SECOND, 0);
		date.set(Calendar.MILLISECOND, 0);
		return date.getTime();
	}

	public static void main(String[] args) {
		String lastyear = DateUtil.dateToStr(getLastYear(new Date()), DateUtil.TIME_FORMATE);
		System.out.println("lastyear =" + lastyear);
		System.out.println(DateUtil.MONTH_LIST);
		System.out.println(dateToStr(getDayOfWeek(Calendar.MONDAY, +1),TIME_FORMATE));
		System.out.println(dateToStr(getDayOfWeek(Calendar.SUNDAY, +1),TIME_FORMATE));
	}
}
