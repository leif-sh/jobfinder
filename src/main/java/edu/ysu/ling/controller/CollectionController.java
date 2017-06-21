package edu.ysu.ling.controller;

import edu.ysu.ling.pojo.Collectionjob;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.pojo.User;
import edu.ysu.ling.service.ICollectionService;
import edu.ysu.ling.service.IRequirementinfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by ling on 2017/5/16.
 */
@Controller
public class CollectionController {

    private static Logger logger = LoggerFactory.getLogger(CollectionController.class);
    @Resource
    private ICollectionService collectionService;
    @Resource
    private IRequirementinfoService requirementinfoService;

    @RequestMapping(value = "/user/collection/getCollections.do")
    public String getCollections(Model model,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");

        List<Collectionjob> collectionjobList = collectionService.getCollections(user.getUserId());

        for (Collectionjob collectionjob : collectionjobList) {
            collectionjob.setRequirementinfo(requirementinfoService.getJobById(collectionjob.getJobMessageId()));
        }
        model.addAttribute("collectionjobList", collectionjobList);
        model.addAttribute("selectStatus", "1");
        return "collect";
    }

    @RequestMapping(value = "/user/collection/addCollection.do")
    public String addCollectionJob(Model model, HttpServletRequest request,String jobMessageId){
        Collectionjob collectionjob = new Collectionjob();
        collectionjob.setCollectionDate(new Date());
        collectionjob.setCollectionId(UUID.randomUUID().toString());
        collectionjob.setJobMessageId(jobMessageId);
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");
        collectionjob.setUserId(user.getUserId());

        collectionService.addCollection(collectionjob);
        return "collect";
    }

    @RequestMapping(value = "/user/collection/cancelCollection.do")
    public String cancelCollectionJob(Model model,HttpServletRequest request,String collectionId){
        Collectionjob collectionjob = new Collectionjob();
        collectionjob.setCollectionId(collectionId);
        collectionService.cancelCollection(collectionjob);
        return "collect";
    }

    public ICollectionService getCollectionService() {
        return collectionService;
    }

    public void setCollectionService(ICollectionService collectionService) {
        this.collectionService = collectionService;
    }
}
