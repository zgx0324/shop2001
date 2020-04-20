package com.aishang.dao;

import com.aishang.po.User;

import java.util.List;

/**
 * @Author Harry
 * @ClassName UserDao
 * @Description TODO:(一句话描述这个类)
 */
public interface UserDao {
    /**
     * 查询全部用户数据
     * select*from user
     * @return
     */
    List<User> getAllUsers();

    /**
     * 校验用户名是否重复
     * @param userName 用户名
     * @return 叫该用户名的总人数
     */
    Integer checkUserName(String userName);

    /**
     * 注册用户
     * @param user
     */
    void addUser(User user);
}
