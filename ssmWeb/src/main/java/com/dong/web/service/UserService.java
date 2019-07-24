package com.dong.web.service;

import com.dong.web.domain.D_User;

public interface UserService {

    D_User getUserById(String id);

    /*List<User> findUserInfoList(UserInfoBean bean, int page, int limit);

    int countUserInfoTotal(UserInfoBean bean);

    String getPassword(String username);*/
}
