package com.dong.web.service;

import java.util.Set;

public interface PermissionService {

    Set<String> findPermissionList(String userName);
}
