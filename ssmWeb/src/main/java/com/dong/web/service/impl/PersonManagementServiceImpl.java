package com.dong.web.service.impl;

import com.dong.common.CommonUtils;
import com.dong.web.dao.PersonMapper;
import com.dong.web.domain.Person;
import com.dong.web.model.PersonInfoBean;
import com.dong.web.service.PersonManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PersonManagementServiceImpl implements PersonManagementService {

    @Autowired
    private PersonMapper personMapper;


    @Override
    public List<Person> findPersonInfoList(PersonInfoBean bean, int page, int limit) {
        List<Person> resultList;
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("name",bean.getName());
        map.put("sex",bean.getSex());
        map.put("page", (page-1)*limit);
        map.put("limit", limit);
        resultList = personMapper.findPersonInfoList(map);
        return resultList;
    }

    @Override
    public int countPersonInfoTotal(PersonInfoBean bean) {
        return personMapper.countPersonInfoTotal(bean);
    }

    @Override
    public Person getPersonInfo(String id) {
        return personMapper.selectByPrimaryKey(id);
    }

    @Override
    public int savePersonInfo(PersonInfoBean bean) throws Exception {
        int state = 0;//0：失败、1：成功
        SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
        Person person = new Person();
        person.setId(CommonUtils.getUUID());
        person.setName(bean.getName());
        person.setIdentityCard(bean.getIdentityCard());
        if (!StringUtils.isEmpty(bean.getAge())) {
            person.setAge(Integer.parseInt(bean.getAge()));
        }
        person.setBirthdate(sdf.parse(bean.getBirthdate()));
        if (!StringUtils.isEmpty(bean.getSex())) {
            person.setSex(Short.parseShort(bean.getSex()));
        }
        person.setPhone(bean.getPhone());
        person.setEmail(bean.getEmail());
        person.setPresentAddress(bean.getPresentAddress());
        person.setNativePlace(bean.getNativePlace());
        person.setIndividualResume(bean.getIndividualResume());
        person.setCreateTime(new Date());
        return state;
    }
}
