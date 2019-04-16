package com.dong.web.controller.loginRegister;

import com.dong.web.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/loginRegister")
public class LoginRegisterController {

    private static Logger log= LoggerFactory.getLogger(LoginRegisterController.class);

    @Autowired
    private IUserService userService;

    @RequestMapping(value="/goLoginView",method= RequestMethod.GET)
    public String goLoginView(HttpServletRequest request, Model model){
        model.addAttribute("systemName", "信息管理系统");
        return "login/login";
    }

}
