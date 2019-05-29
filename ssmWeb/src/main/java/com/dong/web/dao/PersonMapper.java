package com.dong.web.dao;

import com.dong.web.domain.Person;
import com.dong.web.model.PersonInfoBean;

import java.util.List;
import java.util.Map;

public interface PersonMapper {
    int deleteByPrimaryKey(String id);

    int insert(Person record);

    int insertSelective(Person record);

    Person selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Person record);

    int updateByPrimaryKey(Person record);

    List<Person> findPersonInfoList(Map<String, Object> map);

    int countPersonInfoTotal(PersonInfoBean bean);
}