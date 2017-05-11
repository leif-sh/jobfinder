package edu.ysu.ling.htmlParse;

import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.parser.HtmlParseData;
import edu.uci.ics.crawler4j.url.WebURL;
import edu.ysu.ling.dao.ICompanyDao;
import edu.ysu.ling.dao.IJobLabelsDao;
import edu.ysu.ling.dao.IRequirementinfoDao;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.util.StringUtil;
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

import java.io.Reader;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;
import java.util.UUID;

/**
 * Created by ling on 2017/4/25.
 */
public class MethodInDaJie {

    private static Logger logger = LoggerFactory.getLogger(MethodInDaJie.class);
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
            requirementinfo.setJobMessageId(UUID.randomUUID().toString());
            requirementinfo.setCatchJobTime(new Date());
            Company company = parseCompanyInDaJie(document);

            SqlSession session = sqlSessionFactory.openSession();
            try {
                IRequirementinfoDao requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
                requirementinfoDao.catchRequirementinfo(requirementinfo);
                IJobLabelsDao jobLabelsDao = session.getMapper(IJobLabelsDao.class);
                //jobLabelsDao.catchJobLabels();
                ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
                session.commit();
                logger.info("添加一条数据成功！！！");
            } finally {
                session.close();
            }
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
                try {
                    company.setCompanyScale(item.text());
                } catch (Exception e) {
                    logger.error("未解析到公司规模");
                }
            } else if (n == 2) {
                try {
                    company.setCompanyType(item.text());
                } catch (Exception e) {
                    logger.error("未解析到公司类型");
                }
            } else if (n == 3) {
                try {
                    company.setCompanyProperty(item.text());
                } catch (Exception e) {
                    logger.info("未解析到公司属性");
                }
            } else if (n == 4) {
                try {
                    company.setCompanyWebsite(item.select("a").first().text());
                } catch (Exception e) {
                    logger.error("未解析到公司网站");
                }
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

            try {
                jobDescription = item.select("p.multiline").first().text();
            } catch (Exception e) {
                logger.error("未解析到职位描述");
            }
            try {
                jobAddress = item.select("p-corp-detail-info dl dd p.oneline").first().text();
            } catch (Exception e) {
                logger.error("未解析到工作地址");
            }
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
