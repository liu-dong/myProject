package com.dong.web.service;

import com.dong.web.domain.Person;
import com.dong.web.model.PersonInfoBean;

import java.text.ParseException;
import java.util.List;

public interface PersonManagementService {

    int savePersonInfo(PersonInfoBean bean) throws Exception;

    List<Person> findPersonInfoList(PersonInfoBean bean, int page, int limit);

    int countPersonInfoTotal(PersonInfoBean bean);
}
