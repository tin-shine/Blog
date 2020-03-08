package com.tinshine.blog.service.tComment;

import com.tinshine.blog.entity.CommentEntity;

import java.util.List;

public interface CommentService {
    void addComment(String targetIP, int blogId, String comment, String commentDate, int state);

    List<CommentEntity> listByBlogId(int id);
}
