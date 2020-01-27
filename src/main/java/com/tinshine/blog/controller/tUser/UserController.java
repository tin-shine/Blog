package com.tinshine.blog.controller.tUser;

import com.tinshine.blog.entity.ReturnEntity;
import com.tinshine.blog.service.tUser.UserServiceImpl;
import com.tinshine.blog.entity.UserEntity;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("user")
public class UserController {

    private Logger logger = Logger.getLogger(this.getClass());

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
    public ReturnEntity login (Model map, HttpServletRequest request) {
        logger.debug("开始登录");
        String name = request.getParameter("userName");
        logger.info("用户名为：" + name);
        String pswd = request.getParameter("password");
        logger.info("密码为：" + pswd);

        UserEntity userFound = userService.searchUser(name, pswd);
        if (userFound == null)
            return ReturnEntity.error("用户名或密码不正确");

        request.setAttribute("userFound", userFound);
        return ReturnEntity.success();
    }

    @RequestMapping("register.action")
    public String register() {
        return "/admin/register";
    }
}