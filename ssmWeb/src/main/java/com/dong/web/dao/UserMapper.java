package com.dong.web.dao;

import com.dong.web.model.User;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User selectByLoinName(String loginName);
}