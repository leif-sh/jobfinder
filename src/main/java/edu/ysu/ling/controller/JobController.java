package edu.ysu.ling.controller;

import edu.ysu.ling.crawlerController.BossZhiPinController;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.service.ICompanyService;
import edu.ysu.ling.service.IJobLabelsService;
import edu.ysu.ling.service.IRequirementinfoService;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        /*logger.info(list.toString());*/
        model.addAttribute("jobList", list);
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
        return "jobdetail";
    }
}
