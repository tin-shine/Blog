package com.tinshine.blog.controller.front;

import com.tinshine.MarkdownTranslator.MainCompiler;
import com.tinshine.blog.entity.BlogEntity;
import com.tinshine.blog.service.tBlog.BlogServiceImpl;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("front")
public class FrontController {

    @Autowired
    private BlogServiceImpl blogService;

    private Logger logger = Logger.getLogger(this.getClass());
    public final int PAGE_CAPACITY = 8;

    @RequestMapping("index.action")
    public String index() {
        return "/front/index";
    }

    @RequestMapping("articles.action")
    public String article(HttpServletRequest request, ModelMap map, @RequestParam(value = "pageCount") int pageCnt) {
        List<BlogEntity> blogs = blogService.listBlogs();
        int blogsNum = blogs.size();
        int maxPageNum = blogsNum % PAGE_CAPACITY == 0 ? blogsNum / PAGE_CAPACITY : blogsNum / PAGE_CAPACITY + 1;
        logger.info("查询到的文章数：" + blogsNum);
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
        logger.info("第" + pageCnt + "页展示文章数：" + blogsDivision.size());
        logger.info("page位置：" + pagePosition);
        request.getSession().setAttribute("pagePosition", pagePosition);
        request.getSession().setAttribute("pageCount", pageCnt);
        map.put("blogs", blogsDivision);
        return "/front/article";
    }

    @RequestMapping("detail.action")
    public String showDetail(ModelMap map, @RequestParam(value = "id") int id) {
        BlogEntity blogDetail = blogService.getBlogById(id);
        String content = new MainCompiler().transform(blogDetail.getContent());
        blogDetail.setContent(content);
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
