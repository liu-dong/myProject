package com.dong.web.dao;

import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;

import java.util.List;
import java.util.Map;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String id);

    User selectByLoginName(String loginName);

    List<User> findUserInfoList(Map<String,Object> map);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);


    int countUserInfoTotal(UserInfoBean bean);
}