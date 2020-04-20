package com.aishang.service.impl;

import com.aishang.dao.UserDao;
import com.aishang.po.User;
import com.aishang.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Harry
 * @ClassName UserServiceImpl
 * @Description TODO:(一句话描述这个类)
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    @Override
    public List<User> getAllUsers() {

        return userDao.getAllUsers();
    }

    @Override
    public Integer checkUserName(String userName) {
        return userDao.checkUserName(userName);
    }

    /**
     * 执行注册
     * @param user
     */
    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }
}
