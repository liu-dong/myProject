package com.dong.web.service.impl;

import com.dong.web.model.PersonInfoBean;
import com.dong.web.service.PersonManagementService;
import org.springframework.stereotype.Service;

@Service
public class PersonManagementServiceImpl implements PersonManagementService {
    public int savePersonInfo(PersonInfoBean bean) {
        int state = 0;//0：失败、1：成功

        return 0;
    }
}
