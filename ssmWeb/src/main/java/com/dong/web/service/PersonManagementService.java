package com.dong.web.service;

import com.dong.web.domain.Person;
import com.dong.web.model.PersonInfoBean;

import java.util.List;

public interface PersonManagementService {

    int savePersonInfo(PersonInfoBean bean) throws Exception;

    /**
     *
     * @param bean
     * @param page
     * @param limit
     * @return
     * @throws Exception
     */
    List<Person> findPersonInfoList(PersonInfoBean bean, int page, int limit) throws Exception;

    int countPersonInfoTotal(PersonInfoBean bean);

    Person getPersonInfo(String id);
}
