package dev.yhp.study.mb.services.impl;


import dev.yhp.study.mb.mappers.UserDao;
import dev.yhp.study.mb.model.UserVo;
import dev.yhp.study.mb.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public List<UserVo> list() {
        return userDao.listAll();
    }
}
