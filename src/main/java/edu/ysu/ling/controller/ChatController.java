package edu.ysu.ling.controller;

import edu.ysu.ling.pojo.*;
import edu.ysu.ling.service.IChatService;
import edu.ysu.ling.service.IRequirementinfoService;
import edu.ysu.ling.service.IResumeService;
import edu.ysu.ling.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.*;


/**
 * Created by ling on 2017/5/17.
 */
@Controller
public class ChatController {
    private static Logger logger = LoggerFactory.getLogger(ChatController.class);
    @Resource
    private IChatService chatService;
    @Resource
    private IRequirementinfoService requirementinfoService;
    @Resource
    private IResumeService resumeService;
    @Resource
    private IUserService userService;



    @RequestMapping(value = "/user/chat/getChats.do")
    public String getChatList(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("userinfo");
        //logger.info("userId = "+user.getAccount());
        List<Chatmessage> chatmessageList = chatService.getAllChatForUser(user.getUserId());
        //logger.info(chatmessageList.size()+"");
        model.addAttribute("chatmessageList", chatmessageList);
        model.addAttribute("selectStatus", "1");
        return "chat";
    }

    @RequestMapping(value = "/user/chat/getChatDeatil.do")
    public String getChatDetail(Model model,HttpServletRequest request,String businessUserId,String jobMessageId){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("userinfo");
        Map<String, String> params = new HashMap<>();
        params.put("userId", user.getUserId());
        params.put("businessUserId", businessUserId);
        List<Chatmessage> chatmessageList = chatService.getChatDetail(params);

        Requirementinfo requirementinfo = requirementinfoService.getJobById(jobMessageId);

        model.addAttribute("chatmessageList", chatmessageList);
        model.addAttribute("requirementinfo", requirementinfo);
        return "chatdetail";
    }

