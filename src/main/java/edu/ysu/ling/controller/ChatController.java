package edu.ysu.ling.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



/**
 * Created by ling on 2017/5/17.
 */
@Controller
public class ChatController {
    private static Logger logger = LoggerFactory.getLogger(ChatController.class);



    @RequestMapping(value = "/chat/getChats.do")
    public String getChatList() {

        return "chat";
    }
}
