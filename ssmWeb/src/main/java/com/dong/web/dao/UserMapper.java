package com.dong.web.dao;

import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;

import java.util.List;
import java.util.Map;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    User selectByPrimaryKey(String id);

    int updateByPrimaryKey(User record);

    List<User> findUserInfoList(Map<String, Object> map);

    User selectUserByLoginName(String loginName);

    int countUserInfoTotal(UserInfoBean bean);
}