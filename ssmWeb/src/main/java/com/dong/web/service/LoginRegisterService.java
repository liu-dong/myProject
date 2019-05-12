package com.dong.web.service;

import com.dong.common.ReturnResult;
import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;

public interface LoginRegisterService {

    ReturnResult<User> login(User user);

    User register(UserInfoBean bean);


}
