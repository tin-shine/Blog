package com.tinshine.blog.controller.tBlog;

import com.tinshine.blog.entity.ReturnEntity;
import com.tinshine.blog.service.tBlog.BlogServiceImpl;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("blog")
public class BlogController {

    private static final int SUMMARY_LENGTH = 100;
    private Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    private BlogServiceImpl blogService;

    @RequestMapping("NewArticle.action")
    public String addArticlePage() {
        return "/admin/addArticle";
    }

    @RequestMapping("addArticle.json")
    @ResponseBody
    public ReturnEntity addArticle(HttpServletRequest request) {
        logger.info("开始提交文章数据");
        String title = request.getParameter("title");
        String type = request.getParameter("type");
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
        String content = request.getParameter("content");
        String summary = getSummary(content, SUMMARY_LENGTH) + "......";
        String releaseDate = new SimpleDateFormat("yyyy-MM-dd hh:mm").format(new Date());
        blogService.addArticle(title, content, summary, releaseDate, typeID);
        return ReturnEntity.success();
    }

    private String getSummary(String content, int summaryLen) {
        int i = 0;
        String summary = "";
        while (i < content.length() && i <= summaryLen) {
            summary += content.charAt(i++);
        }
        return summary;
    }

    @RequestMapping("editArticle.json")
    @ResponseBody
    public ReturnEntity editArticle(@RequestParam(value = "id") int id, HttpServletRequest request) {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String summary = getSummary(content, SUMMARY_LENGTH) + "......";
        String updateDate = new SimpleDateFormat("yyyy-MM-dd hh:mm").format(new Date());
        blogService.updateArticle(title, content, summary, updateDate, id);
        return ReturnEntity.success();
    }
}