    @RequestMapping(value = "/user/chat/sendChatMessage.do")
    public String sendChatMessage(Model model,HttpServletRequest request,String message,String businessUserId,String jobMessageId) {
        try {
            logger.info(URLDecoder.decode(message,"utf-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("userinfo");
        Chatmessage chatmessage = new Chatmessage();

        chatmessage.setBusinessUserId(businessUserId);
        chatmessage.setChatDateTime(new Date());
        chatmessage.setChatId(UUID.randomUUID().toString());
        chatmessage.setUserId(user.getUserId());
        try {
            chatmessage.setChatInfo(URLDecoder.decode(message,"utf-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        chatmessage.setSendFrom("1");
        chatmessage.setJobMessageId(jobMessageId);

        chatService.addChat(chatmessage);

        Map<String, String> params = new HashMap<>();
        params.put("userId", user.getUserId());
        params.put("businessUserId", businessUserId);
        List<Chatmessage> chatmessageList = chatService.getChatDetail(params);

        Requirementinfo requirementinfo = requirementinfoService.getJobById(jobMessageId);

        model.addAttribute("chatmessageList", chatmessageList);
        model.addAttribute("requirementinfo", requirementinfo);
        return "chatdetail";
    }

    @RequestMapping(value = "/user/chat/addChatMessage.do")
    public String addChatMessage(Model model,String jobMessageId,String businessUserId,String chatInfo,HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");

        Chatmessage chatmessage = new Chatmessage();
        chatmessage.setSendFrom("1");
        if (chatInfo == null) {
            chatInfo = "你好，我想和您聊聊这个职位，希望得到您的回复。";
        }
        chatmessage.setChatInfo(chatInfo);
        chatmessage.setUserId(user.getUserId());
        chatmessage.setJobMessageId(jobMessageId);
        chatmessage.setBusinessUserId(businessUserId);

        chatService.addChat(chatmessage);

        return "chat";
    }

    @RequestMapping(value = "/business/chat/getChats.do")
    public String getChatListForBusiness(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");

        List<Chatmessage> chatmessageList = chatService.getAllChatForBusiness(businessuser.getBusinessUserId());
        List<Resume> resumeList = new ArrayList<>();
        for (Chatmessage chatmessage : chatmessageList) {
            resumeList.add(resumeService.getResumes(chatmessage.getUserId()));
        }

        model.addAttribute("resumeList", resumeList);
        model.addAttribute("selectStatus", "1");
        return "../jspforbusiness/chatforbusiness";
    }

    @RequestMapping(value = "/business/chat/getChatDetail.do")
    public String getChatDetailForBusiness(Model model,HttpServletRequest request,String userId,String jobMessageId){
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");
        Map<String, String> params = new HashMap<>();
        params.put("userId", userId);
        params.put("businessUserId", businessuser.getBusinessUserId());
        params.put("jobMessageId", jobMessageId);
        List<Chatmessage> chatmessageList2 = chatService.getChatDetail(params);

        List<Chatmessage> chatmessageList = chatService.getAllChatForBusiness(businessuser.getBusinessUserId());
        List<Resume> resumeList = new ArrayList<>();
        for (Chatmessage chatmessage : chatmessageList) {
            resumeList.add(resumeService.getResumes(chatmessage.getUserId()));
        }

        Resume resume = resumeService.getResumes(userId);
        User user = userService.findUserByUserId(userId);

        model.addAttribute("user", user);
        model.addAttribute("resume", resume);
        model.addAttribute("jobMessageId", jobMessageId);
        model.addAttribute("resumeList", resumeList);
        model.addAttribute("chatmessageList", chatmessageList2);
        model.addAttribute("selectStatus", "1");
        return "../jspforbusiness/chatforbusiness";
    }

    @RequestMapping(value = "/business/chat/sendChatMessage.do")
    public String sendChatMessageForBusiness(Model model,HttpServletRequest request,String message,String userId,String jobMessageId) {
        try {
            logger.info(URLDecoder.decode(message,"utf-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");
        Chatmessage chatmessage = new Chatmessage();

        chatmessage.setBusinessUserId(businessuser.getBusinessUserId());
        chatmessage.setChatDateTime(new Date());
        chatmessage.setJobMessageId(jobMessageId);
        chatmessage.setChatId(UUID.randomUUID().toString());
        chatmessage.setUserId(userId);
        try {
            chatmessage.setChatInfo(URLDecoder.decode(message,"utf-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        chatmessage.setSendFrom("0");
        chatmessage.setJobMessageId(jobMessageId);

        chatService.addChat(chatmessage);

        Map<String, String> params = new HashMap<>();
        params.put("userId", userId);
        params.put("businessUserId", businessuser.getBusinessUserId());
        List<Chatmessage> chatmessageList = chatService.getChatDetail(params);

        Requirementinfo requirementinfo = requirementinfoService.getJobById(jobMessageId);

        List<Chatmessage> chatmessageList2 = chatService.getAllChatForBusiness(businessuser.getBusinessUserId());
        List<Resume> resumeList = new ArrayList<>();
        for (Chatmessage chatmessage2 : chatmessageList2) {
            resumeList.add(resumeService.getResumes(chatmessage2.getUserId()));
        }

        User user = userService.findUserByUserId(userId);

        model.addAttribute("user", user);
        model.addAttribute("resumeList", resumeList);
        model.addAttribute("jobMessageId", jobMessageId);
        model.addAttribute("chatmessageList", chatmessageList);
        model.addAttribute("requirementinfo", requirementinfo);
        model.addAttribute("selectStatus", "1");
        return "../jspforbusiness/chatforbusiness";
    }

    @RequestMapping(value = "/business/chat/addChatMessage.do")
    public String addChatMessageForBusiness(Model model,String jobMessageId,String userId,HttpServletRequest request) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");

        Chatmessage chatmessage = new Chatmessage();
        chatmessage.setSendFrom("0");
        chatmessage.setChatInfo("你好，我有适合您的职位，希望得到您的回复。");
        chatmessage.setUserId(userId);
        chatmessage.setJobMessageId(jobMessageId);
        chatmessage.setBusinessUserId(businessuser.getBusinessUserId());

        chatService.addChat(chatmessage);

        return "../jspforbusiness/chatforbusiness";
    }
}
