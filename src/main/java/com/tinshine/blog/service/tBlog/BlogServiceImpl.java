package com.tinshine.blog.service.tBlog;

import com.tinshine.blog.dao.tBlog.IBlogDao;
import com.tinshine.blog.entity.BlogEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("BlogService")
public class BlogServiceImpl implements BlogService {

    @Autowired
    public IBlogDao iBlogDao;

    @Override
    public boolean addArticle(String title, String content, String summary, String releaseDate, int type) {
        return iBlogDao.addArticle(title, content, summary, releaseDate, type);
    }

    @Override
    public List<BlogEntity> listBlogs() {
        return iBlogDao.listBlogs();
    }

    @Override
    public BlogEntity getBlogById(int id) {
        return iBlogDao.getBlogById(id);
    }

    @Override
    public boolean updateArticle(String title, String content, String summary, String updateDate, int id) {
        return iBlogDao.updateArticle(title, content, summary, updateDate, id);
    }

    @Override
    public boolean deleteBlogById(int id) {
        return iBlogDao.deleteBlogById(id);
    }
}
