package com.dong.web.service.impl;

import com.dong.web.domain.D_User;
import com.dong.web.service.UserService;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

    public D_User getUserById(String userId) {
        return null;
    }

    /*public List<User> findUserInfoList(UserInfoBean bean, int page, int limit) {
        List<User> resultList;
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("username",bean.getUsername());
        map.put("sex",bean.getSex());
        map.put("page", (page-1)*limit);
        map.put("limit", limit);
        resultList = userMapper.findUserInfoList(map);
        return resultList;
    }

    public int countUserInfoTotal(UserInfoBean bean) {
        return userMapper.countUserInfoTotal(bean);
    }

    public String getPassword(String username) {
        User userEntity = userMapper.selectUserByLoginName(username);
        if (userEntity != null){
            return userEntity.getPassword();
        }else {
            return null;
        }
    }*/
}
