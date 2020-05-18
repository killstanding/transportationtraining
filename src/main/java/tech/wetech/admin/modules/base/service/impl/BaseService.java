package tech.wetech.admin.modules.base.service.impl;

import com.alibaba.excel.metadata.BaseRowModel;
import com.github.pagehelper.PageHelper;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import tech.wetech.admin.modules.base.query.PageQuery;
import tech.wetech.admin.modules.base.service.IService;
import tk.mybatis.mapper.code.Style;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.util.StringUtil;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.LinkedList;
import java.util.List;

/**
 * @param <T>
 * @author cjbi@outlook.com
 */
public abstract class BaseService<T> implements IService<T> {

	protected Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	protected Mapper<T> mapper;

	public Mapper<T> getMapper() {
		return mapper;
	}

	@Override
	public List<T> queryAll() {
		return mapper.selectAll();
	}

	@Override
	public List<T> queryList(T entity) {
		return mapper.select(entity);
	}

	@Override
	public T queryOne(T entity) {
		return mapper.selectOne(entity);
	}

	@Override
	public T queryById(Object id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<T> queryList(T entity, PageQuery pageQuery) {
		if (pageQuery.getOrderBy() != null) {
			pageQuery.setOrderBy(StringUtil.convertByStyle(pageQuery.getOrderBy(), Style.camelhump));
		}
		return PageHelper.startPage(pageQuery)
				.doSelectPage(() -> mapper.select(entity));
	}

	@Override
	public List<T> queryListByLike(T entity, PageQuery pageQuery) {
		if (pageQuery.getOrderBy() != null) {
			pageQuery.setOrderBy(StringUtil.convertByStyle(pageQuery.getOrderBy(), Style.camelhump));
		}
		return PageHelper.startPage(pageQuery)
				.doSelectPage(() -> keyValueByExample(entity));
	}

	@Override
	public int create(T entity) {
		return mapper.insertSelective(entity);
	}

	@Override
	public int updateAll(T entity) {
		return mapper.updateByPrimaryKey(entity);
	}

	@Override
	public int updateNotNull(T entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}

	@Override
	public int delete(T entity) {
		return mapper.delete(entity);
	}

	@Override
	public int deleteById(Object id) {
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int count(T entity) {
		return mapper.selectCount(entity);
	}
	/**
	 * 通用指定字段模糊查询
	 * 只支持本身类型属性模糊查询，字典label目前不支持
	 *
	 * @param keyValue     模糊查询的值
	 * @param examplClass  实体对象的字节码对象
	 * @param propertyList 需查询的属性（没有就默认查询全部）
	 * @return List<T> 查询结果
	 */
	public List<T> keyValueByExample(T entity) {
		// create Example Criteria
		Example example = new Example(entity.getClass());
		Example.Criteria criteria;
		// get Class Field
		List<Field> fields = getFieldList(entity.getClass());
		for (Field field : fields) {
			field.setAccessible(true);
			// Field tyep: int / java.lang.String / java.lang.Integer / java.lang.Doubbo / java.math.BigDecimal
			// int[][] /int / float /doubbo
			String canonicalNameType = field.getType().getCanonicalName();
			// wether array  Enum Synthetic continue
			if (field.isEnumConstant() || field.isSynthetic() || canonicalNameType.contains("[]")) {
				continue;
			}
			//Field Name
			String fieldName = field.getName();
			// judge current filed wether in propertyList need to be  select like
			criteria = example.createCriteria();
			Object objValue = getFieldValueByName(fieldName, entity);
			if(objValue!=null){
				String keyValue = objValue + "";
				if (StringUtils.isNotBlank(keyValue)) {
					if ("java.lang.String".equals(canonicalNameType)) {
						keyValue = "%" + keyValue + "%"; 
						criteria.andLike(fieldName, keyValue);
						example.and(criteria);
					}else{
						criteria.andEqualTo(fieldName, keyValue);
						example.and(criteria);
					}
				}
			}
		}
		return mapper.selectByExample(example);
	}

	/**
	 * 通用全字段模糊查询
	 * 只支持本身类型属性模糊查询，字典label目前不支持
	 *
	 * @param keyValue     模糊查询的值
	 * @param examplClass  实体对象的字节码对象
	 * @param propertyList 需查询的属性（没有就默认查询全部）
	 * @return List<T> 查询结果
	 */
	public List<T> keyValueByExample(String keyValue, Class<T> examplClass, List<String> propertyList) {
		if (examplClass == null) {
			throw new RuntimeException("Class can't be null");
		}
		if (StringUtils.isBlank(keyValue)) {
			throw new RuntimeException("keyValue property to search can't be null");
		}
		keyValue = "%" + keyValue + "%";
		boolean needCheckPropertyList = (propertyList != null && propertyList.size() > 0);
		// create Example Criteria
		Example example = new Example(examplClass);
		Example.Criteria criteria;
		// get Class Field
		List<Field> fields = getFieldList(examplClass);
		for (Field field : fields) {
			field.setAccessible(true);
			// Field tyep: int / java.lang.String / java.lang.Integer / java.lang.Doubbo / java.math.BigDecimal
			// int[][] /int / float /doubbo
			String canonicalNameType = field.getType().getCanonicalName();
			// wether array  Enum Synthetic continue
			if (field.isEnumConstant() || field.isSynthetic() || canonicalNameType.contains("[]")) {
				continue;
			}
			//Field Name
			String fieldName = field.getName();
			// judge current filed wether in propertyList need to be  select like
			criteria = example.createCriteria();
			if (needCheckPropertyList) {
				for (String property : propertyList) {
					if (property.equals(fieldName)) {
						if ("java.lang.String".equals(canonicalNameType)) {
							criteria.orLike(property, keyValue);
							example.or(criteria);
						}
						// TODO 其它类型
					}
				}
			} else {
				if ("java.lang.String".equals(canonicalNameType)) {
					criteria.orLike(fieldName, keyValue);
					example.or(criteria);
				}
				// TODO 其它类型
			}
		}
		return mapper.selectByExample(example);
	}

	/**
	 * 获取当前字节码对象的属性包含父类属性
	 *
	 * @param clazz 字节码对象
	 * @return 属性集合
	 * @author 
	 * @date 
	 */
	public static List<Field> getFieldList(Class<?> clazz) {
		if (null == clazz) {
			return null;
		}
		List<Field> fieldList = new LinkedList<>();
		Field[] fields = clazz.getDeclaredFields();
		for (Field field : fields) {
			/** 过滤静态属性**/
			if (Modifier.isStatic(field.getModifiers())) {
				continue;
			}
			/** 过滤transient 关键字修饰的属性**/
			if (Modifier.isTransient(field.getModifiers())) {
				continue;
			}
			fieldList.add(field);
		}
		/** 处理父类字段**/
		Class<?> superClass = clazz.getSuperclass();
		if (superClass.equals(Object.class)||superClass.equals(BaseRowModel.class)) {
			return fieldList;
		}
		List<Field> fieldListSupper = getFieldList(superClass);
		if (fieldListSupper != null) {
			fieldList.addAll(fieldListSupper);
		}
		return fieldList;
	}
	/* 根据属性名获取属性值  
	 * */  
	private static Object getFieldValueByName(String fieldName, Object o) {  
		try {    
			String firstLetter = fieldName.substring(0, 1).toUpperCase();    
			String getter = "get" + firstLetter + fieldName.substring(1);    
			Method method = o.getClass().getMethod(getter, new Class[] {});    
			Object value = method.invoke(o, new Object[] {});    
			return value;    
		} catch (Exception e) {    

			return null;    
		}    
	}
}
