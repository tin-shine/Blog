package com.tinshine.blog.controller.front;

import com.tinshine.blog.entity.BlogEntity;
import com.tinshine.blog.service.tBlog.BlogServiceImpl;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("front")
public class FrontController {

    @Autowired
    private BlogServiceImpl blogService;

    private Logger logger = Logger.getLogger(this.getClass());

    @RequestMapping("index.action")
    public String index() {
        return "/front/index";
    }

    @RequestMapping("articles.action")
    public String article(ModelMap map) {
        List<BlogEntity> blogs = blogService.listBlogs();
        logger.debug("查询到的文章数：" + blogs.size());
        map.put("blogs", blogs);
        return "/front/article";
    }
}
