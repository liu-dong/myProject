package com.dong.web.service.impl;

import com.dong.common.CommonUtils;
import com.dong.common.ReturnResult;
import com.dong.web.dao.D_UserMapper;
import com.dong.web.dao.PersonMapper;
import com.dong.web.domain.D_User;
import com.dong.web.domain.Person;
import com.dong.web.model.UserInfoBean;
import com.dong.web.service.LoginRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class LoginRegisterServiceImpl implements LoginRegisterService {

    @Autowired
    private D_UserMapper userMapper;
    @Autowired
    private PersonMapper personMapper;

    @Override
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

    @Transactional
    @Override
    public D_User register(UserInfoBean bean) {
        String personId = CommonUtils.getUUID();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//时间格式化

        D_User user = new D_User();
        user.setId(CommonUtils.getUUID());
        user.setUserType(2);//用户类型 （2：普通、1：管理员、0：超级管理员）
        user.setUsername(bean.getUsername());
        user.setPassword(bean.getPassword());
        user.setPersonId(personId);
        user.setUserStatus(0);//用户状态（0：正常、）
        user.setRealName(bean.getName());
        user.setCreateTime(new Date());
        userMapper.insert(user);

        Person person = new Person();
        person.setId(personId);
        person.setName(bean.getName());
        person.setIdentityCard(bean.getIdentityCard());
        if (!StringUtils.isEmpty(bean.getAge())) {
            person.setAge(Integer.parseInt(bean.getAge()));
        }
        if (!StringUtils.isEmpty(bean.getAge())) {
            person.setAge(Integer.parseInt(bean.getAge()));
        }
        try {
            person.setBirthdate(sdf.parse(bean.getBirthdate()));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        if (!StringUtils.isEmpty(bean.getSex())) {
            person.setSex(Short.parseShort(bean.getSex()));
        }
        person.setPhone(bean.getPhone());
        person.setEmail(bean.getEmail());
        person.setPresentAddress(bean.getPresentAddress());
        person.setNativePlace(bean.getNativePlace());
        person.setIndividualResume(bean.getIndividualResume());
        person.setCreateTime(new Date());
        personMapper.insert(person);
        return user;
    }
}
