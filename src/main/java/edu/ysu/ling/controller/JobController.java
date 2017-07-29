package edu.ysu.ling.controller;

import com.sun.org.apache.regexp.internal.RE;
import edu.ysu.ling.crawlerController.BossZhiPinController;
import edu.ysu.ling.pojo.*;
import edu.ysu.ling.service.ICompanyService;
import edu.ysu.ling.service.IJobLabelsService;
import edu.ysu.ling.service.IRequirementinfoService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Created by 10047 on 2017/5/1.
 */
@Controller
public class JobController {

    private static org.slf4j.Logger logger = LoggerFactory.getLogger(BossZhiPinController.class);
    @Resource
    private IRequirementinfoService requirementinfoService;
    @Resource
    private IJobLabelsService jobLabelsService;
    @Resource
    private ICompanyService companyService;

    @RequestMapping(value = "/job/getJobList.do")
    public String getJobList(String pageName, HttpServletRequest request , Model model , String thispage){
        Map params = new HashMap();
        /*logger.info("pageName = "+pageName);*/
        List<Requirementinfo> list = requirementinfoService.getJobs(params);
        if (StringUtils.isBlank(thispage)){
            thispage = "1";
        }
        Page page = new Page(Integer.parseInt(thispage));
        /*logger.info(list.toString());*/
        model.addAttribute("jobList", list);
        model.addAttribute("page", page);
        model.addAttribute("selectStatus", "1");
        return pageName;
    }

    @RequestMapping(value = "/job/{jobMessageId}")
    public String getJob(@PathVariable("jobMessageId") String jobMessageId,Model model){
        Requirementinfo requirementinfo = requirementinfoService.getJobById(jobMessageId);
        List<String> jobLabelsList = jobLabelsService.findLabelsById(requirementinfo.getJobMessageId());
        Company company = companyService.findCompanyById(requirementinfo.getCompanyId());
        model.addAttribute("Requirementinfo", requirementinfo);
        model.addAttribute("jobLabelsList", jobLabelsList);
        model.addAttribute("company", company);
        model.addAttribute("selectStatus", "1");
        return "jobdetail";
    }

