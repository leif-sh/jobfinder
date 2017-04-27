package edu.ysu.ling.controller;

import edu.ysu.ling.crawlerController.BossZhiPinController;
import edu.ysu.ling.pojo.User;
import edu.ysu.ling.service.IUserService;
import org.slf4j.LoggerFactory;
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

    private static org.slf4j.Logger logger = LoggerFactory.getLogger(BossZhiPinController.class);
    @Resource
    private IUserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    /*@RequestMapping(value = "/getUser/{userId}",method = RequestMethod.GET)
    public String getUser(@PathVariable("userId") String userId, Model model){
        User user = userService.findUserByUserId("1001");
        logger.info("userId----------"+userId);
        model.addAttribute("user", user);
        return "test";
    }*/

    @RequestMapping(value = "/User/register.do" , method = RequestMethod.POST)
    public String RegisterUser(String account,String passwrod,Model model){
        User user = new User();
        user.setAccount(account);
        user.setPassword(passwrod);
        logger.info("1");
        user = userService.addUser(user);
        logger.info("2");
        model.addAttribute("userInfo", user);
        return "index";
    }
}
