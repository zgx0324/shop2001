package com.aishang.service;

import com.aishang.po.User;

import java.util.List;

/**
 * @Author Harry
 * @ClassName UserService
 * @Description TODO:(一句话描述这个类)
 */
public interface UserService {

    /**
     * 查询全部用户数据
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
     * 执行注册
     * @param user
     */
    void addUser(User user);
}
