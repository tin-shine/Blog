package com.tinshine.blog.controller.tBlog;

import com.tinshine.blog.entity.ReturnEntity;
import com.tinshine.blog.service.tBlog.BlogServiceImpl;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("blog")
public class BlogController {

    private Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    private BlogServiceImpl blogService;

    @RequestMapping("NewArticle.action")
    public String addArticlePage() {
        return "/admin/addArticle";
    }

    @RequestMapping("addArticle.json")
    @ResponseBody
    public ReturnEntity addArticle(Model map, HttpServletRequest request) {
        logger.debug("开始提交文章数据");
        String title = request.getParameter("title");
        logger.debug("title: " + title);
        String type = request.getParameter("type");
        logger.debug("type: " + type);
        int typeID = 0;
        switch (type) {
            case "note":
                typeID = 0;
                break;
            case "blog":
                typeID = 1;
                break;
            default:
                break;
        }
        logger.debug("TypeID: " + typeID);
        String content = request.getParameter("content");
        logger.debug("content: " + content);
        blogService.addArticle(title, content, typeID);
        return ReturnEntity.success();
    }
}
//    @RequestMapping("addArticle.json")
//    @ResponseBody
//    public ReturnEntity addArticle (Model map, HttpServletRequest request) {
//        logger.debug("In addArticle(): ");
//        String title = request.getParameter("title");
//        logger.debug("title: " + title);
//        String type = request.getParameter("type");
//        logger.debug("type: " + type);
//        int typeID = 0;
//        switch (type) {
//            case "note":
//                typeID = 0;
//                break;
//            case "blog":
//                typeID = 1;
//                break;
//            default:
//                break;
//        }
//        String content = request.getParameter("content");
//
//        BlogServiceImpl blogService = new BlogServiceImpl();
//        blogService.addArticle(title, content, typeID);
//        return ReturnEntity.success();
//    }