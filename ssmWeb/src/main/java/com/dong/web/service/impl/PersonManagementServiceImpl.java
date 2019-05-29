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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PersonManagementServiceImpl implements PersonManagementService {

    @Autowired
    private PersonMapper personMapper;


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

    public int countPersonInfoTotal(PersonInfoBean bean) {
        return personMapper.countPersonInfoTotal(bean);
    }

    public int savePersonInfo(PersonInfoBean bean) throws Exception {
        int state = 0;//0：失败、1：成功
        SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
        Person person = new Person();
        person.setId(CommonUtils.getUUID());
        person.setName(bean.getName());
        person.setAge(Integer.parseInt(bean.getAge()));
        person.setSex(Short.parseShort(bean.getSex()));
        if(!StringUtils.isEmpty(bean.getBirthdate())){
            person.setBirthdate(sdf.parse(bean.getBirthdate()));
        }
        person.setEmail(bean.getEmail());
        person.setPhone(bean.getPhone());
        person.setNativePlace(bean.getNativePlace());
        person.setPresentAddress(bean.getProvince()+bean.getCity()+bean.getTown());
        person.setIndividualResume(bean.getIndividualResume());
        state = personMapper.insert(person);
        return state;
    }
}
