package edu.ysu.ling.controller;

import edu.ysu.ling.crawlerController.BossZhiPinController;
import edu.ysu.ling.dao.ICompanyDao;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.service.ICompanyService;
import edu.ysu.ling.service.IJobLabelsService;
import edu.ysu.ling.service.IRequirementinfoService;
import edu.ysu.ling.service.IUserService;
import org.apache.commons.lang3.StringUtils;
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
    public String getJobList(String pageName, HttpServletRequest request , Model model){
        Map params = new HashMap();
        /*logger.info("pageName = "+pageName);*/
        List<Requirementinfo> list = requirementinfoService.getJobs(params);
        /*logger.info(list.toString());*/
        Map<String, Object> jobCompanyMap = new HashMap<>();
        for (int n = 0;n<list.size();n++) {
            Company company = companyService.findCompanyById(list.get(n).getCompanyId());
            /*jobCompanyMap.put("")*/
        }
        model.addAttribute("jobList", list);
        return pageName;
    }

    @RequestMapping(value = "/job/searchJob.do")
    public String searchJob(HttpServletRequest request , Model model ,String labels){
        Map params = new HashMap();
        if (StringUtils.isNotBlank(labels)) {
            params.put("labels", labels.toLowerCase());
        }
        List<Requirementinfo> list = requirementinfoService.getJobs(params);
        model.addAttribute("jobList", list);
        return "job";
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
