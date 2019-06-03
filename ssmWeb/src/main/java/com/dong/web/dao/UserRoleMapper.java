package com.dong.web.dao;

import com.dong.web.domain.UserRole;

public interface UserRoleMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserRole record);

    UserRole selectByPrimaryKey(String id);

    int updateByPrimaryKey(UserRole record);
}