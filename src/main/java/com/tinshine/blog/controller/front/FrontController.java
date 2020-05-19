package com.tinshine.blog.controller.front;

import com.tinshine.blog.entity.BlogEntity;
import com.tinshine.blog.entity.CommentEntity;
import com.tinshine.blog.service.tBlog.BlogServiceImpl;
import com.tinshine.blog.service.tComment.CommentService;
import com.tinshine.mkd2html.MainCompiler;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("front")
public class FrontController {

    @Autowired
    private BlogServiceImpl blogService;

    @Autowired
    CommentService commentService;

//    private Logger logger = Logger.getLogger(this.getClass());
    public final int PAGE_CAPACITY = 8;
    public List<BlogEntity> tBlogs; // total blogs，只初始化一次，用于存放博文列表，减少数据库访问

    @RequestMapping("index.action")
    public String index() {
        return "/front/index";
    }

    // articles.action参数，session存放页面偏移量，map传递博客总表给jsp页面，pageCnt指示应该显示哪一页博客表
    @RequestMapping("articles.action")
    public String article(HttpSession session, ModelMap map, @RequestParam(value = "pageCount") int pageCnt) {
        List<BlogEntity> blogs;
        if (tBlogs == null || pageCnt == 0) {
            tBlogs = blogService.listBlogs();
            pageCnt = (pageCnt == 0 ? 1 : pageCnt);
        }
        blogs = tBlogs;
        List<BlogEntity> blogsDivision = currentPage(blogs, pageCnt, session);
        map.put("blogs", blogsDivision);
        return "/front/article";
    }

    public List<BlogEntity> currentPage(List<BlogEntity> blogs, int pageCnt, HttpSession session) {
        int blogsNum = blogs.size();
        int maxPageNum = blogsNum % PAGE_CAPACITY == 0 ? blogsNum / PAGE_CAPACITY : blogsNum / PAGE_CAPACITY + 1;
        if (pageCnt > maxPageNum || pageCnt == -1) {
            pageCnt = maxPageNum;
        }
        List<BlogEntity> blogsDivision = new ArrayList<>();
        for (int i = (pageCnt - 1) * PAGE_CAPACITY; i < pageCnt * PAGE_CAPACITY && i < blogsNum; i++) {
            blogsDivision.add(blogs.get(i));
        }
        String pagePosition = "mid";
        if (pageCnt == 1 && pageCnt == maxPageNum) {
            pagePosition = "first-only";
        } else if (pageCnt == 1) {
            pagePosition = "first";
        } else if (pageCnt == maxPageNum) {
            pagePosition = "last";
        }
        session.setAttribute("pagePosition", pagePosition);
        session.setAttribute("pageCount", pageCnt);
        return blogsDivision;
    }

    @RequestMapping("detail.action")
    public String showDetail(ModelMap map, @RequestParam(value = "id") int id) {
        blogService.onClick(id);
        BlogEntity blogDetail = blogService.getBlogById(id);
        String content = new MainCompiler().transform(blogDetail.getContent());
        blogDetail.setContent(content);
        map.put("blog", blogDetail);
        List<CommentEntity> comments = commentService.listByBlogId(id);
        for (CommentEntity comment : comments) {
            int randomNumber = (int) (Math.random() * 10000);
            comment.setName(comment.getTargetIP() + randomNumber);
        }
        map.put("comments", comments);
        return "/front/detail";
    }

    @RequestMapping("randomPage.action")
    public String randomPage(ModelMap map) {
        List<BlogEntity> blogs;
        if (tBlogs == null)
            tBlogs = blogService.listBlogs();
        blogs = tBlogs;
        List<Integer> blogsId = new ArrayList<>();
        for (BlogEntity blog: blogs) {
            blogsId.add(blog.getId());
        }
        int num = (int) (Math.random() * blogsId.size());
        int id = blogsId.get(num);
        return showDetail(map, id);
    }

    @RequestMapping("review.action")
    @ResponseBody
    public String review(String review, int blogId) {
        commentService.addComment("", blogId, review, new SimpleDateFormat("YYMMdd").format(new Date()), 0);
        return "success";
    }

    @RequestMapping("about.action")
    public String about() {
        return "/front/aboutMe";
    }

    @RequestMapping("tag.action")
    public String tag(Model map) {
        List<String> tags = blogService.listTags();
        map.addAttribute("tags", tags);
        return "/front/tags";
    }

    @RequestMapping("searchTag.action")
    public String searchTag(String tag, Model map, HttpSession session) {
        List<BlogEntity> blogs = blogService.listBlogsByTag(tag);
        tBlogs = blogs;
        map.addAttribute("blogs", currentPage(blogs, 1, session));  // blogs in current page
        return "/front/article";
    }
}
