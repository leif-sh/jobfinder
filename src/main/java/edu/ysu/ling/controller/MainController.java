package edu.ysu.ling.controller;

import edu.ysu.ling.pojo.User;
import edu.ysu.ling.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by 10047 on 2017/4/3.
 */
@Controller
public class MainController {

    @Resource
    private IUserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/getUser/{userId}",method = RequestMethod.GET)
    public String getUser(String userId, Model model){
        User user = userService.findUserByUserId("1001");
        model.addAttribute("user", user);
        return "test";
    }
}
