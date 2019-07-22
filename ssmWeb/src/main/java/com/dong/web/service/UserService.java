package com.dong.web.service;

import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;

import java.util.List;

public interface UserService {

    User getUserById(String id);

    List<User> findUserInfoList(UserInfoBean bean, int page, int limit);

    int countUserInfoTotal(UserInfoBean bean);

    String getPassword(String username);
}
