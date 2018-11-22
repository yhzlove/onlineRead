package com.javaer.onlineReading.web;

import com.alibaba.fastjson.JSONObject;
import com.javaer.onlineReading.entity.User;
import com.javaer.onlineReading.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

/**
 * 用户控制类
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;



    @RequestMapping(value="/back/login",method=RequestMethod.GET)
    public String login(HttpSession session) {
        User loginUser = (User) session.getAttribute("loginUser");
        if(loginUser != null){
            String role = loginUser.getRole();
            if("member".equals(role)) {
                return "redirect:/";
            }else{
                return "redirect:/back/index";
            }
        }else{
            return "/back/login";
        }
    }


    @RequestMapping(value="/back/login",method=RequestMethod.POST)
    @ResponseBody
    public String loginPOST(@RequestParam("loginName") String loginName,
                          @RequestParam("password") String password, HttpSession session) {
        ModelAndView view = new ModelAndView();
        User user = userService.login(loginName);
        String msg = "success";
        if(user == null) {
            msg ="用户不存在!";
        }else if(password == null || !password.equals(user.getPassword()) ){
            msg ="密码不正确!";
        }else {
            session.setAttribute("loginUser", user);
        }
        return msg;
    }

    //@GetMapping("/back/loginOut")
    @RequestMapping(value="/back/loginOut",method=RequestMethod.GET)
    public String loginOut(HttpSession session) {
       session.removeAttribute("loginUser");
        return "/back/login";
    }
    //@GetMapping("/view/loginOut")
    @RequestMapping(value="/view/loginOut",method=RequestMethod.GET)
    public String viewloginOut(HttpSession session) {
        session.removeAttribute("loginUser");
        return "redirect:/";
    }



    //@PostMapping("user/login")
    @RequestMapping(value="/user/login",method=RequestMethod.POST)
    @ResponseBody
    public String userLogin(@RequestParam("loginName") String loginName,
                                  @RequestParam("password") String password,HttpSession session) {

        User user = userService.login(loginName);
        String msg = "";
        if(user == null) {
            msg ="用户不存在!";
        }else if(password == null || !password.equals(user.getPassword()) ){
            msg ="密码不正确!";
        }else {
            session.setAttribute("loginUser", user);
            msg ="success";
        }

        return msg;
    }

    //@PostMapping("user/regist")
    @RequestMapping(value="/user/regist",method=RequestMethod.POST)
    @ResponseBody
    public String userRegist(User registUser,HttpSession session) {
        int save = userService.save(registUser);

        String userId = registUser.getId();
        String msg = "";
        if(userId == null) {
            msg ="注册失败!";
        }else {
            User user = userService.getOne(userId);
            session.setAttribute("loginUser", user);
            msg ="success";
        }

        return msg;
    }

    //@GetMapping("/back/userList")
    @RequestMapping(value="/back/userList",method=RequestMethod.GET)
    public ModelAndView userList() {
        ModelAndView view = new ModelAndView();

        List<User> userList = userService.getList();
        String returnUrl = "/back/user/userList";
        view.setViewName(returnUrl);
        view.addObject("userList",userList);
        return view;
    }

    //@GetMapping("/back/userAdd")
    @RequestMapping(value="/back/userAdd",method=RequestMethod.GET)
    public ModelAndView userAdd() {
        ModelAndView view = new ModelAndView();

        String returnUrl = "/back/user/userUpdate";
        view.setViewName(returnUrl);
        return view;
    }

    //@GetMapping("/back/userUpdate")
    @RequestMapping(value="/back/userUpdate",method=RequestMethod.GET)
    public ModelAndView userUpdate(@RequestParam("id") String id) {
        ModelAndView view = new ModelAndView();
        User user = userService.getOne(id);
        view.addObject("user",user);
        String returnUrl = "/back/user/userUpdate";
        view.setViewName(returnUrl);
        return view;
    }


    //@PostMapping("/back/userSave")
    @RequestMapping(value="/back/userSave",method=RequestMethod.POST)
    public String userSave(User user) {
        //ModelAndView view = new ModelAndView();
        userService.save(user);
        //String returnUrl;
        //if(1 != null){
            //returnUrl = "redirect:/back/userList";
       /* }else{
            returnUrl = "/back/login";
        }*/
        //view.setViewName(returnUrl);
        return "redirect:userList";
    }

    //@GetMapping("/back/userDelete")
    @RequestMapping(value="/back/userDelete",method=RequestMethod.GET)
    public String userDelete(String id) {
        userService.delete(id);
        return "redirect:userList";
    }
}
