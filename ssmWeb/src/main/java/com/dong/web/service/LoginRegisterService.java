package com.dong.web.service;

import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;

public interface LoginRegisterService {

    boolean login(User user);

    User register(UserInfoBean bean);


}
