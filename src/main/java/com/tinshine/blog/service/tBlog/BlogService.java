package com.tinshine.blog.service.tBlog;

import com.tinshine.blog.entity.BlogEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BlogService {
    public boolean addArticle(String title, String content, String summary, String releaseDate, int type);

    List<BlogEntity> listBlogs();

    BlogEntity getBlogById(int id);
}
