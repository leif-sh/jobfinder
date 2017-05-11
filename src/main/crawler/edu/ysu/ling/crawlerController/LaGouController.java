package edu.ysu.ling.crawlerController;

import edu.uci.ics.crawler4j.crawler.CrawlConfig;
import edu.uci.ics.crawler4j.crawler.CrawlController;
import edu.uci.ics.crawler4j.fetcher.PageFetcher;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtConfig;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtServer;
import edu.ysu.ling.crawler.Crawler;

/**
 * Created by 10047 on 2017/4/27.
 */

public class LaGouController {
    public static void main(String[] args) throws Exception {

        String crawlStorageFolder = "./tmp/lagou";
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

        controller.addSeed("https://www.lagou.com/zhaopin/");
        controller.addSeed("https://www.lagou.com/zhaopin/Java/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/PHP/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/C++/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/Android/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/Python/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/iOS/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/UIshejishi/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/html51/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/chanpinjingli1/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/.NET/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/ceshi/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/MySQL/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/xiangmujingli/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/Hadoop/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/jiagoushi/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/Perl/?labelWords=label");
        controller.addSeed("https://www.lagou.com/zhaopin/webqianduan/?labelWords=label");
        controller.addSeed("https://www.lagou.com/jobs/list_?px=new&city=%E4%B8%8A%E6%B5%B7#filterBox");
        controller.start(Crawler.class, numberOfCrawlers);
    }
}
