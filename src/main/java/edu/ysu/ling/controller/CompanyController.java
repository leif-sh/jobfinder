package edu.ysu.ling.controller;

import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.service.ICompanyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ling on 2017/5/12.
 */
@Controller
public class CompanyController {
    private Logger logger = LoggerFactory.getLogger(CompanyController.class);
    @Resource
    private ICompanyService companyService;

    @RequestMapping(value = "/company/getCompanyList.do")
    public String batchGetCompanyList(Model model, List<Requirementinfo> jobList){
        logger.info("jobList----------"+jobList.toString());
        return "job";
    }
}
