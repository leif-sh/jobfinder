package edu.ysu.ling.htmlParse;

import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.parser.HtmlParseData;
import edu.uci.ics.crawler4j.url.WebURL;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.util.StringUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

/**
 * Created by ling on 2017/4/25.
 */
public class MethodInDaJie {

    private static Logger logger = LoggerFactory.getLogger(MethodInDaJie.class);

    public static void parseDaJie(Page page, int docid, String url){
        String anchor = page.getWebURL().getAnchor();
        logger.info("Docid = "+docid);
        logger.info("URL = "+ url);

        if (page.getParseData() instanceof HtmlParseData) {
            HtmlParseData htmlParseData = (HtmlParseData) page.getParseData();
            String html = htmlParseData.getHtml();
            Set<WebURL> links = htmlParseData.getOutgoingUrls();//待处理
            /*解析html*/
            Document document = Jsoup.parse(html);

            Requirementinfo requirementinfo = parseJobInDaJie(document);
            Company company = parseCompanyInDaJie(document);

            logger.info(requirementinfo.toString());
            //logger.info(company.toString());
        }
        logger.info("===================");
    }

    private static Company parseCompanyInDaJie(Document document) {
        Company company = new Company();

        Elements bodyEles = document.select("body");
        for (Element item : bodyEles) {
            company.setCompanyName(item.select("p.title").first().text());
            try {
                company.setCompanyIntroduction(item.select("i-corp-desc p").first().text());
            } catch (Exception e) {
                logger.error("未解析到公司简介");
            }

        }

        Elements companyinfos = document.select("ul.info li");
        int n = 1;
        for (Element item : companyinfos) {
            if (n == 1) {
                company.setCompanyScale(item.text());
            } else if (n == 2) {
                company.setCompanyType(item.text());
            } else if (n == 3) {
                company.setCompanyProperty(item.text());
            } else if (n == 4) {
                company.setCompanyWebsite(item.select("a").first().text());
            }
            n++;
        }

        return company;
    }

    public static Requirementinfo parseJobInDaJie(Document document) {
        Requirementinfo message = new Requirementinfo();

        String jobClass = document.select("span.job1").first().text();

        /*switch (jobClass) {
            case "全职":
                break;
            case "兼职":
                break;
            case "实习":
                break;
            case "猎头职位":
                break;
        }*/

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Elements bodyEles = document.select("body");
        String jobDateTime = "";
        String jobDescription = "";
        String jobAddress = "";
        for(Element item : bodyEles){
            message.setJobName(item.select("h1").first().text());
            message.setJobClass(item.select("h1 span").first().text());
            try {
                message.setSourceCompanyName(item.select(".p-corp-detail-title .detail a").first().text());
            } catch (Exception e) {
                logger.error("未解析到公司名称");
            }

            jobDateTime = item.select(".p-corp-detail-title .detail .floatright").first().text();

            try {
                message.setSalary(item.select(".p-corp-detail-tag dl dd .import").first().text());
            } catch (Exception e) {
                logger.error("未解析到工资范围");
            }

            jobDescription = item.select("p.multiline").first().text();
            jobAddress = item.select("p-corp-detail-info dl dd p.oneline").first().text();
        }
        jobDescription = jobDescription.replaceAll("<br>", "").replaceAll("\"","");
        jobDateTime = jobDateTime.substring(3);
        try {
            message.setJobDateTime(dateFormat.parse(jobDateTime));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        //职位诱惑
        String jobAdvantage = "";
        Elements elements1 = document.select(".p-corp-detail-tag dl dd").first().select("span");
        for (Element item : elements1) {
            jobAdvantage += item.text() + ",";
        }
        message.setJobAdvantage(jobAdvantage);

        String[] temp = jobAddress.split(",");
        if (temp.length > 1) {
            message.setJobCity(temp[0]);
            message.setJobAddress(temp[1]);
        }

        message.setJobDescription(jobDescription);
        message.setPublishResource("大街网");
        return message;
    }
}
