package com.tinshine.blog.dao.tBlog;

import com.tinshine.blog.entity.BlogEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IBlogDao {
    boolean addArticle(@Param("title") String title, @Param("content") String content,
                       @Param("summary") String summary, @Param("releaseDate") String releaseDate,
                       @Param("type") int type);

    List<BlogEntity> listBlogs();

    BlogEntity getBlogById(@Param("id") int id);
}
