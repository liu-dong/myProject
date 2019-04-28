package com.dong.web.controller.loginRegister;

import com.dong.web.domain.User;
import com.dong.web.model.UserInfoBean;
import com.dong.web.service.LoginRegisterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/loginRegister")
public class LoginRegisterController {

    private static Logger log= LoggerFactory.getLogger(LoginRegisterController.class);

    @Autowired
    private LoginRegisterService loginRegisterService;

    @RequestMapping(value="/goLoginView",method= RequestMethod.GET)
    public String goLoginView(HttpServletRequest request, Model model){
        model.addAttribute("systemName", "信息管理系统");
        return "login/login";
    }

    @RequestMapping(value="/goRegisterView",method= RequestMethod.GET)
    public String goRegisterView(HttpServletRequest request, Model model){
        model.addAttribute("systemName", "信息管理系统");
        return "login/register";
    }

    /**
     * 登录
     * @param user
     * @return
     */
    @RequestMapping(value="/login",method= RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
    public String login(User user){
        boolean result = loginRegisterService.login(user);
        if(result){
            return "home/homePage";
        }else {
            return "error";
        }
    }

    /**
     * 注册
     * @param bean
     * @return
     */
    @RequestMapping(value="/register",method= RequestMethod.POST)
    @ResponseBody
    public User register(UserInfoBean bean){
        User user = loginRegisterService.register(bean);
        return user;
    }
}
