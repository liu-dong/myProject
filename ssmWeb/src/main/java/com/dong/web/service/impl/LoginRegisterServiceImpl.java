package com.dong.web.service.impl;

import com.dong.common.CommonUtils;
import com.dong.common.ReturnResult;
import com.dong.web.dao.PersonMapper;
import com.dong.web.dao.RoleMapper;
import com.dong.web.dao.UserMapper;
import com.dong.web.dao.UserRoleMapper;
import com.dong.web.domain.Person;
import com.dong.web.domain.Role;
import com.dong.web.domain.User;
import com.dong.web.domain.UserRole;
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
    private UserMapper userMapper;
    @Autowired
    private PersonMapper personMapper;
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private UserRoleMapper userRoleMapper;

    @Override
    public ReturnResult<User> login(User user) {
        ReturnResult<User> result = new ReturnResult<User>();
        User userEntity = userMapper.getUserByUsername(user.getUsername());
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
    public User register(UserInfoBean bean) {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//时间格式化
        String userId = CommonUtils.getUUID();//用户id
        String personId = CommonUtils.getUUID();//人员id
        String roleId = CommonUtils.getUUID();//角色id

        User user = new User();
        user.setId(userId);
        user.setUserType(Integer.valueOf(bean.getUserType()));//用户类型 （2：普通、1：管理员、0：超级管理员）
        user.setUsername(bean.getUsername());
        user.setPassword(bean.getPassword());
        user.setPersonId(personId);
        user.setUserStatus(0);//用户状态（0：正常、）
        user.setRealName(bean.getName());
        user.setCreateTime(new Date());
        userMapper.insert(user);

        //保存人员信息表
        Person person = new Person();
        person.setId(personId);
        person.setName(bean.getName());
        person.setIdentityCard(bean.getIdentityCard());
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

        if ("0".equals(bean.getUserType())){
            Role role = roleMapper.findByRoleName("超级管理员");
            if (null == role){
                role = new Role();
                role.setId(roleId);
                role.setRoleName("超级管理员");
                role.setRemark("注册超级管理员");
                role.setCreateTime(new Date());
                roleMapper.insert(role);
            }
        }

        //保存用户角色表
        UserRole userRole = new UserRole();
        userRole.setId(CommonUtils.getUUID());
        userRole.setUserId(userId);
        userRole.setRoleId(roleId);
        userRoleMapper.insert(userRole);
        return user;
    }

    @Override
    public String getPassword(String username) {
        User userEntity = userMapper.getUserByUsername(username);
        if (userEntity != null){
            return userEntity.getPassword();
        }else {
            return null;
        }
    }
}
