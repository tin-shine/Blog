package com.tinshine.blog.service.tComment;

import com.tinshine.blog.dao.tComment.ICommentDao;
import com.tinshine.blog.entity.CommentEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    ICommentDao iCommentDao;

    @Override
    public void addComment(String targetIP, int blogId, String comment, String commentDate, int state) {
        iCommentDao.addComment(targetIP, blogId, comment, commentDate, state);
    }

    @Override
    public List<CommentEntity> listByBlogId(int id) {
        return iCommentDao.listByBlogId(id);
    }
}
