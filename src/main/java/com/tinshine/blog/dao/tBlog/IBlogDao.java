package com.tinshine.blog.dao.tBlog;

import com.tinshine.blog.entity.BlogEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IBlogDao {
    boolean addArticle(@Param("title") String title, @Param("summary") String summary,
                       @Param("releaseDate") String releaseDate, @Param("content") String content,
                       @Param("clickCnt") int clickCnt, @Param("replyCnt") int replyCnt,
                       @Param("type") int type, @Param("keyword") String keyword);
    List<BlogEntity> listBlogs();
    BlogEntity getBlogById(@Param("id") int id);
    boolean updateArticle(@Param("title") String title, @Param("content") String content, @Param("summary") String summary,
                          @Param("updateDate") String updateDate, @Param("id") int id, @Param("keyword") String keyword);
    boolean deleteBlogById(@Param("id") int id);
    boolean onClick(@Param("id") int id);

    List<String> listTags();

    List<BlogEntity> listByTag(String tag);
}
