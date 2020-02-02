package com.tinshine.blog.service.tBlog;

import org.springframework.stereotype.Service;

@Service
public interface BlogService {
    public boolean addArticle(String title, String content, int type);
}
