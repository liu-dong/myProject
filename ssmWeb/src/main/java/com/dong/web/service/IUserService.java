package com.dong.web.service;

import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;

import java.util.List;

public interface IUserService {

    public User getUserById(int userId);

    List<User> findUserInfoList(UserInfoBean bean);
}
