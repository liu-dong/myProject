package com.dong.web.service.impl;

import com.dong.web.dao.PermissionMapper;
import com.dong.web.domain.Permission;
import com.dong.web.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    private PermissionMapper permissionMapper;

    public Set<String> findPermissionList(String userName) {
        Set<String> setResult = new HashSet<String>();
        List<Permission> permissionList = permissionMapper.findPermissionList(userName);
        for (Permission permission: permissionList) {
            setResult.add(permission.getPermissionName());
        }
        return setResult;
    }
}
