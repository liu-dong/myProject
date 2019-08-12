package com.dong.web.controller.personManagement;

import com.dong.common.ResultMap;
import com.dong.common.ReturnResult;
import com.dong.web.domain.Person;
import com.dong.web.model.PersonInfoBean;
import com.dong.web.service.PersonManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "/personManagement")
public class PersonManagementController {

    @Autowired
    private PersonManagementService personManagementService;

    @RequestMapping(value="/findPersonInfoList",method=RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public ResultMap<List<Person>> findPersonInfoList(PersonInfoBean bean, int page, int limit){
        ResultMap<List<Person>> result = new ResultMap<List<Person>>();
//        PageHelper.startPage(page,limit);
        List<Person> dataList = null;
        try {
            dataList = personManagementService.findPersonInfoList(bean,page,limit);
        } catch (Exception e) {
            e.printStackTrace();
        }
//        PageInfo<Person> pageInfo = new PageInfo<Person>(dataList);
        int countTotal = personManagementService.countPersonInfoTotal(bean);
        result.setCode(0);
//        result.setCount((int) pageInfo.getTotal());
        result.setCount(countTotal);
        result.setData(dataList);
        result.setMsg("成功！");
        return result;
    }

    /**
     * 保存人员信息
     * @param bean
     * @return
     */
    @RequestMapping(value = "/savePersonInfo",method= RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public ReturnResult<PersonInfoBean> savePersonInfo(PersonInfoBean bean){
        ReturnResult<PersonInfoBean> result = new ReturnResult<PersonInfoBean>();
        try {
            int state = personManagementService.savePersonInfo(bean);
            if (state == 1){
                result.setStatus(true);
                result.setMessage("保存成功！");
            }else {
                result.setStatus(false);
                result.setMessage("保存失败！");
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setStatus(false);
            result.setMessage("保存失败！");
        }
        return result;
    }

    @RequestMapping(value="/getPersonInfo",method=RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public ReturnResult<PersonInfoBean> getPersonInfo(String id){
        ReturnResult<PersonInfoBean> result = new ReturnResult<PersonInfoBean>();
        try {
            Person person = personManagementService.getPersonInfo(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
