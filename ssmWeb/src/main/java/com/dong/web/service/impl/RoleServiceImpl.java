package com.dong.web.service.impl;

import com.dong.web.dao.RoleMapper;
import com.dong.web.domain.Role;
import com.dong.web.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    public Set<String> findRoleList(String username) {
        Set<String> setResult = new HashSet<String>();
        List<Role> roleList = roleMapper.findRoleList(username);
        for (Role role: roleList) {
            setResult.add(role.getRoleName());
        }
        return setResult;
    }
}
