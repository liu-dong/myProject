package com.dong.web.service;

import java.util.Set;

public interface PermissionService {

    Set<String> listPermissions(String userName);
}
