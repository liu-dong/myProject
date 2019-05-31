package com.dong.web.domain;

public class RolePermission {
    private String id;

    private String roleId;

    private String permissionId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }

    public String getPermissionId() {
        return permissionId;
    }

    public void setPromissionId(String permissionId) {
        this.permissionId = permissionId == null ? null : permissionId.trim();
    }
}