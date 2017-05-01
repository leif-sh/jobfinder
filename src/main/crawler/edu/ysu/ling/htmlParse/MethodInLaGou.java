package edu.ysu.ling.htmlParse;

import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.parser.HtmlParseData;
import edu.uci.ics.crawler4j.url.WebURL;
import edu.ysu.ling.dao.IRequirementinfoDao;
import edu.ysu.ling.pojo.Requirementinfo;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.Reader;
import java.util.*;

/**
 * Created by 10047 on 2017/4/27.
 */

public class MethodInLaGou {
    private static Logger logger = LoggerFactory.getLogger(MethodInLaGou.class);
    private static SqlSessionFactory sqlSessionFactory;
    private static Reader reader;
    static{
        try{
            reader  = Resources.getResourceAsReader("sqlMapConfig.xml");
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
        }catch(Exception e){
            e.printStackTrace();
        }
    }

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
            requirementinfo.setJobUrl(url);
            requirementinfo.setCatchJobTime(new Date());
            /*Company company = parseCompanyInDaJie(document);*/

            //logger.info(requirementinfo.toString());
            //logger.info(company.toString());

            SqlSession session = sqlSessionFactory.openSession();
            try {
                IRequirementinfoDao requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
                requirementinfoDao.catchRequirementinfo(requirementinfo);
                session.commit();
                logger.info("添加一条数据成功！！！");
            } finally {
                session.close();
            }
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

            //requirementinfo.setJobLabels(jobLabels.toString());

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

    public static SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public static void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        MethodInLaGou.sqlSessionFactory = sqlSessionFactory;
    }

}
