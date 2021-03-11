package com.dong.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("")
public class PageController {

    @RequestMapping("indexShiro")
    public String index(){
        return "indexShiro";
    }

    @RequiresPermissions("delete")
    @RequestMapping("deleteOrder")
    public String deleteOrder(){
        return "deleteOrder";
    }
    @RequiresPermissions("delete")
    @RequestMapping("deleteProduct")
    public String deleteProduct(){
        return "deleteProduct";
    }
    @RequiresPermissions("select")
    @RequestMapping("listProduct")
    public String listProduct(){
        return "listProduct";
    }

    @RequestMapping(value="/login",method= RequestMethod.GET)
    public String login(){
        return "login";
    }
    @RequestMapping("unauthorized")
    public String noPerms(){
        return "unauthorized";
    }
}
