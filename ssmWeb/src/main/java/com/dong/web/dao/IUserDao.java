package com.dong.web.dao;

import com.dong.web.model.User;

import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface IUserDao {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}