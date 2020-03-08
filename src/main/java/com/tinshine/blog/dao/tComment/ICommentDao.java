package com.tinshine.blog.dao.tComment;

import com.tinshine.blog.entity.CommentEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ICommentDao {
    void addComment(@Param("targetIP") String targetIP, @Param("blogId") int blogId, @Param("comment") String comment,
                    @Param("commentDate") String commentDate, @Param("state") int state);

    List<CommentEntity> listByBlogId(@Param("id") int id);
}
