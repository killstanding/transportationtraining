package tech.wetech.admin.modules.base.service;

import tech.wetech.admin.modules.base.query.PageQuery;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * 通用接口
 *
 * @param <T>
 * @author cjbi@outlook.com
 */
public interface IService<T> {

    List<T> queryAll();

    List<T> queryList(T entity);

    T queryOne(T entity);

    T queryById(Object id);

    List<T> queryList(T entity, PageQuery pageQuery);
    
    List<T> queryListByLike(T entity, PageQuery pageQuery);
    
    int create(T entity);

    int updateAll(T entity);

    int updateNotNull(T entity);

    int delete(T entity);

    int deleteById(Object id);

    int count(T entity);
    
    public List<T> keyValueByExample(T entity);
    
    public List<T> queryByExample(Example example);

}
