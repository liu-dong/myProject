package com.dong.web.dao;

import com.dong.web.domain.Permission;

import java.util.List;

public interface PermissionMapper {
    int deleteByPrimaryKey(String id);

    int insert(Permission record);

    Permission selectByPrimaryKey(String id);

    int updateByPrimaryKey(Permission record);

    List<Permission> findPermissionList(String username);
}