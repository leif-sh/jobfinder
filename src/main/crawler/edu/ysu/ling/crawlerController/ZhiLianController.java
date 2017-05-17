package edu.ysu.ling.crawlerController;

import edu.uci.ics.crawler4j.crawler.CrawlConfig;
import edu.uci.ics.crawler4j.crawler.CrawlController;
import edu.uci.ics.crawler4j.fetcher.PageFetcher;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtConfig;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtServer;
import edu.ysu.ling.crawler.Crawler;

/**
 * Created by ling on 2017/5/11.
 */
public class ZhiLianController {
    public static void main(String[] args) throws Exception {

        String crawlStorageFolder = "./tmp/zhilian";
        int numberOfCrawlers = 5;//设置爬虫的数量
        CrawlConfig config = new CrawlConfig();

        config.setCrawlStorageFolder(crawlStorageFolder);
        config.setPolitenessDelay(300);
        config.setMaxDepthOfCrawling(5);//设置深度
        config.setMaxPagesToFetch(100000);//要爬取的页面数量
        config.setIncludeBinaryContentInCrawling(false);//是否爬取二进制数据like pdf images
        config.setResumableCrawling(true);

        PageFetcher pageFetcher = new PageFetcher(config);
        RobotstxtConfig robotstxtConfig = new RobotstxtConfig();
        RobotstxtServer robotstxtServer = new RobotstxtServer(robotstxtConfig, pageFetcher);
        CrawlController controller = new CrawlController(config, pageFetcher, robotstxtServer);

        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=045");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=2040");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&ispts=1&isfilter=1&p=1&bj=160000&sj=045");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=2038");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?bj=160000&sj=2038&jl=%E5%8C%97%E4%BA%AC%2B%E4%B8%8A%E6%B5%B7%2B%E5%B9%BF%E5%B7%9E%2B%E6%B7%B1%E5%9C%B3%2B%E5%A4%A9%E6%B4%A5&p=1&isadv=0");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=%E5%8C%97%E4%BA%AC%2B%E4%B8%8A%E6%B5%B7%2B%E5%B9%BF%E5%B7%9E%2B%E6%B7%B1%E5%9C%B3&p=1&isadv=0");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=200500");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=2039");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=2041");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=2034");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=665");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=2037");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160400&sj=695");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=047");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=057");
        controller.addSeed("http://sou.zhaopin.com/jobs/searchresult.ashx?jl=530&bj=160000&sj=2042");
        controller.start(Crawler.class, numberOfCrawlers);
    }
}
