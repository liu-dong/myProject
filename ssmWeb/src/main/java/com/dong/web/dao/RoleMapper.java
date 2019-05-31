package com.dong.web.dao;

import com.dong.web.domain.Role;

import java.util.List;

public interface RoleMapper {
    int deleteByPrimaryKey(String id);

    int insert(Role record);

    Role selectByPrimaryKey(String id);

    int updateByPrimaryKey(Role record);

    /**
     * 根据用户名查询角色
     * @param userName
     * @return
     */
    List<Role> findRoleList(String userName);
}