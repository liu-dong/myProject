package com.dong.web.service.impl;

import com.dong.web.dao.UserMapper;
import com.dong.web.model.User;
import com.dong.web.service.LoginRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginRegisterServiceImpl implements LoginRegisterService {

    @Autowired
    UserMapper userMapper;

    public boolean login(User user) {
        boolean result;
        User userEntity = userMapper.selectByLoginName(user.getLoginName());
        if (userEntity != null){
            result = userEntity.getPassword().equals(user.getPassword());
        }else {
            result = false;
        }
        return result;
    }
}
