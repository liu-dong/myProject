package com.dong.web.dao;

import com.dong.web.domain.Role;

import java.util.List;

public interface RoleMapper {
    int deleteByPrimaryKey(String id);

    int insert(Role record);

    Role selectByPrimaryKey(String id);

    int updateByPrimaryKey(Role record);

    List<Role> findRoleList(String userName);
}