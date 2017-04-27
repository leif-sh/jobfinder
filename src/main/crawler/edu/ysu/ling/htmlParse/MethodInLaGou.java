package edu.ysu.ling.htmlParse;

import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.parser.HtmlParseData;
import edu.uci.ics.crawler4j.url.WebURL;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Requirementinfo;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * Created by 10047 on 2017/4/27.
 */

public class MethodInLaGou {
    private static Logger logger = LoggerFactory.getLogger(MethodInDaJie.class);

    public static void parseLaGou(Page page, int docid, String url){
        String anchor = page.getWebURL().getAnchor();
        logger.info("Docid = "+docid);
        logger.info("URL = "+ url);

        if (page.getParseData() instanceof HtmlParseData) {
            HtmlParseData htmlParseData = (HtmlParseData) page.getParseData();
            String html = htmlParseData.getHtml();
            Set<WebURL> links = htmlParseData.getOutgoingUrls();//待处理
            /*解析html*/
            Document document = Jsoup.parse(html);

            Requirementinfo requirementinfo = parseJobInLaGou(document);
            requirementinfo.setJobMessageId(UUID.randomUUID().toString());
            /*Company company = parseCompanyInDaJie(document);*/

            logger.info(requirementinfo.toString());
            //logger.info(company.toString());
        }
        logger.info("===================");
    }

    public static Requirementinfo parseJobInLaGou(Document document) {
        Requirementinfo requirementinfo = new Requirementinfo();

        Elements elements = document.select("body");
        for (Element item : elements) {
            try {
                requirementinfo.setSourceCompanyName(item.select("div.company").first().text());
            } catch (Exception e) {
                logger.error("未抓取到公司名称");
            }
            requirementinfo.setJobName(item.select("span.name").first().text());
            requirementinfo.setSalary(item.select("span.salary").first().text());

            List<String> jobLabels = new ArrayList<>();
            try {
                Elements elements1 = item.select("ul.position-label li");
                for (Element element : elements1) {
                    jobLabels.add(item.text());
                }
            } catch (Exception e) {
                logger.error("未抓取到职位标签");
            }

            try {
                Elements elements2 = item.select("dd.job_requet p span");
                int n = 1;
                for (Element element : elements2) {
                    if (n != 1) {
                        jobLabels.add(item.text());
                    }
                    n++;
                }
            } catch (Exception e) {
                logger.error("未抓取到职位标签");
            }

            requirementinfo.setJobLabels(jobLabels.toString());

            requirementinfo.setJobAdvantage(item.select("dd.job-advantage p").first().text());

            try {
                StringBuilder jobDescription = new StringBuilder();
                Elements elements3 = item.select("job_bt div p");
                for (Element element : elements3) {
                    jobDescription.append(element.text());
                }
                requirementinfo.setJobDescription(jobDescription.toString().replaceAll("<br>",""));
            } catch (Exception e) {
                logger.error("未抓取到职位介绍");
            }

            requirementinfo.setJobCity(item.select("div.work_addr a").first().text());
            requirementinfo.setJobAddress(item.select("div.work_addr").first().text());

            requirementinfo.setPublishResource("拉勾网");
        }
        return requirementinfo;
    }
}
