package com.dong.web.dao;

import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String id);

    User selectByLoginName(String loginName);

    List<User> findUserInfoList(UserInfoBean bean);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}