package com.dong.web.service.impl;

import com.dong.web.dao.IUserDao;
import com.dong.web.dao.UserMapper;
import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;
import com.dong.web.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("userService")
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao userDao;
    @Autowired
    private UserMapper userMapper;

    public User getUserById(int userId) {
        return this.userDao.selectByPrimaryKey(userId);
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
        int result = 0;
        result = userMapper.countUserInfoTotal(bean);
        return result;
    }
}
