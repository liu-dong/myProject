package com.dong.web.controller.personManagement;

import com.dong.common.ReturnResult;
import com.dong.web.model.PersonInfoBean;
import com.dong.web.service.PersonManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/personManagement")
public class personManagementController {

    @Autowired
    private PersonManagementService personManagementService;

    @RequestMapping(value = "/savePersonInfo",method= RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    public ReturnResult<PersonInfoBean> savePersonInfo(PersonInfoBean bean){
        ReturnResult<PersonInfoBean> result = new ReturnResult<PersonInfoBean>();
        int state = personManagementService.savePersonInfo(bean);
        if (state == 1){
            result.setStatus(true);
            result.setMessage("保存成功！");
        }else {
            result.setStatus(false);
            result.setMessage("保存失败！");
        }
        return result;
    }
}
