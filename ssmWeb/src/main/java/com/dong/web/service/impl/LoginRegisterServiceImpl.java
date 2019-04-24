package com.dong.web.service.impl;

import com.dong.common.CommonUtils;
import com.dong.web.dao.UserMapper;
import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;
import com.dong.web.service.LoginRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

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

    public User register(UserInfoBean bean) {
        User user = new User();
        user.setId(CommonUtils.getUUID());
        user.setUserName(bean.getUserName());
        user.setLoginName(bean.getLoginName());
        user.setPassword(bean.getPassword());
        user.setSex(Integer.parseInt(bean.getSex()));
        user.setAge(Integer.parseInt(bean.getAge()));
        userMapper.insert(user);
        return user;
    }
}
