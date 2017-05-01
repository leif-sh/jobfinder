package edu.ysu.ling.crawlerController;

import edu.uci.ics.crawler4j.crawler.CrawlConfig;
import edu.uci.ics.crawler4j.crawler.CrawlController;
import edu.uci.ics.crawler4j.fetcher.PageFetcher;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtConfig;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtServer;
import edu.ysu.ling.crawler.Crawler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by ling on 2017/4/25.
 */
public class DaJieController {
    public static void main(String[] args) throws Exception {

        String crawlStorageFolder = "./tmp/dajie";
        int numberOfCrawlers = 3;//设置爬虫的数量
        CrawlConfig config = new CrawlConfig();

        config.setCrawlStorageFolder(crawlStorageFolder);
        config.setPolitenessDelay(500);
        config.setMaxDepthOfCrawling(5);//设置深度
        config.setMaxPagesToFetch(10000);//要爬取的页面数量
        config.setIncludeBinaryContentInCrawling(false);//是否爬取二进制数据like pdf images
        config.setResumableCrawling(false);


        PageFetcher pageFetcher = new PageFetcher(config);
        RobotstxtConfig robotstxtConfig = new RobotstxtConfig();
        RobotstxtServer robotstxtServer = new RobotstxtServer(robotstxtConfig, pageFetcher);
        CrawlController controller = new CrawlController(config, pageFetcher, robotstxtServer);

        controller.addSeed("https://so.dajie.com/job/search?keyword=java&from=job&clicktype=blank");
        //controller.addSeed("https://job.dajie.com/job/intern");
        controller.addSeed("https://so.dajie.com/job/search?positionFunction=120201&positionName=Java&from=job");
        controller.start(Crawler.class, numberOfCrawlers);
    }
}
