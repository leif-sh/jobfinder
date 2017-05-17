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
 * Created by ling on 2017/5/11.
 */
public class MethodInZhiLian {
    private static Logger logger = LoggerFactory.getLogger(MethodInLaGou.class);

    public static void parseZhiLian(Page page, int docid, String url){
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

            Requirementinfo requirementinfo = parseJobInZhiLian(document,joblabelsList);
            String jobMessageId = UUID.randomUUID().toString();
            requirementinfo.setJobMessageId(jobMessageId);
            requirementinfo.setJobUrl(url);
            requirementinfo.setPublishResource("智联招聘");
            requirementinfo.setCatchJobTime(new Date());
            Company company = parseCompanyInZhiLian(document);

            //logger.info(requirementinfo.toString());
            //logger.info(company.toString());
            DaoUtil.catchJobAndCompany(requirementinfo, company, joblabelsList);
        }
        logger.info("===================");
    }

    public static Requirementinfo parseJobInZhiLian(Document document, List<String> joblabelsList){
        Requirementinfo requirementinfo = new Requirementinfo();
        Elements bodyEles = document.select("body");
        for (Element item : bodyEles) {
            requirementinfo.setJobName(item.select("h1").first().text());
            requirementinfo.setSourceCompanyName(item.select("h2 a").first().text());

            try {
                Elements elementsofadvantage = item.select(".welfare-tab-box span");
                StringBuffer buffer = new StringBuffer();
                for (Element element : elementsofadvantage) {
                    buffer.append("," + element.text());
                }
                requirementinfo.setJobAdvantage(buffer.toString().substring(1));
            } catch (Exception e) {
                logger.error("未抓取到职位诱惑");
                e.printStackTrace();
            }

            Elements elements = item.select(".terminalpage-left ul li");
            int n = 1;
            for (Element element : elements) {
                if (n == 1) {
                    String salary = null;
                    try {
                        salary = element.select("strong").text();
                        requirementinfo.setSalary(salary);
                    } catch (Exception e) {
                        e.printStackTrace();
                        logger.error("未抓取到职位薪资");
                    }
                    try {
                        if (salary.contains("元/月")) {
                            salary = salary.replace("元/月", "");
                            String[] temp = salary.split("-");
                            if (temp.length > 1) {
                                requirementinfo.setSalaryBottom(Integer.parseInt(temp[0].substring(0,temp[0].indexOf("0"))));
                                requirementinfo.setSalaryTop(Integer.parseInt(temp[1].substring(0,temp[1].indexOf("0"))));
                            }
                        }
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                    }
                } else if (n == 2) {
                    try {
                        String city = element.select("strong a").text();
                        requirementinfo.setJobCity(city);
                    } catch (Exception e) {
                        e.printStackTrace();
                        logger.error("未抓取到职位城市");
                    }
                } else if (n == 4) {
                    try {
                        String jobClass = element.select("strong").text();
                        requirementinfo.setJobClass(jobClass);
                    } catch (Exception e) {
                        e.printStackTrace();
                        logger.error("未抓取到职位类别");
                    }
                } else if (n == 8) {
                    try {
                        joblabelsList.add(element.select("strong a").text());
                    } catch (Exception e) {
                        e.printStackTrace();
                        logger.error("未抓取到职位标签");
                    }
                } else if (n == 5) {
                    String jobExperience = null;
                    try {
                        jobExperience = element.select("strong").text();
                        requirementinfo.setJobExperience(jobExperience);
                    } catch (Exception e) {
                        e.printStackTrace();
                        logger.error("未抓取到工作经验");
                    }
                    try {
                        if (jobExperience.contains("-")) {
                            String[] temp = jobExperience.split("-");
                            if (temp.length > 1) {
                                requirementinfo.setJobExperienceTop(Integer.parseInt(temp[1].replace("年","")));
                                requirementinfo.setJobExperienceBottom(Integer.parseInt(temp[2].replace("年","")));
                            }
                        }else if (!jobExperience.contains("年")){
                            requirementinfo.setJobExperienceBottom(0);
                            requirementinfo.setJobExperienceTop(0);
                        }
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                    }
                } else if (n == 6) {
                    try {
                        String jobEducationLevel = element.select("strong").text();
                        requirementinfo.setEducationLevel(jobEducationLevel);
                    } catch (Exception e) {
                        e.printStackTrace();
                        logger.error("未抓取到学历");
                    }
                }
                n++;
            }

            try {
                Elements elementsofdescription = item.select(".tab-inner-cont").first().select("p");
                StringBuffer stringBuffer = new StringBuffer();
                for (Element element : elementsofdescription) {
                    stringBuffer.append(element.text());
                }
                requirementinfo.setJobDescription(stringBuffer.toString());
            } catch (Exception e) {
                logger.error("未抓取到职位简介");
                e.printStackTrace();
            }

            try {
                String address = item.select(".tab-inner-cont h2").first().text();
                requirementinfo.setJobAddress(address);
            } catch (Exception e) {
                e.printStackTrace();
                logger.error("未抓取到工作地址");
            }

        }
        return requirementinfo;
    }

    public static Company parseCompanyInZhiLian(Document document){
        Company company = new Company();
        Elements bodyEles = document.select("body");
        for (Element item : bodyEles) {
            try {
                String name = item.select(".company-name-t a").text();
                company.setCompanyName(name);
            } catch (Exception e) {
                e.printStackTrace();
                logger.error("未抓取到公司名称");
            }

            try {
                Elements descriptions = item.select(".tab-inner-cont");
                int m = 1;
                for (Element element : descriptions) {
                    if (m == 2) {
                        Elements introductions = element.select("p");
                        StringBuffer stringBuffer = new StringBuffer();
                        for (Element element1 : introductions) {
                            stringBuffer.append(element.text());
                        }
                        company.setCompanyIntroduction(stringBuffer.toString());
                    }
                }
            } catch (Exception e) {
                logger.error("未抓取到职位简介");
                e.printStackTrace();
            }

            Elements elements = item.select(".company-box ul li");
            int n = 1;
            if (elements.size() == 5){
                for (Element element : elements) {
                    if (n == 1) {
                        try {
                            String companyScale = element.select("strong").first().text();
                            company.setCompanyScale(companyScale);
                        } catch (Exception e) {
                            e.printStackTrace();
                            logger.error("智联未抓取到公司规模");
                        }
                    }else if (n == 2) {
                        try {
                            String companyProperty = element.select("strong").first().text();
                            company.setCompanyProperty(companyProperty);
                        } catch (Exception e) {
                            e.printStackTrace();
                            logger.error("智联未抓取到公司性质");
                        }
                    } else if (n == 3) {
                        try {
                            String companyType = element.select("strong a").first().text();
                            company.setCompanyType(companyType);
                        } catch (Exception e) {
                            e.printStackTrace();
                            logger.error("智联未抓取到公司类型");
                        }
                    } else if (n == 4) {
                        try {
                            String companyUrl = element.select("strong a").first().text();
                            company.setCompanyWebsite(companyUrl);
                        } catch (Exception e) {
                            e.printStackTrace();
                            logger.error("未抓取到公司网站");
                        }
                    } else if (n == 5) {
                        try {
                            String companyAddress = element.select("strong").first().text();
                            company.setCompanyPosition(companyAddress);
                        } catch (Exception e) {
                            e.printStackTrace();
                            logger.error("智联未抓取到公司地址");
                        }
                    }
                    n++;
                }
            } else if (elements.size() == 4) {
                for (Element element : elements) {
                    if (n == 1) {
                        try {
                            String companyScale = element.select("strong").first().text();
                            company.setCompanyScale(companyScale);
                        } catch (Exception e) {
                            e.printStackTrace();
                            logger.error("未抓取到公司规模");
                        }
                    } else if (n == 2) {
                        try {
                            String companyProperty = element.select("strong").first().text();
                            company.setCompanyProperty(companyProperty);
                        } catch (Exception e) {
                            e.printStackTrace();
                            logger.error("未抓取到公司性质");
                        }
                    } else if (n == 3) {
                        try {
                            String companyType = element.select("strong a").first().text();
                            company.setCompanyType(companyType);
                        } catch (Exception e) {
                            e.printStackTrace();
                            logger.error("未抓取到公司类型");
                        }
                    } else if (n == 4) {
                        try {
                            String companyAddress = element.select("strong").first().text();
                            company.setCompanyPosition(companyAddress);
                        } catch (Exception e) {
                            e.printStackTrace();
                            logger.error("未抓取到公司地址");
                        }
                    }
                    n++;
                }
            }
        }
        return company;
    }
}
