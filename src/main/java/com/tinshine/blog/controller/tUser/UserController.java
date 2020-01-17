package com.tinshine.blog.controller.tUser;

import com.tinshine.blog.service.tUser.UserServiceImpl;
import com.tinshine.blog.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserServiceImpl userService;

    @RequestMapping("/index.action") // 默认首页跳转到登录界面
    public String index () {
        return "/admin/login";
    }

    @RequestMapping("main.action")
    public String mainPanel () {
        return "/admin/main";
    }

    @RequestMapping("login.json") // 处理登录界面表单提交过来的数据
    @ResponseBody
    public String login (Model map, HttpServletRequest request) {
        String name = request.getParameter("userName");
        String pswd = request.getParameter("password");

        UserEntity userFound = userService.searchUser(name, pswd);
        if (userFound == null)
            return "error";
        else
            return "/user/main.action";
    }

    @RequestMapping("register.action")
    public String register() {
        return "/admin/register";
    }
}