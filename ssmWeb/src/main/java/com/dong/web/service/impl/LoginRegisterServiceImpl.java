package com.dong.web.service.impl;

import com.dong.common.ReturnResult;
import com.dong.web.dao.D_UserMapper;
import com.dong.web.domain.D_User;
import com.dong.web.service.LoginRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginRegisterServiceImpl implements LoginRegisterService {

    @Autowired
    D_UserMapper userMapper;

    public ReturnResult<D_User> login(D_User user) {
        ReturnResult<D_User> result = new ReturnResult<D_User>();
        D_User userEntity = userMapper.getUserByUsername(user.getUsername());
        if (userEntity != null){
            result.setStatus(userEntity.getPassword().equals(user.getPassword()));
        }else {
            result.setStatus(false);
        }
        result.setData(userEntity);
        return result;
    }

    /*public D_User register(UserInfoBean bean) {
        D_User user = new D_User();
        user.setId(CommonUtils.getUUID());
        *//*user.setUserName(bean.getUserName());
        user.setPassword(bean.getPassword());
        user.setSex(Integer.parseInt(bean.getSex()));
        user.setAge(Integer.parseInt(bean.getAge()));*//*
        userMapper.insert(user);
        return user;
    }*/
}
