package com.dong.web.service.impl;

import com.dong.common.CommonUtils;
import com.dong.common.ReturnResult;
import com.dong.web.dao.UserMapper;
import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;
import com.dong.web.service.LoginRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginRegisterServiceImpl implements LoginRegisterService {

    @Autowired
    UserMapper userMapper;

    public ReturnResult<User> login(User user) {
        ReturnResult<User> result = new ReturnResult<User>();
        User userEntity = userMapper.selectByLoginName(user.getLoginName());
        if (userEntity != null){
            result.setStatus(userEntity.getPassword().equals(user.getPassword()));
        }else {
            result.setStatus(false);
        }
        result.setData(userEntity);
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
