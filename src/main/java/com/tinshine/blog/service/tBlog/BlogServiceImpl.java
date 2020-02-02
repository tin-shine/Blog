package com.tinshine.blog.service.tBlog;

import com.tinshine.blog.dao.tBlog.IBlogDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BlogService")
public class BlogServiceImpl implements BlogService {

    @Autowired
    public IBlogDao iBlogDao;

    @Override
    public boolean addArticle(String title, String content, int type) {
        return iBlogDao.addArticle(title, content, type);
    }
}
