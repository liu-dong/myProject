package com.dong.web.dao;

import com.dong.web.domain.RolePermission;

public interface RolePermissionMapper {
    int deleteByPrimaryKey(String id);

    int insert(RolePermission record);

    RolePermission selectByPrimaryKey(String id);

    int updateByPrimaryKey(RolePermission record);
}