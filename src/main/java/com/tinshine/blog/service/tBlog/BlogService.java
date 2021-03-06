package com.tinshine.blog.service.tBlog;

import com.tinshine.blog.entity.BlogEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BlogService {
    boolean addArticle(String title, String content, String summary, String releaseDate, int type, String keyword);
    List<BlogEntity> listBlogs();
    BlogEntity getBlogById(int id);
    boolean updateArticle(String title, String content, String summary, String updateDate, int id, String keyword);
    boolean deleteBlogById(int id);
    boolean onClick(int id);

    List<String> listTags();

    List<BlogEntity> listBlogsByTag(String tag);
}
