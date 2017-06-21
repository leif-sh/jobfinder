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
        if (StringUtils.isBlank(thispage) || thispage.length() == 0){
            thispage = "1";
        }
        Page page = new Page(Integer.parseInt(thispage));
        params.put("page", page);
        if (StringUtils.isNotBlank(salary)){
            params.put("salary", salary);
        }
        if (StringUtils.isNotBlank(companyType)) {
            if (companyType.equals("scale-0")) {
                params.put("companyType", "");
            }else if (companyType.equals("type-1")){//健康医疗
                params.put("companyType", "健康医疗");
            }else if (companyType.equals("type-2")){//生活服务
                params.put("companyType", "生活服务");
            }else if (companyType.equals("type-3")){//旅游
                params.put("companyType", "旅游");
            }else if (companyType.equals("type-4")){//金融
                params.put("companyType", "金融");
            }else if (companyType.equals("type-5")){//信息安全
                params.put("companyType", "信息安全");
            }else if (companyType.equals("type-6")){//广告营销
                params.put("companyType", "广告营销");
            }else if (companyType.equals("type-7")){//数据服务
                params.put("companyType", "数据服务");
            }else if (companyType.equals("type-8")){//智能硬件
                params.put("companyType", "智能硬件");
            }else if (companyType.equals("type-9")){//文化娱乐
                params.put("companyType", "文化娱乐");
            }else if (companyType.equals("scale-10")) {//网络招聘
                params.put("companyType", "网络招聘");
            }else if (companyType.equals("type-11")){//分类信息
                params.put("companyType", "分类信息");
            }else if (companyType.equals("type-12")){//电子商务
                params.put("companyType", "电子商务");
            }else if (companyType.equals("type-13")){//移动互联网
                params.put("companyType", "移动互联网");
            }else if (companyType.equals("type-14")){//企业服务
                params.put("companyType", "企业服务");
            }else if (companyType.equals("type-15")){//社交网络
                params.put("companyType", "社交网络");
            }else if (companyType.equals("type-16")){//教育培训
                params.put("companyType", "教育培训");
            }else if (companyType.equals("type-17")){//O2O
                params.put("companyType", "O2O");
            }else if (companyType.equals("type-18")){//游戏
                params.put("companyType", "游戏");
            }else if (companyType.equals("type-19")){//互联网
                params.put("companyType", "互联网");
            }else if (companyType.equals("scale-20")) {//媒体
                params.put("companyType", "媒体");
            }else if (companyType.equals("type-21")){//IT软件
                params.put("companyType", "IT软件");
            }else if (companyType.equals("type-22")){//通信
                params.put("companyType", "通信");
            }else if (companyType.equals("type-23")){//公关会展
                params.put("companyType", "公关会展");
            }else if (companyType.equals("type-24")){//房地产/建筑
                params.put("companyType", "房地产/建筑");
            }else if (companyType.equals("type-25")){//汽车
                params.put("companyType", "汽车");
            }else if (companyType.equals("type-26")){//供应链/物流
                params.put("companyType", "供应链/物流");
            }else if (companyType.equals("type-27")){//咨询/翻译/法律
                params.put("companyType", "咨询/翻译/法律");
            }else if (companyType.equals("type-28")){//采购/贸易
                params.put("companyType", "采购/贸易");
            }else{
                params.put("companyType", "");
            }

        }
        if (StringUtils.isNotBlank(companyScale)) {
            params.put("companyScale", companyScale);
        }
        if (StringUtils.isNotBlank(jobExperience)) {
            params.put("jobExperience", jobExperience);
        }
        if (StringUtils.isNotBlank(educationLevel)) {
            params.put("educationLevel", educationLevel);
        }

        if (StringUtils.isNotBlank(scity)){
            params.put("city", scity);
        }
        logger.info("salary = " + salary);
        logger.info("educationLevel = "+educationLevel);
        logger.info("jobExperience = "+jobExperience);
        logger.info("companyScale = "+companyScale);
        logger.info("companyType = "+companyType);
        logger.info("city = " + scity);
        logger.info("labels = "+labels);
        List<Requirementinfo> list = requirementinfoService.getJobs(params);
        //logger.info("返回"+list.size()+"条数据");
        logger.info("=====================");
        model.addAttribute("jobList", list);
        model.addAttribute("labels", labels);
        model.addAttribute("scity", scity);
        model.addAttribute("page", page);
        model.addAttribute("salary", salary);
        model.addAttribute("educationLevel", educationLevel);
        model.addAttribute("jobExperience", jobExperience);
        model.addAttribute("companyScale", companyScale);
        model.addAttribute("companyType", companyType);
        model.addAttribute("selectStatus", "1");
        return "job";
    }

}
