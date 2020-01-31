package com.tinshine.blog.dao.tUser;

import com.tinshine.blog.entity.UserEntity;
import org.apache.ibatis.annotations.Param;

public interface IUserDao {
    UserEntity searchUser(@Param("name") String name, @Param("pswd") String pswd);

    boolean createUser(@Param("name") String name, @Param("email") String email, @Param("pswd") String pswd);
}