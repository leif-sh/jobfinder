package edu.ysu.ling.controller;

import edu.ysu.ling.pojo.Businessuser;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.service.IBusinessUserService;
import edu.ysu.ling.service.ICompanyService;
import edu.ysu.ling.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by ling on 2017/5/12.
 */
@Controller
public class CompanyController {
    private Logger logger = LoggerFactory.getLogger(CompanyController.class);
    @Resource
    private ICompanyService companyService;
    @Resource
    private IBusinessUserService businessUserService;

    @RequestMapping(value = "/company/getCompanyList.do")
    public String batchGetCompanyList(Model model, List<Requirementinfo> jobList){
        logger.info("jobList----------"+jobList.toString());
        return "job";
    }

    @RequestMapping(value = "/business/company/getCompanyInfo.do")
    public String getCompanyInfo(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");
        businessuser = businessUserService.findUserByEmailAddress(businessuser.getBusinessMailAddress());

        Company company = companyService.findCompanyById(businessuser.getCompanyId());
        model.addAttribute("company", company);
        model.addAttribute("selectStatus", "1");
        return "../jspforbusiness/companyinfo";
    }

    @RequestMapping(value = "/business/company/changeCompanyInfo.do")
    public String changeCompanyInfo(Model model, HttpServletRequest request,String companyName,String companyType,String companyScale,String companyPosition,
                                    String companyProperty,String companyWebsite,String companyIntroduction) {
        HttpSession session = request.getSession();
        Businessuser businessuser = (Businessuser) session.getAttribute("businessuser");
        businessuser = businessUserService.findUserByEmailAddress(businessuser.getBusinessMailAddress());

        Company company = new Company();
        company.setCompanyName(companyName);
        company.setCompanyType(companyType);
        if (companyScale.equals("scale-1")) {
            company.setCompanyScale("20人以下");
        } else if (companyScale.equals("scale-2")) {
            company.setCompanyScale("20-99人");
        } else if (companyScale.equals("scale-3")) {
            company.setCompanyScale("100-499人");
        } else if (companyScale.equals("scale-4")) {
            company.setCompanyScale("500-999人");
        } else if (companyScale.equals("scale-5")) {
            company.setCompanyScale("1000-9999人");
        } else if (companyScale.equals("scale-6")) {
            company.setCompanyScale("10000人以上");
        }

        company.setCompanyPosition(companyPosition);
        company.setCompanyProperty(companyProperty);
        company.setCompanyWebsite(companyWebsite);
        company.setCompanyIntroduction(companyIntroduction);

        if (businessuser.getCompanyId() == null) {
            companyService.addCompany(company);
        }else {
            company.setCompanyId(businessuser.getCompanyId());
            company = companyService.changeCompany(company);
        }
        model.addAttribute("company", company);
        model.addAttribute("selectStatus", "1");
        return "../jspforbusiness/companyinfo";
    }
}
