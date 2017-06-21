package edu.ysu.ling.controller;

import com.sun.org.apache.bcel.internal.generic.MONITORENTER;
import edu.ysu.ling.pojo.*;
import edu.ysu.ling.service.IPersonService;
import edu.ysu.ling.service.IResumeService;
import edu.ysu.ling.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by 10047 on 2017/6/13.
 */
@Controller
public class PersonController {
    private static Logger logger = LoggerFactory.getLogger(PersonController.class);
    @Resource
    private IPersonService personService;
    @Resource
    private IResumeService resumeService;

    @RequestMapping(value = "/business/dreamperson/getDreamPerson.do")
    public String getDreamPerson(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");

        Dreamperson dreamperson = personService.getDreamPerson(businessuser.getBusinessUserId());
        model.addAttribute("dreamperson", dreamperson);
        model.addAttribute("selectStatus", "1");
        return "../jspforbusiness/recommendperson";
    }

    @RequestMapping(value = "/business/dreamperson/changeDreamPerson.do")
    public String changeDreamPerson(Model model, HttpServletRequest request,String dreamPersonType,String dreamPersonWorkExperience,String dreamPersonEducation,
                                    String dreamPersonSalaryTop,String dreamPersonCity) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");

        Dreamperson dreamperson = new Dreamperson();
        dreamperson.setBusinessUserId(businessuser.getBusinessUserId());
        dreamperson.setDreamPersonType(dreamPersonType);
        if (dreamPersonWorkExperience.equals("exp-0")) {
            dreamperson.setDreamPersonWorkExperience("不限");
        } else if (dreamPersonWorkExperience.equals("exp-1")) {
            dreamperson.setDreamPersonWorkExperience("应届生");
        } else if (dreamPersonWorkExperience.equals("exp-2")) {
            dreamperson.setDreamPersonWorkExperience("1年以下");
        } else if (dreamPersonWorkExperience.equals("exp-3")) {
            dreamperson.setDreamPersonWorkExperience("1-3年");
        } else if (dreamPersonWorkExperience.equals("exp-4")) {
            dreamperson.setDreamPersonWorkExperience("3-5年");
        } else if (dreamPersonWorkExperience.equals("exp-5")) {
            dreamperson.setDreamPersonWorkExperience("5-10年");
        } else if (dreamPersonWorkExperience.equals("exp-6")) {
            dreamperson.setDreamPersonWorkExperience("10年以上");
        }

        if (dreamPersonEducation.equals("edu-0")) {
            dreamperson.setDreamPersonEducation("不限");
        } else if (dreamPersonEducation.equals("edu-1")) {
            dreamperson.setDreamPersonEducation("中专以下");
        } else if (dreamPersonEducation.equals("edu-2")) {
            dreamperson.setDreamPersonEducation("高中");
        } else if (dreamPersonEducation.equals("edu-3")) {
            dreamperson.setDreamPersonEducation("大专");
        } else if (dreamPersonEducation.equals("edu-4")) {
            dreamperson.setDreamPersonEducation("本科");
        } else if (dreamPersonEducation.equals("edu-5")) {
            dreamperson.setDreamPersonEducation("硕士");
        } else if (dreamPersonEducation.equals("edu-6")) {
            dreamperson.setDreamPersonEducation("博士");
        }

        dreamperson.setDreamPersonSalaryTop(Integer.parseInt(dreamPersonSalaryTop));
        dreamperson.setDreamPersonCity(dreamPersonCity);

        personService.changeDreamPerson(dreamperson);

        return "../jspforbusiness/recommendperson";
    }

    @RequestMapping(value = "/business/personrecommend/getRecommendPerson.do")
    public String getRecommendPerson(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");

        List<Personrecommend> personrecommendList = personService.findPersonRecommendByBusinessId(businessuser.getBusinessUserId());
        List<Resume> resumeList = new ArrayList<>();
        for (Personrecommend personrecommend : personrecommendList) {
            resumeList.add(resumeService.getResumes(personrecommend.getUserId()));
        }

        model.addAttribute("resumeList", resumeList);
        model.addAttribute("selectStatus", "1");
        return "../jspforbusiness/personlist";
    }

    @RequestMapping(value = "/business/personlibrary/getPersonLibrary.do")
    public String getPersonLibrary(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");

        List<Personlibrary> personlibraryList = personService.findPersonLibraryByBusinessUserId(businessuser.getBusinessUserId());
        List<Resume> resumeList = new ArrayList<>();
        for (Personlibrary personlibrary : personlibraryList) {
            resumeList.add(resumeService.getResumes(personlibrary.getUserId()));
        }

        model.addAttribute("resumeList", resumeList);
        model.addAttribute("selectStatus", "1");
        return "../jspforbusiness/personlist";
    }

    @RequestMapping(value = "/business/personlibrary/addInPersonLibrary.do")
    public String addInPersonLibrary(HttpServletRequest request, Model model, String userId) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");

        Personlibrary personlibrary = new Personlibrary();
        personlibrary.setUserId(userId);
        personlibrary.setCollectDate(new Date());
        personlibrary.setLibraryId(UUID.randomUUID().toString());
        personlibrary.setBusinessUserId(businessuser.getBusinessUserId());

        personService.addPersonLibrary(personlibrary);
        return "../jspforbusiness/personlist";
    }
}
