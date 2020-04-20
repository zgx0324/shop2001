package com.aishang.controller;

import com.aishang.po.User;
import com.aishang.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Harry
 * @ClassName UserController
 * @Description TODO:(一句话描述这个类)
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;


    @RequestMapping("/userList")
    public String userList(Model model) {
        List<User> allUsers = userService.getAllUsers();
        for (User allUser : allUsers) {
            System.out.println(allUser);
        }
        // 相当于request.setAttribute("",);
        model.addAttribute("users", allUsers);
        return "userList";
    }

    /**
     * 跳转注册页
     */
    @RequestMapping("/toRegister")
    public String toRegister() {
        return "register";
    }

    /**
     * 校验用户名是否重复
     */
    @RequestMapping("/checkUserName")
    @ResponseBody
    public String checkUserName(String userName) {

        //调用UserService校验用户名是否重复
        Integer count = userService.checkUserName(userName);//sql  select count(0) from user where username="tom" 看能否查到数据
        if (count > 0) {
            //用户名重复不可用 response.getWriter().print("no"); 回复ajax请求
            return "no";
        } else {
            //用户名可用 response.getWriter().print("yes");
            return "yes";
        }

    }

    /**
     * 执行注册
     * @return
     */
    @RequestMapping("/doRegister")
    public String doRegister(User user){

        //执行注册
        userService.addUser(user);

        //后台校验
        //user.getUserName(),校验非空
//        if(){
//            //没问题，进入login，
//            return "login";
//        }else{
//            // 有问题返回注册页register.jsp。
//            //  model.addAttribue("user",user);model.addAttribue("msg",msg);
//            return "register";
//        }
        return "login";
    }
}
