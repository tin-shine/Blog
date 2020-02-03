package com.tinshine.blog.controller.front;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("front")
public class FrontController {

    private Logger logger = Logger.getLogger(this.getClass());

    @RequestMapping("index.action")
    public String index() {
        return "/front/index";
    }
}
