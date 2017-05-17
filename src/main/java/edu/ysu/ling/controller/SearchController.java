package edu.ysu.ling.controller;

import edu.ysu.ling.pojo.Page;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.service.IRequirementinfoService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ling on 2017/5/11.
 */
@Controller
public class SearchController {
    private static Logger logger = LoggerFactory.getLogger(SearchController.class);
    @Resource
    private IRequirementinfoService requirementinfoService;

    @RequestMapping(value = "/search/searchJob.do")
    public String searchJob(HttpServletRequest request , Model model , String scity , String query , String thispage ,
                            String labels , String companyScale , String companyType , String jobExperience , String educationLevel ,String salary){
        Map params = new HashMap();
        if (query != null && labels == null ) {
            labels = query;
        }
        if (StringUtils.isNotBlank(labels)) {
            params.put("labels", labels);
        }
        if (StringUtils.isBlank(thispage)){
            thispage = "1";
        }
        Page page = new Page(Integer.parseInt(thispage));
        params.put("page", page);
        if (StringUtils.isNotBlank(salary)){
            if (salary.equals("不限")){
                params.put("salary", "");
            } else if (salary.equals("3k以下")) {
                params.put("salary", "AND salaryTop < 3");
            } else if (salary.equals("3-5k")) {
                params.put("salry", "AND salaryBottom > 3 AND 5 > salaryBottom");
            } else if (salary.equals("5-10k")) {
                params.put("salary", "AND salaryBottom > 5 AND 10 > salaryBottom");
            } else if (salary.equals("10-15k")) {
                params.put("salary", "AND salaryBottom > 10 AND 15 > salaryBottom");
            } else if (salary.equals("15-20k")) {
                params.put("salary", "AND salaryBottom > 15 AND 20 > salaryBottom");
            } else if (salary.equals("20-30k")) {
                params.put("salary", "AND salaryBottom > 20 AND 30 > salaryBottom");
            } else if (salary.equals("30-50k")) {
                params.put("salary", "AND salaryBottom > 30 AND 50 > salaryBottom");
            } else if (salary.equals("50k以上")) {
                params.put("salary", "AND salaryBottom > 50");
            } else {
                params.put("salary", "");
            }
        }
        if (StringUtils.isNotBlank(companyType)) {
            if (companyType.equals("不限")) {
                params.put("companyType", "");
            }else{
                params.put("companyType", "AND companyType = " + companyType);
            }
        }
        if (StringUtils.isNotBlank(companyScale)) {
            if (companyScale.equals("不限")) {
                params.put("companyScale", "");
            }

        }
        if (StringUtils.isNotBlank(jobExperience)) {
            if (jobExperience.equals("不限")) {
                params.put("jobExperience", "");
            } else if (jobExperience.equals("应届生")) {
                params.put("jobExperience", "AND jobExperienceBottom = 0");
            } else if (jobExperience.equals("1年以内")) {
                params.put("jobExperience", "AND jobExperienceBottom > 0");
            } else if (jobExperience.equals("1-3年")) {
                params.put("jobExperience", "");
            } else if (jobExperience.equals("3-5年")) {
                params.put("jobExperience", "");
            } else if (jobExperience.equals("5-10年")) {
                params.put("jobExperience", "");
            } else if (jobExperience.equals("10年以上")) {
                params.put("jobExperience", "");
            }
        }
        if (StringUtils.isNotBlank(educationLevel)) {
            if (educationLevel.equals("不限")) {
                params.put("educationLevel", "");
            } else if (educationLevel.equals("中专")) {
                params.put("educaitonLevel", "AND educationLevel = '中专'");
            } else if (educationLevel.equals("高中")) {
                params.put("educaitonLevel", "AND educationLevel IN ('中专','高中')");
            } else if (educationLevel.equals("大专")) {
                params.put("educaitonLevel", "AND educationLevel IN ('中专','高中','大专','大专及以上')");
            } else if (educationLevel.equals("本科")) {
                params.put("educaitonLevel", "AND educationLevel NOT IN ('硕士','博士')");
            } else if (educationLevel.equals("硕士")) {
                params.put("educaitonLevel", "AND educationLevel NOT IN ('博士')");
            } else if (educationLevel.equals("博士")) {
                params.put("educaitonLevel", "");
            }
        }

        if (StringUtils.isNotBlank(scity)){
            logger.info("city:" + scity);
            params.put("city", scity);
        }
        logger.info("labels = "+labels);
        List<Requirementinfo> list = requirementinfoService.getJobs(params);
        logger.info("返回"+list.size()+"条数据");
        model.addAttribute("jobList", list);
        model.addAttribute("page", page);
        model.addAttribute("salary", salary);
        model.addAttribute("educationLevel", educationLevel);
        model.addAttribute("jobExperience", jobExperience);
        model.addAttribute("companyScale", companyScale);
        model.addAttribute("companyType", companyType);
        return "job";
    }

}
