package edu.ysu.ling.crawlerController;


import edu.uci.ics.crawler4j.crawler.CrawlConfig;
import edu.uci.ics.crawler4j.crawler.CrawlController;
import edu.uci.ics.crawler4j.fetcher.PageFetcher;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtConfig;
import edu.uci.ics.crawler4j.robotstxt.RobotstxtServer;
import edu.ysu.ling.crawler.Crawler;

/**
 * Created by 10047 on 2017/5/14.
 */

public class WuYouController {

    public static void main(String[] args) throws Exception{
        String crawlStorageFolder = "./tmp/wuyou";
        int numberOfCrawlers = 5;//设置爬虫的数量
        CrawlConfig config = new CrawlConfig();

        config.setCrawlStorageFolder(crawlStorageFolder);
        config.setPolitenessDelay(100);
        config.setMaxDepthOfCrawling(5);//设置深度
        config.setMaxPagesToFetch(100000);//要爬取的页面数量
        config.setIncludeBinaryContentInCrawling(false);//是否爬取二进制数据like pdf images
        config.setResumableCrawling(false);

        PageFetcher pageFetcher = new PageFetcher(config);
        RobotstxtConfig robotstxtConfig = new RobotstxtConfig();
        RobotstxtServer robotstxtServer = new RobotstxtServer(robotstxtConfig, pageFetcher);
        CrawlController controller = new CrawlController(config, pageFetcher, robotstxtServer);
        //controller.addSeed("http://search.51job.com/list/010000%252C00,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=");
        controller.addSeed("http://jobs.51job.com/shanghai-xhq/90007690.html?s=01&t=0");
        controller.addSeed("http://jobs.51job.com/shanghai-xhq/74593898.html?s=01&t=1");
        controller.addSeed("http://jobs.51job.com/shanghai/66206366.html?s=01&t=1");

        controller.start(Crawler.class, numberOfCrawlers);
    }
}
