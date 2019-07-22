package com.dong.web.service;

import com.dong.common.ReturnResult;
import com.dong.web.domain.D_User;

public interface LoginRegisterService {

    ReturnResult<D_User> login(D_User user);

//    D_User register(UserInfoBean bean);


}
