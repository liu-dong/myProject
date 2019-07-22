package com.dong.web.dao;

import com.dong.web.domain.D_User;

public interface D_UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(D_User record);

    int insertSelective(D_User record);

    D_User selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(D_User record);

    int updateByPrimaryKey(D_User record);

    D_User getUserByUsername(String username);
}