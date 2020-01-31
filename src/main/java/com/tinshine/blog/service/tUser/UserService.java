package com.tinshine.blog.service.tUser;

import com.tinshine.blog.entity.UserEntity;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    public UserEntity searchUser(String name, String pswd);

    public boolean createUser(String name, String email, String pswd);
}
