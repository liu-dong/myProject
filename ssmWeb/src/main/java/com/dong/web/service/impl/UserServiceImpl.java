package com.dong.web.service.impl;

import com.dong.web.dao.IUserDao;
import com.dong.web.dao.UserMapper;
import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;
import com.dong.web.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service("userService")
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao userDao;
    @Autowired
    private UserMapper userMapper;

    public User getUserById(int userId) {
        return this.userDao.selectByPrimaryKey(userId);
    }

    public List<User> findUserInfoList(UserInfoBean bean) {
        List<User> resultList;
        resultList = userMapper.findUserInfoList(bean);
        return resultList;

    }
}
