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
 * Created by 10047 on 2017/4/27.
 */

public class MethodInLaGou {
    private static Logger logger = LoggerFactory.getLogger(MethodInLaGou.class);

    public static void parseLaGou(Page page, int docid, String url){
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

            Requirementinfo requirementinfo = parseJobInLaGou(document,joblabelsList);
            String jobMessageId = UUID.randomUUID().toString();
            requirementinfo.setJobMessageId(jobMessageId);
            requirementinfo.setJobUrl(url);
            requirementinfo.setCatchJobTime(new Date());
            Company company = parseCompanyInLaGou(document);

            //logger.info(requirementinfo.toString());
            //logger.info(company.toString());

            DaoUtil.catchJobAndCompany(requirementinfo,company,joblabelsList);
        }
        logger.info("===================");
    }

    public static Requirementinfo parseJobInLaGou(Document document,List<String> joblabelsList) {
        Requirementinfo requirementinfo = new Requirementinfo();

        Elements elements = document.select("body");
        for (Element item : elements) {
            try {
                requirementinfo.setSourceCompanyName(item.select("div.company").first().text());
            } catch (Exception e) {
                logger.error("未抓取到公司名称");
            }
            requirementinfo.setJobName(item.select("span.name").first().text());
            try {
                String salary = item.select("span.salary").first().text();
                if (salary.contains("-")){
                    String[] temp = salary.replace("k", "").replace("K","").split("-");
                    if (temp.length>1){
                        requirementinfo.setSalaryBottom(Integer.parseInt(temp[0]));
                        requirementinfo.setSalaryTop(Integer.parseInt(temp[1]));
                    }
                }else {
                    salary = salary.replace("k", "");
                    requirementinfo.setSalaryTop(Integer.parseInt(salary));
                    requirementinfo.setSalaryBottom(Integer.parseInt(salary));
                }
                requirementinfo.setSalary(salary);
            } catch (Exception e) {
                logger.error("解析工资错误");
            }


            try {
                Elements elements1 = item.select("dd.job_request ul.position-label li");
                for (Element element : elements1) {
                    joblabelsList.add(element.text());
                }
            } catch (Exception e) {
                e.printStackTrace();
                logger.error("未抓取到职位标签");
            }

            try {
                Elements elements2 = item.select("dd.job_request p span");
                int n = 1;
                for (Element element : elements2) {
                    if (n == 3) {
                        String jobExperience = element.text().substring(2);
                        requirementinfo.setJobExperience(jobExperience);
                        if (jobExperience.contains("-")) {
                            jobExperience = jobExperience.replace("年", "").replace("/","").trim();
                            String[] temp = jobExperience.split("-");
                            if (temp.length > 1) {
                                requirementinfo.setJobExperienceBottom(Integer.parseInt(temp[0]));
                                requirementinfo.setJobExperienceTop(Integer.parseInt(temp[1]));
                            }
                        }
                    } else if (n == 4) {
                        requirementinfo.setEducationLevel(element.text().replace("/","").trim());
                    } else if (n == 5) {
                        requirementinfo.setJobClass(element.text());
                    }
                    n++;
                }
            } catch (Exception e) {
                e.printStackTrace();
                logger.error("未抓取到职位标签");
            }
            requirementinfo.setJobAdvantage(item.select("dd.job-advantage p").first().text());

            try {
                StringBuilder jobDescription = new StringBuilder();
                Elements elements3 = item.select(".job_bt div p");
                for (Element element : elements3) {
                    jobDescription.append(element.text() + "<br/>");
                }
                requirementinfo.setJobDescription(jobDescription.toString());
            } catch (Exception e) {
                logger.error("未抓取到职位介绍");
            }

            requirementinfo.setJobCity(item.select("div.work_addr a").first().text());
            requirementinfo.setJobAddress(item.select("div.work_addr").first().text());
            requirementinfo.setPublishResource("拉勾网");
        }
        return requirementinfo;
    }

    public static Company parseCompanyInLaGou(Document document) {
        Company company = new Company();
        Elements bodyEls = document.select("body");
        for (Element item : bodyEls) {
            String name = item.select("h2.fl").first().text().replace("拉勾认证企业","").trim();
            company.setCompanyName(name);
            Elements elements = item.select(".job_company dd ul li");
            int n = 1;
            if (elements.size() == 5) {
                for (Element element : elements) {
                    if (n == 1) {
                        try {
                            company.setCompanyType(element.text());
                        } catch (Exception e) {
                            logger.error("未找到公司类型");
                        }
                    } else if (n == 2) {
                        try {
                            company.setCompanyProperty(element.text().replace("发展阶段","").trim());
                        } catch (Exception e) {
                            logger.error("未找到公司属性");
                        }
                    } else if (n == 4) {
                        try {
                            company.setCompanyScale(element.text().replace("规模","").replace("人","").trim());
                        } catch (Exception e) {
                            logger.error("未找到公司规模");
                        }
                    } else if (n == 5) {
                        try {
                            company.setCompanyWebsite(element.text().replace("公司主页","").trim());
                        } catch (Exception e) {
                            logger.error("未找到公司网站");
                        }
                    }
                    n++;
                }
            }else {
                for (Element element : elements) {
                    if (n == 1) {
                        try {
                            company.setCompanyType(element.text().replace("领域","").trim());
                        } catch (Exception e) {
                            logger.error("未找到公司类型");
                        }
                    } else if (n == 2) {
                        try {
                            company.setCompanyProperty(element.text());
                        } catch (Exception e) {
                            logger.error("未找到公司属性");
                        }
                    } else if (n == 3) {
                        try {
                            company.setCompanyScale(element.text());
                        } catch (Exception e) {
                            logger.error("未找到公司规模");
                        }
                    } else if (n == 4) {
                        try {
                            company.setCompanyWebsite(element.text());
                        } catch (Exception e) {
                            logger.error("未找到公司网站");
                        }
                    }
                    n++;
                }
            }

        }
        return company;
    }


}
