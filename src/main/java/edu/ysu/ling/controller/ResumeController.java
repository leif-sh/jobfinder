package edu.ysu.ling.controller;

import edu.ysu.ling.pojo.*;
import edu.ysu.ling.service.IResumeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by 10047 on 2017/6/7.
 */
@Controller
public class ResumeController {
    private static Logger logger = LoggerFactory.getLogger(ResumeController.class);
    @Resource
    private IResumeService resumeService;

    @RequestMapping(value = "/user/resume/getResume.do")
    public String getResume(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");
        Resume resume = resumeService.getResumes(user.getUserId());
        model.addAttribute("resume", resume);
        model.addAttribute("selectStatus", "1");
        return "resume";
    }

    @RequestMapping(value = "/user/resume/addResume.do")
    public String addResume(Model model, HttpServletRequest request,String resumeName,String resumeEducationLevel,String resumeWorkExperience,String resumeCity,String resumePhone) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");
        Resume resume = resumeService.getResumes(user.getUserId());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            if (resume == null) {
                resume = new Resume();
                resume.setUserId(user.getUserId());
                resume.setResumeName(resumeName);
                resume.setResumeEducationLevel(resumeEducationLevel);
                resume.setResumeWorkingExperienceTime(Integer.parseInt(resumeWorkExperience));
                resume.setResumeCity(resumeCity);
                resume.setResumePhone(resumePhone);
                resume.setUpdateTime(new Date());
                if (!resumeService.addResume(resume)){
                    model.addAttribute("errorMessage", "添加信息失败");
                }
            }else {
                resume.setUserId(user.getUserId());
                resume.setResumeName(resumeName);
                resume.setResumeEducationLevel(resumeEducationLevel);
                resume.setResumeWorkingExperienceTime(Integer.parseInt(resumeWorkExperience));
                resume.setResumeCity(resumeCity);
                resume.setResumePhone(resumePhone);
                resume.setUpdateTime(new Date());
                resumeService.changeResume(resume);
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("errorMessage", "添加信息失败");
        }
        return "resume";
    }

    @RequestMapping(value = "/user/resume/addDreamJob.do")
    public String addDreamJob(Model model,HttpServletRequest request, String dreamJobName, String dreamJobType, String dreamJobCity, String dreamSalaryTop, String dreamSalaryBottom, String jobPush) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");
        Resume resume = resumeService.getResumes(user.getUserId());

        Dreamjob dreamjob = resumeService.getDreamJobs(resume.getResumeId());
        if (dreamjob == null) {
            dreamjob = new Dreamjob();
            dreamjob.setResumeId(resume.getResumeId());
            dreamjob.setDreamJobId(UUID.randomUUID().toString());
            dreamjob.setUserId(user.getUserId());
            dreamjob.setDreamJobCity(dreamJobCity);
            dreamjob.setDreamJobName(dreamJobName);
            dreamjob.setDreamJobType(dreamJobType);
            dreamjob.setDreamSalaryTop(Integer.parseInt(dreamSalaryTop));
            dreamjob.setDreamSalaryBottom(Integer.parseInt(dreamSalaryBottom));
            dreamjob.setJobPush(jobPush);
            if (!resumeService.addDreamJob(dreamjob)){
                model.addAttribute("errorMessage", "添加期望工作失败");
            }
        }else {
            dreamjob.setDreamJobCity(dreamJobCity);
            dreamjob.setDreamJobName(dreamJobName);
            dreamjob.setDreamJobType(dreamJobType);
            dreamjob.setDreamSalaryTop(Integer.parseInt(dreamSalaryTop));
            dreamjob.setDreamSalaryBottom(Integer.parseInt(dreamSalaryBottom));
            dreamjob.setJobPush(jobPush);
            resumeService.changeDreamJob(dreamjob);
        }
        return "resume";
    }

    @RequestMapping(value = "/user/resume/addDescription.do")
    public String addDescription(Model model, String resumeDescription,HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");
        Resume resume = resumeService.getResumes(user.getUserId());
        if (resume == null) {
            resume = new Resume();
            resume.setResumeDescription(resumeDescription);
            if (!resumeService.addResume(resume)) {
                model.addAttribute("errorMessage", "添加介绍失败");
            }
        }else {
            resume.setResumeDescription(resumeDescription);
            resumeService.changeResume(resume);
        }
        return "resume";
    }

    @RequestMapping(value = "/user/resume/addJobExperience.do")
    public String addJobExperience(Model model,HttpServletRequest request, String jobCompanyName,String jobName, String jobOFYou, String jobBeginDate, String jobEndDate, String jobDetail) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");
        Resume resume = resumeService.getResumes(user.getUserId());

        //List<Jobexperience> jobexperienceList = resumeService.getJobExperiences(resume.getResumeId());
        try {

                Jobexperience jobexperience = new Jobexperience();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                jobexperience.setResumeId(resume.getResumeId());
                jobexperience.setJobExperienceId(UUID.randomUUID().toString());
                jobexperience.setJobBeginDate(simpleDateFormat.parse(jobBeginDate));
                jobexperience.setJobEndDate(simpleDateFormat.parse(jobEndDate));
                jobexperience.setJobCompanyName(jobCompanyName);
                jobexperience.setJobOfYou(jobOFYou);
                jobexperience.setJobDetail(jobDetail);
                jobexperience.setJobName(jobName);

                if (!resumeService.addJobExperience(jobexperience)) {
                    model.addAttribute("errorMessage", "添加工作经验失败");
                }

        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("errorMessage", "添加工作经验失败");
        }

        return "resume";
    }

    @RequestMapping(value = "/user/resume/addProjectExperience.do")
    public String addProjectExperience(Model model,HttpServletRequest request, String projectName, String projectDuty, String projectBeginDate, String projectEndDate, String projectDescription, String projectUrl) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");
        Resume resume = resumeService.getResumes(user.getUserId());
        Projectexperience projectexperience = new Projectexperience();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            projectexperience.setResumeId(resume.getResumeId());
            projectexperience.setProjectExperienceId(UUID.randomUUID().toString());
            projectexperience.setProjectBeginDate(simpleDateFormat.parse(projectBeginDate));
            projectexperience.setProjectDescription(projectDescription);
            projectexperience.setProjectEndDate(simpleDateFormat.parse(projectEndDate));
            projectexperience.setProjectName(projectName);
            projectexperience.setProjectDuty(projectDuty);
            projectexperience.setProjectUrl(projectUrl);

            if (!resumeService.addProjectExperience(projectexperience)) {
                model.addAttribute("errorMessage", "添加项目经验失败");
            }
        } catch (ParseException e) {
            e.printStackTrace();
            model.addAttribute("errorMessage", "添加项目经验失败");
        }
        return "resume";
    }

    @RequestMapping(value = "/user/resume/addEducationExperience.do")
    public String addEducationExperience(Model model,HttpServletRequest request,String educationLevel, String educationSchoolName, String educationMajor, String educationGraduateDate, String educationExperience,String educationBeginDate) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");
        Resume resume = resumeService.getResumes(user.getUserId());

        Educationexperience educationexperience = new Educationexperience();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            educationexperience.setEducationLevel(educationLevel);
            educationexperience.setResumeId(resume.getResumeId());
            educationexperience.setEducationExperienceId(UUID.randomUUID().toString());
            educationexperience.setEducationExperience(educationExperience);
            educationexperience.setEducationSchoolName(educationSchoolName);
            educationexperience.setEducationMajor(educationMajor);
            educationexperience.setEducationGraduateDate(simpleDateFormat.parse(educationGraduateDate));
            educationexperience.setEducationBeginDate(simpleDateFormat.parse(educationBeginDate));
            if (!resumeService.addEducationExperience(educationexperience)) {
                model.addAttribute("errorMessage", "添加教育经历失败");
            }
        } catch (ParseException e) {
            e.printStackTrace();
            model.addAttribute("errorMessage", "添加教育经历失败");
        }
        return "resume";
    }

    @ResponseBody
    @RequestMapping(value = "/user/resume/getResumeToEdit.do")
    public Resume getResumesToEdit(HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userinfo");
        Resume resume = resumeService.getResumes(user.getUserId());

        return resume;
    }
}