    @RequestMapping(value = "/business/job/getPublishJob.do")
    public String getPublishJob(HttpServletRequest request,Model model) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");
        List<Requirementinfo> requirementinfoList = requirementinfoService.getRequirementinfoByBusinessUser(businessuser.getBusinessUserId());
        model.addAttribute("requirementinfoList", requirementinfoList);
        model.addAttribute("selectStatus", "1");
        return "../jspforbusiness/joblist";
    }

    @RequestMapping(value = "/business/job/addJob.do")
    public String addJob(HttpServletRequest request, Model model,String jobName,String jobType,String jobLabels,String jobCity,String jobAddress,
                         String salaryBottom,String salaryTop,String jobExperience,String jobDescription,String educationLevel) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");

        Requirementinfo requirementinfo = new Requirementinfo();
        requirementinfo.setJobName(jobName);
        requirementinfo.setJobMessageId(UUID.randomUUID().toString());
        requirementinfo.setBusinessUserId(businessuser.getBusinessUserId());
        requirementinfo.setPublishResource("JobFinder");
        requirementinfo.setJobClass(jobType);
        requirementinfo.setJobCity(jobCity);
        requirementinfo.setJobAddress(jobAddress);
        requirementinfo.setCompanyId(businessuser.getCompanyId());

        requirementinfo.setSourceCompanyName(companyService.findCompanyById(businessuser.getCompanyId()).getCompanyName());
        requirementinfo.setSalaryTop(Integer.parseInt(salaryTop));
        requirementinfo.setSalaryBottom(Integer.parseInt(salaryBottom));
        requirementinfo.setSalary(salaryBottom+"k-"+salaryTop+"k");
        if (StringUtils.isNotBlank(jobExperience)) {
            switch (jobExperience) {
                case "exp-0":
                    requirementinfo.setJobExperience("不限");
                    break;
                case "exp-1":
                    requirementinfo.setJobExperience("应届生");
                    break;
                case "exp-2":
                    requirementinfo.setJobExperience("1年以下");
                    requirementinfo.setJobExperienceTop(1);
                    requirementinfo.setJobExperienceBottom(0);
                    break;
                case "exp-3":
                    requirementinfo.setJobExperience("1-3年");
                    requirementinfo.setJobExperienceTop(3);
                    requirementinfo.setJobExperienceBottom(1);

                    break;
                case "exp-4":
                    requirementinfo.setJobExperience("3-5年");
                    requirementinfo.setJobExperienceTop(5);
                    requirementinfo.setJobExperienceBottom(3);
                    break;
                case "exp-5":
                    requirementinfo.setJobExperience("5-10年");
                    requirementinfo.setJobExperienceTop(10);
                    requirementinfo.setJobExperienceBottom(5);
                    break;
                case "exp-6":
                    requirementinfo.setJobExperience("10年以上");
                    requirementinfo.setJobExperienceBottom(10);
                    break;
            }
        }
        if (StringUtils.isNotBlank(educationLevel)) {
            switch (educationLevel) {
                case "edu-0":
                    requirementinfo.setEducationLevel("不限");
                    break;
                case "edu-1":
                    requirementinfo.setEducationLevel("中专及以下");
                    break;
                case "edu-2":
                    requirementinfo.setEducationLevel("高中");
                    break;
                case "edu-3":
                    requirementinfo.setEducationLevel("大专");
                    break;
                case "edu-4":
                    requirementinfo.setEducationLevel("大学");
                    break;
                case "edu-5":
                    requirementinfo.setEducationLevel("硕士");
                    break;
                case "edu-6":
                    requirementinfo.setEducationLevel("博士");
                    break;
            }
        }
        requirementinfo.setJobDescription(jobDescription);
        requirementinfo.setJobDateTime(new Date());
        requirementinfo.setCatchJobTime(new Date());
        requirementinfo.setJobPercent(90);

        if (jobLabels.contains(";")) {
            String[] temp = jobLabels.split(";");
            for (int n=0;n<temp.length;n++) {
                Joblabels joblabels = new Joblabels();
                joblabels.setLabelId(UUID.randomUUID().toString());
                joblabels.setLabels(temp[n]);
                joblabels.setJobMessageId(requirementinfo.getJobMessageId());
            }
        }else {
            Joblabels joblabels = new Joblabels();
            joblabels.setLabelId(UUID.randomUUID().toString());
            joblabels.setLabels(jobLabels);
            joblabels.setJobMessageId(requirementinfo.getJobMessageId());
        }

        requirementinfoService.addJob(requirementinfo);

        return "../jspforbusiness/joblist";
    }

    @RequestMapping(value = "/business/job/getJobDetail.do")
    public String getJobDetail(HttpServletRequest request, Model model, String jobMessageId) {
        Requirementinfo requirementinfo = requirementinfoService.getJobById(jobMessageId);
        model.addAttribute("requirementinfo", requirementinfo);
        return "../jspforbusiness/updatejob";
    }

    @RequestMapping(value = "/business/job/changePublishJob.do")
    public String changePublishJob(HttpServletRequest request, Model model, String jobName,String jobType,String jobLabels,String jobCity,String jobAddress,
                                   String salaryBottom,String salaryTop,String jobExperience,String jobDescription,String educationLevel,String jobMessageId) {
        Requirementinfo requirementinfo = new Requirementinfo();
        requirementinfo.setJobMessageId(jobMessageId);
        requirementinfo.setJobName(jobName);
        requirementinfo.setJobClass(jobType);
        requirementinfo.setJobCity(jobCity);
        requirementinfo.setJobAddress(jobAddress);
        requirementinfo.setSalaryTop(Integer.parseInt(salaryTop));
        requirementinfo.setSalaryBottom(Integer.parseInt(salaryBottom));
        requirementinfo.setSalary(salaryBottom+"k-"+salaryTop+"k");
        if (StringUtils.isNotBlank(jobExperience)) {
            switch (jobExperience) {
                case "exp-0":
                    requirementinfo.setJobExperience("不限");
                    break;
                case "exp-1":
                    requirementinfo.setJobExperience("应届生");
                    break;
                case "exp-2":
                    requirementinfo.setJobExperience("1年以下");
                    requirementinfo.setJobExperienceTop(1);
                    requirementinfo.setJobExperienceBottom(0);
                    break;
                case "exp-3":
                    requirementinfo.setJobExperience("1-3年");
                    requirementinfo.setJobExperienceTop(3);
                    requirementinfo.setJobExperienceBottom(1);

                    break;
                case "exp-4":
                    requirementinfo.setJobExperience("3-5年");
                    requirementinfo.setJobExperienceTop(5);
                    requirementinfo.setJobExperienceBottom(3);
                    break;
                case "exp-5":
                    requirementinfo.setJobExperience("5-10年");
                    requirementinfo.setJobExperienceTop(10);
                    requirementinfo.setJobExperienceBottom(5);
                    break;
                case "exp-6":
                    requirementinfo.setJobExperience("10年以上");
                    requirementinfo.setJobExperienceBottom(10);
                    break;
            }
        }
        if (StringUtils.isNotBlank(educationLevel)) {
            switch (educationLevel) {
                case "edu-0":
                    requirementinfo.setEducationLevel("不限");
                    break;
                case "edu-1":
                    requirementinfo.setEducationLevel("中专及以下");
                    break;
                case "edu-2":
                    requirementinfo.setEducationLevel("高中");
                    break;
                case "edu-3":
                    requirementinfo.setEducationLevel("大专");
                    break;
                case "edu-4":
                    requirementinfo.setEducationLevel("大学");
                    break;
                case "edu-5":
                    requirementinfo.setEducationLevel("硕士");
                    break;
                case "edu-6":
                    requirementinfo.setEducationLevel("博士");
                    break;
            }
        }
        requirementinfo.setJobDescription(jobDescription);
        requirementinfo.setJobDateTime(new Date());

        requirementinfoService.changePublishRequirement(requirementinfo);
        return "../jspforbusiness/joblist";
    }

    @RequestMapping(value = "/business/job/closeJob.do")
    public String closeJob(String jobMessageId,HttpServletRequest request) {

        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");
        Requirementinfo requirementinfo = new Requirementinfo();
        requirementinfo.setJobMessageId(jobMessageId);

        requirementinfoService.closePublishRequirement(requirementinfo);

        return "../jspforbusiness/joblist";
    }
}
