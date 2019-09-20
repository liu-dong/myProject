package com.dong.web.dao;

import com.dong.web.domain.User;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    User selectByPrimaryKey(String id);

    int updateByPrimaryKey(User record);

    User getUserByUsername(String username);
}