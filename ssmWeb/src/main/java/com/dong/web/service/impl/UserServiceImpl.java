package com.dong.web.service.impl;

import com.dong.web.dao.UserMapper;
import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;
import com.dong.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User getUserById(int userId) {
        return null;
    }

    public List<User> findUserInfoList(UserInfoBean bean, int page, int limit) {
        List<User> resultList;
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("userName",bean.getUserName());
        map.put("sex",bean.getSex());
        map.put("page", (page-1)*limit);
        map.put("limit", limit);
        resultList = userMapper.findUserInfoList(map);
        return resultList;
    }

    public int countUserInfoTotal(UserInfoBean bean) {
        return userMapper.countUserInfoTotal(bean);
    }

    public String getPassword(String userName) {
        User userEntity = userMapper.selectByLoginName(userName);
        if (userEntity != null){
            return userEntity.getPassword();
        }else {
            return null;
        }
    }
}
