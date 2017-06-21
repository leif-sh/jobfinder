package edu.ysu.ling.htmlParse;

import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.parser.HtmlParseData;
import edu.uci.ics.crawler4j.url.WebURL;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.util.DaoUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;

/**
 * Created by 10047 on 2017/5/14.
 */

public class MethodInWuYou {

    private static Logger logger = LoggerFactory.getLogger(MethodInWuYou.class);
    public static void parseWuYou(Page page, int docid, String url){
        String anchor = page.getWebURL().getAnchor();
        /*logger.info("Docid = "+docid);*/
        logger.info("URL = "+ url);

        if (page.getParseData() instanceof HtmlParseData) {
            HtmlParseData htmlParseData = (HtmlParseData) page.getParseData();
            String html = htmlParseData.getHtml();
            Set<WebURL> links = htmlParseData.getOutgoingUrls();//待处理
            /*解析html*/
            Document document = Jsoup.parse(html);
            List<String> joblabelsList = new ArrayList<>();

            Requirementinfo requirementinfo = parseJobInWuYou(document,joblabelsList);
            String jobMessageId = UUID.randomUUID().toString();
            requirementinfo.setJobMessageId(jobMessageId);
            requirementinfo.setJobUrl(url);
            requirementinfo.setPublishResource("无忧网");
            requirementinfo.setCatchJobTime(new Date());
            requirementinfo.setJobPercent(60);
            Company company = parseCompanyInWuYou(document);
            //logger.info(requirementinfo.toString());
            //logger.info(company.toString());

            DaoUtil.catchJobAndCompany(requirementinfo,company,joblabelsList);
        }
        logger.info("===================");
    }

    public static Requirementinfo parseJobInWuYou(Document document,List<String> joblabelsList) {
        Requirementinfo requirementinfo = new Requirementinfo();
        Elements elements = document.select("body");
        for (Element item : elements) {
            String jobName = item.select("h1").first().text();

            String jobCity = item.select("span.lname").first().text();
            String sourceCompanyName = item.select(".in .cn p a").first().text();
            String salary = item.select(".in .cn  strong").first().text();
            if (salary.contains("千")) {
                requirementinfo.setSalary(salary.replace("千/月", ""));
                String[] temp = salary.replace("千/月", "").split("-");
                if (temp.length > 0) {
                    requirementinfo.setSalaryBottom(Integer.parseInt(temp[0]));
                    requirementinfo.setSalaryTop(Integer.parseInt(temp[0]));
                    requirementinfo.setSalary(temp[0] + "k-" + temp[1] + "k");
                }
            } else if (salary.contains("万")) {
                String salary1 = salary.replace("万/月", "");
                String[] temp = salary1.split("-");
                if (temp.length > 0) {
                    if (temp[0].contains(".")) {
                        requirementinfo.setSalaryBottom(Integer.parseInt(temp[0].replace(".", "")));
                    } else {
                        requirementinfo.setSalaryBottom(Integer.parseInt(temp[0]+"0"));
                    }
                    if (temp[1].contains(".")) {
                        requirementinfo.setSalaryBottom(Integer.parseInt(temp[1].replace(".", "")));
                    } else {
                        requirementinfo.setSalaryBottom(Integer.parseInt(temp[1]+"0"));
                    }
                }
            }

            Elements elements1 = item.select(".tCompany_main .tBorderTop_box .jtag .t1 sp4");
            int n = 1;
            String jobExperience = null;

            for (Element element : elements1) {
                if (n == 1) {
                    jobExperience = element.text();
                }
                if (elements1.size() == 4) {
                    if (n == 2) {
                        if (element.text().contains("-")) {
                            String temp = element.text().replace("经验", "");
                            requirementinfo.setJobExperience(temp);
                            String[] temp1 = temp.split("-");
                            if (temp1.length > 0) {
                                requirementinfo.setJobExperienceBottom(Integer.parseInt(temp1[0]));
                                requirementinfo.setJobExperienceTop(Integer.parseInt(temp1[1].replace("年","")));
                            }
                        } else {
                            requirementinfo.setJobExperience(element.text().replace("经验", "").trim());
                            requirementinfo.setJobExperienceBottom(Integer.parseInt(element.text().replace("年经验","")));
                            requirementinfo.setJobExperienceTop(Integer.parseInt(element.text().replace("年经验", "")));
                        }
                    }
                }

            }
            String jobDesctiption = item.select(".tBorderTop_box .job_msg").text();
            String jobAddress = item.select(".tBorderTop_box .inbox p").first().text();

            requirementinfo.setJobName(jobName);
            requirementinfo.setJobCity(jobCity);
            requirementinfo.setSourceCompanyName(sourceCompanyName);
            requirementinfo.setJobExperience(jobExperience);
            requirementinfo.setJobDescription(jobDesctiption);
            requirementinfo.setJobAddress(jobAddress);

        }
        return requirementinfo;
    }

    public static Company parseCompanyInWuYou(Document document) {
        Company company = new Company();
        Elements elements = document.select("body");
        for (Element item : elements) {
            String companyName = item.select(".in .cn p a").first().text();

            String companyLabels = item.select(".in .ltype ").first().text();
            String[] temp = companyLabels.split("|");
            if (temp.length > 0) {
                company.setCompanyProperty(temp[0]);
                company.setCompanyScale(temp[1]);
                company.setCompanyType(temp[2]);
            }
        }
        return company;
    }
}
