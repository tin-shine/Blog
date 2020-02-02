package com.tinshine.blog.dao.tBlog;

import org.apache.ibatis.annotations.Param;

public interface IBlogDao {
    boolean addArticle(@Param("title") String title, @Param("content") String content, @Param("type") int type);
}
