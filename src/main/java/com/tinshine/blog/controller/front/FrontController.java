package com.tinshine.blog.controller.front;

import com.tinshine.blog.entity.BlogEntity;
import com.tinshine.blog.service.tBlog.BlogServiceImpl;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
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

    @RequestMapping("detail.action")
    public String showDetail(ModelMap map, @RequestParam(value = "id") int id) {
        BlogEntity blogDetail = blogService.getBlogById(id);
        map.put("blog", blogDetail);
        return "/front/detail";
    }

    @RequestMapping("randomPage.action")
    public String randomPage(ModelMap map) {
        List<BlogEntity> blogs = blogService.listBlogs();
        List<Integer> blogsId = new ArrayList<>();
        for (BlogEntity blog: blogs) {
            blogsId.add(blog.getId());
        }
        int num = (int) (Math.random() * blogsId.size());
        int id = blogsId.get(num);
        return showDetail(map, id);
    }
}
