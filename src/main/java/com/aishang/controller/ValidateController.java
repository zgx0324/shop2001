package com.aishang.controller;

import cn.dsna.util.images.ValidateCode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Author Harry
 * @ClassName ValidateController
 * @Description TODO:(图形验证码相关)
 */
@RequestMapping("/validate")
@Controller
public class ValidateController {
    @Resource
    private HttpSession session;
    /**
     * 获取验证码图片
     */
    @RequestMapping("/getValidateImg")
    public void getValidateImg(HttpServletResponse response) {
//        设置响应头
//        response.setHeader("Cache-Control", "no-store");
//        response.setHeader("Pragrma", "no-cache");
//        response.setDateHeader("Expires", 0);
        try {
            // 图形验证码核心对象
            ValidateCode validate = new ValidateCode(163, 64, 4, 100);
            String code = validate.getCode();
            System.out.println("本次验证码为："+code);
            session.setAttribute("code",code);
            //输出图片到浏览器端
            validate.write(response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     *校验图形验证码
     */
    @RequestMapping("/checkValidateCode")
    @ResponseBody
    public String checkValidateCode(String code){
        String validateCode = (String) session.getAttribute("code");
        if(code.equalsIgnoreCase(validateCode)){
            return "yes";
        }else{
            return "no";
        }

    }

}
