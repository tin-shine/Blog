package com.tinshine.blog.service.tUser;

import com.tinshine.blog.dao.tUser.IUserDao;
import com.tinshine.blog.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserService")
public class UserServiceImpl implements UserService {

    @Autowired
    public IUserDao iUserDao;

    @Override
    public UserEntity searchUser(String name, String pswd) {
        return iUserDao.searchUser(name, pswd);
    }
            }