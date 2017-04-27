package edu.ysu.ling.htmlParse;

import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.parser.HtmlParseData;
import edu.uci.ics.crawler4j.url.WebURL;
import edu.ysu.ling.domain.Message;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.util.StringUtil;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Set;


/**
 * Created by 10047 on 2017/4/22.
 */

public class MethodInBoss {

    private static Logger logger = LoggerFactory.getLogger(MethodInBoss.class);

    public static void parseJobInBOSS(Page page, int docid, String url){
        String anchor = page.getWebURL().getAnchor();
        logger.info("Docid",docid);
        logger.info("URL", url);

        if (page.getParseData() instanceof HtmlParseData) {
            HtmlParseData htmlParseData = (HtmlParseData) page.getParseData();
            String text = htmlParseData.getText();
            String html = htmlParseData.getHtml();
            Set<WebURL> links = htmlParseData.getOutgoingUrls();
            /*解析html*/
            Document document = Jsoup.parse(html);
            /*获取职位名称*/
            Elements element = document.getElementsByTag("h1");
            String name = null;
            for (Element item : element){
                name = item.text();
            }
            /*获取公司名称*/
            Elements elements2 = document.getElementsByClass("boss_position");
            String company = null;
            for (Element item : elements2) {
                company = item.text();
            }
            String[] temp1 = company.split("\\.");
            company = temp1[0];
            /*获取发布此职位的时间*/
            Elements elements3 = document.getElementsByTag("time");
            String time = null;
            for (Element item : elements3) {
                time = item.text();
            }
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Requirementinfo message = new Requirementinfo();
            try {
                message.setJobDateTime(dateFormat.parse(time.substring(0,10)));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            /**/
            Elements bodyEles = document.select("body");

            message.setJobName(name);
            message.setSourceCompanyName(company);
            for(Element item : bodyEles){

                message.setSalary(item.select(".c_salary").text());
                message.setJobLabels(item.select(".info").text());
                message.setSalaryTop(StringUtil.getTopSalaryFromString(item.select(".c_salary").text()));
                message.setSalaryBottom(StringUtil.getBottomSalaryFromString(item.select(".c_salary").text()));
                message.setJobAddress(item.select(".company_address").text());
//          Date date = new Date();
//          SimpleDateFormat simpleDateFormat = new SimpleDateFormat("");
                //message.setJobDateTime(item.select(".local_time").text());
            }

            /*获取职位描述*/
            Elements elements4 = document.select(".job-desc_container p");
            String jobdesc = null;
            String teamdesc = null;
            int n = 1;
            for (Element item : elements4) {
                if (n == 2) {
                    jobdesc = item.text();
                }else if (n==4){
                    teamdesc = item.text();
                }
                n++;
            }
            /*获取职位需求的技能的标签*/
            Elements elements5 = document.select(".company_tags span");
            StringBuilder jobrequest = new StringBuilder();
            for (Element item : elements5) {
                jobrequest.append(item.text()+"|");
            }
            message.setJobRequest(jobrequest.toString());

            if (teamdesc != null) {
                message.setTeamDescription(teamdesc);

            }
            message.setJobDescription(jobdesc);

            String[] temp = message.getJobLabels().split("\\|");
            message.setJobCity(temp[0]);

            message.setJobExperience(temp[1]);
            message.setJobExperienceTop(StringUtil.getTopExperienceFromString(message.getJobExperience()));
            message.setJobExperienceBottom(StringUtil.getBottomExperienceFromString(message.getJobExperience()));

            message.setEducationLevel(temp[2]);
            message.setJobClass(temp[3]);
            message.setPublishResource("BOOS直聘");


            System.out.println("name = " + name);
            logger.info(message.toString());
            if (StringUtils.isNotBlank(teamdesc)) {
                logger.info("teamDescription = " , message.getTeamDescription());
            }
        }

      /*Header[] responseHeaders = page.getFetchResponseHeaders();
      if (responseHeaders != null) {

      System.out.print("Response headers:");
      for (Header header : responseHeaders) {
        System.out.println("{"+header.getName()+"}: {"+header.getValue()+"}");
      }
      }*/
        logger.info("===================");
    }
}
